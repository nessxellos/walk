package com.project.walk.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.walk.service.BoardUserService;
import com.project.walk.service.MemberService;
import com.project.walk.vo.AttachVO;
import com.project.walk.vo.BoardUserVO;
import com.project.walk.vo.MemberVO;

import lombok.extern.java.Log;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/boarduser/*")
@Log
public class BoardUserController {
	@Autowired
	private BoardUserService boarduserservice;
	
	@Autowired
	private MemberService memberService;
	
	//
	@GetMapping("list")
	public String list() {
		return "/boarduser/list";
	}
	
	// 글쓰기 폼
	@GetMapping("insert")
	public String insert() {
		return "/boarduser/insert";
	}
	
	// 글쓰기
	@PostMapping("insert")
	public String insert(BoardUserVO boardUserVO, String pageNum, 
			HttpServletRequest request, RedirectAttributes rttr,
			List<MultipartFile> files) throws Exception {
		
		
		
		int bnum = boarduserservice.nextBoardNum();
		
		boardUserVO.setBnum(bnum);
		boardUserVO.setHitCnt(0);
		
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/resources/upload");
		log.info("realPath : " + realPath);
		
		File uploadPath = new File(realPath, getDateFolder());
		
		if (!uploadPath.exists()) {
			uploadPath.mkdirs();
		}

		List<AttachVO> attachList = new ArrayList<AttachVO>();
		
		for (MultipartFile multipartFile : files) {
			if (multipartFile.isEmpty()) {
				continue;
			}
			
			String originalFilename = multipartFile.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			String uploadFilename = uuid.toString() + "_" + originalFilename;

			multipartFile.transferTo(new File(uploadPath, uploadFilename));
		
			AttachVO attachVO = new AttachVO();
			attachVO.setBno(boardUserVO.getBnum());
			attachVO.setUuid(uuid.toString());
			attachVO.setUploadpath(getDateFolder());
			attachVO.setFilename(multipartFile.getOriginalFilename());		
		
			if (isImageType(originalFilename)) {
				attachVO.setFiletype("I");			
			
				File thumbnailFile = new File(uploadPath, "s_" + uploadFilename);
				
				InputStream is = multipartFile.getInputStream();
				
				FileOutputStream fos = new FileOutputStream(thumbnailFile);
				
				Thumbnailator.createThumbnail(is, fos, 100, 100);
				
				fos.close();
				
				
				
			} else {
				attachVO.setFiletype("O");
			}			
			attachList.add(attachVO);
		}
		
		boarduserservice.insertBoardAndAttaches(boardUserVO, attachList);

		rttr.addAttribute("num", boardUserVO.getBnum());
		rttr.addAttribute("pageNum", pageNum);
		
		return "redirect:/boarduser/list";
	}

		
			
		private String getDateFolder() {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			String str = sdf.format(date);
			return str;
		}
		
		
		private boolean isImageType(String filename) {
			int index = filename.lastIndexOf(".")+1;
			String ext = filename.substring(index);
			
			boolean result = false;
			ext = ext.toLowerCase();
			if (ext.equals("jpeg")||
				ext.equals("jpg")||
				ext.equals("png")||
				ext.equals("gif")) {
				result = true;
			} else {
				result = false;
			}
			
			return result;
		}
		
	
	
}
