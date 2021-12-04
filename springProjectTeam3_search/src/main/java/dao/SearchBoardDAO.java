package dao;

import java.util.List;

import domain.BoardDTO;
import domain.PageDTO;


public interface SearchBoardDAO {
	
	public void insertBoard(BoardDTO boardDTO);
	
	public List<BoardDTO> getBoardList(PageDTO pageDTO);
	
	public Integer getMaxNum();
	
//	int count = boardService.getBoardCount();
	public Integer getBoardCount();
	
//	public List<BoardDTO> blogList(String id);
}
