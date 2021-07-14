package com.project.walk.controller;

import java.io.File;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.walk.service.BoardLikeService;
import com.project.walk.service.BoardUserService;
import com.project.walk.vo.AttachVO;
import com.project.walk.vo.BoardLike;
import com.project.walk.vo.BoardUserVO;

@Controller
@RequestMapping("/boarduser/*")

public class BoardUserController {
	@Autowired
	private BoardUserService boarduserservice;
	
	@Autowired
	private BoardLikeService boardlikeservice;
	
	//
	@GetMapping("/list")
	public List<BoardUserVO> list(Model model) {
		model.addAttribute("lists", boarduserservice.list());

		return boarduserservice.list();
	}
	
	// 게시글 상세보기
	@GetMapping("detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		BoardUserVO boarduser = boarduserservice.detail(id);
		model.addAttribute("boarduser", boarduser);
		return "boarduser/detail";
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
			List<MultipartFile> files, Model model) throws Exception {
				
		int bnum = boarduserservice.nextBoardNum();
		
		boardUserVO.setBnum(bnum);
		boardUserVO.setHitCnt(0);
		
//		System.out.println("1");  ok
		
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/resources/upload");
//		System.out.println(realPath);  ok
		
		File uploadPath = new File(realPath, getDateFolder());
		
		if (!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
//		System.out.println("3"); ok
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		
		for (MultipartFile multipartFile : files) {
			if (multipartFile.isEmpty()) {
				continue;
			}
			
			String originalFilename = multipartFile.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			String uploadFilename = uuid.toString() + "_" + originalFilename;

			multipartFile.transferTo(new File(uploadPath, uploadFilename));
		
//			System.out.println("4"); ok
			
			AttachVO attachVO = new AttachVO();
			attachVO.setBno(boardUserVO.getBnum());
			attachVO.setUuid(uuid.toString());
			attachVO.setUploadpath(getDateFolder());
			attachVO.setFilename(multipartFile.getOriginalFilename());		
//			System.out.println("5"); ok
//			System.out.println(multipartFile.getOriginalFilename()); ok
//			System.out.println(isImageType(originalFilename)); true
			if (isImageType(originalFilename)) {
				attachVO.setFiletype("I");			
////				System.out.println("6");
//				File thumbnailFile = new File(uploadPath, "s_" + uploadFilename);
////				System.out.println("7");
//
//				FileOutputStream fos = new FileOutputStream(thumbnailFile);
//				InputStream is = multipartFile.getInputStream();
//				
//				Thumbnailator.createThumbnail(is, fos, 100, 100);
//				
//				fos.close();
//				
//				
//				
			} else {
				attachVO.setFiletype("O");
			}			
			attachList.add(attachVO);
		}
		
		boarduserservice.insertBoardAndAttaches(boardUserVO, attachList);

//		rttr.addAttribute("num", boardUserVO.getBnum());
//		rttr.addAttribute("pageNum", pageNum);
		
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
	
	@PostMapping("like/{bnum}")
	@ResponseBody
	public String like(@PathVariable int bnum, 
			@RequestBody BoardLike bl) {
		System.out.println("받아온 데이터는?"+bl.getB_id()+bl.getM_id());
		

		boardlikeservice.addLike(bl);
		
		return "success";
	}
	
}
