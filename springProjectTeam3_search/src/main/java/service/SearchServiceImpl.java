package service;

import java.util.List;

import org.springframework.stereotype.Service;

import dao.SearchBoardDAO;
import domain.BoardDTO;
import domain.PageDTO;

@Service
public class SearchServiceImpl implements SearchService {
	
	private SearchBoardDAO searchBoardDAO;
	
	@Override
	public List<BoardDTO> getBoardList(PageDTO pageDTO) {
		// pageSize, pageNum 담아옴
		// currentPage startRow endRow 
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		
	
		
		return searchBoardDAO.getBoardList(pageDTO);
	}

	@Override
	public Integer getBoardCount() {
		return searchBoardDAO.getBoardCount();
	}

	@Override
	public void insertBoard(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		
	}

//	@Override
//	public List<BoardDTO> blogList(String id) {
//		// TODO Auto-generated method stub
//		return searchBoardDAO.blogList(id);
//	}

	
}
