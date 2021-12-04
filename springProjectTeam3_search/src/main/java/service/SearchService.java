package service;

import java.util.List;

import domain.BoardDTO;
import domain.PageDTO;


public interface SearchService {

	// boardService.insertBoard(boardDTO);
		public void insertBoard(BoardDTO boardDTO);
		
		// List<BoardDTO> boardList=boardService.getBoardList(pageDTO);
		public List<BoardDTO> getBoardList(PageDTO pageDTO);
		
//		int count = boardService.getBoardCount();
		public Integer getBoardCount();
		
		//
//		public List<BoardDTO> blogList(String id);
}
