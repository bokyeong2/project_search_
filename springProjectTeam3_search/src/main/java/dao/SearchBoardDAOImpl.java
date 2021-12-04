package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.BoardDTO;
import domain.PageDTO;

@Repository
public class SearchBoardDAOImpl implements SearchBoardDAO {

	//마이바티스 객체생성
		@Inject
		private SqlSession sqlSession;
		
		private static final String namespace="com.petpark.mapper.boardMapper";

		@Override
		public void insertBoard(BoardDTO boardDTO) {
			System.out.println("BoardDAOImpl insertBoard()");
			//디비작업
			sqlSession.insert(namespace+".insertBoard", boardDTO);
			
		}

		@Override
		public List<BoardDTO> getBoardList(PageDTO pageDTO) {
			return sqlSession.selectList(namespace+".getBoardList", pageDTO);
		}

		@Override
		public Integer getBoardCount() {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(namespace+".getBoardCount");
		}

		@Override
		public Integer getMaxNum() {
			// TODO Auto-generated method stub
			return null;
		}

//		@Override
//		public List<BoardDTO> blogList(String id) {
//			System.out.println(" 목록가져오기 실행");
//			return sqlSession.selectList(namespace+".petInfoSelect", id);
//		}
		
	
}
