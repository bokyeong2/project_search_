package controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.fabric.Response;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PageDTO;
import domain.PetDTO;
import domain.UserDTO;
import service.MypageService;
import service.SearchService;

@Controller
public class SearchController {

	@Inject
	private SearchService searchService;		
	
	
	// 검색 페이지 이동
	@RequestMapping(value = "/search/searchList", method = RequestMethod.GET)
	public String searchList() {
		return "search/searchList";
	}
	
	// 커뮤니티 글쓰기 페이지 이동
	@RequestMapping(value = "/community/write", method = RequestMethod.GET)
	public String insert() {
		return "community/writeForm";
	}
	
	@RequestMapping(value = "/community/writePro", method = RequestMethod.POST)
	public String insertPro(BoardDTO boardDTO) {
		System.out.println(" 게시판 값 넘기기 ");
		searchService.insertBoard(boardDTO);
		return "redirect:/community/blog";
	}
	
	//	blog 목록 페이지
//	@RequestMapping("/community/blog")
//	public String blogBoard(Model model, BoardDTO boardDTO, HttpSession session) {
//		String id = (String) session.getAttribute("id");
//		List<BoardDTO> boardDTO1 = searchService.blogList(id);
//		model.addAttribute("blog", boardDTO1);
//		
//		return "community/blog";
//	}
	
	// blog 페이지 이동
	@RequestMapping(value = "/community/blog", method = RequestMethod.GET)
	public String blog() {
		return "community/blog";
	}
	
	// blog_detail 페이지 이동
	@RequestMapping(value = "/community/blog_detail", method = RequestMethod.GET)
	public String blog_detail() {
		return "community/blog_detail";
	}
	
////	search 목록 페이지
//	@RequestMapping("/search/searchList")
//	public String blogBoard(Model model, BoardDTO boardDTO, HttpSession session) {
//		String id = (String) session.getAttribute("id");
//		List<BoardDTO> boardDTO1 = searchService.blogList(id);
//		model.addAttribute("blog", boardDTO1);
//		
//		return "community/blog";
//	}
	
	
	// 검색 페이지 리스트 목록
//	@RequestMapping(value = "/search/searchList", method = RequestMethod.GET)
//	public String searchList(HttpServletRequest request, Model model) {
//		// 한화면에 보여줄 글개수  8개 설정
//		 int pageSize = 8;
//		 
//		 //페이지 번호 가져오기 
//		 String pageNum=request.getParameter("pageNum");
//		 //페이지번호가 없으면 -> 1
//		 if(pageNum == null){
//		 	pageNum = "1";
//		 }
//		
//		 PageDTO pageDTO = new PageDTO();
//		 pageDTO.setPageSize(pageSize);
//		 pageDTO.setPageNum(pageNum);
//		
//		 List<BoardDTO> boardList = searchService.getBoardList(pageDTO);
//		 
//		//게시판 전체 글 개수  select count(*) from board
//		// int count=boardDAO.getBoardCount();
//		 int count = searchService.getBoardCount();
//		 pageDTO.setCount(count);
//		 
//		 // 데이터 담기
//		 model.addAttribute("boardList",boardList);
//		 model.addAttribute("pageDTO",pageDTO);
//		 
//		 
//		return "search/searchList";
//		
//	}
	
	
}

