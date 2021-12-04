package dao;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PetDTO;
import domain.UserDTO;

@Repository
public class MypageDAOImpl implements MypageDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="mapper.mypageMapper";
	
	@Override
	public List<OrderInfoDTO> orderinfoSelectAll(String id) {
		System.out.println("마이페이지 주문정보 다오임플 실행");
		return sqlSession.selectList(namespace+".orderinfoSelectAll", id);
	}

	@Override
	public UserDTO userCheck(UserDTO userDTO) {
		return sqlSession.selectOne(namespace+".userCheck", userDTO);
	}

	@Override
	public void userDelete(UserDTO userDTO) {
		
		userDTO.setUser_deleteDate(new Timestamp(System.currentTimeMillis()));
		sqlSession.update(namespace+".userDelete", userDTO);
		
		
	}

	@Override
	public UserDTO userInfoSelect(String id) {
		return sqlSession.selectOne(namespace+".userInfoSelect", id);
	}

	@Override
	public PetDTO petInfoSelect(String id) {
		System.out.println("petInfoSelect()까지실행됨");
		return sqlSession.selectOne(namespace+".petInfoSelect", id);
	}

	@Override
	public List<BoardDTO> myBoardSelectAll1(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll1", id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll2(String id) {
		System.out.println("보드DAOIMple2번");
		return sqlSession.selectList(namespace+".myBoardSelectAll2", id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll3(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll3", id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll4(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".myBoardSelectAll4", id);
	}

	@Override
	public void userUpdate(UserDTO userDTO) {
		System.out.println("수정작업실시");
		sqlSession.update(namespace+".userUpdate", userDTO);
	}

	@Override
	public List<PetDTO> mypetList(String id) {
		System.out.println("애완동물 목록가져오기 실행");
		return sqlSession.selectList(namespace+".petInfoSelect", id);
	}

	@Override
	public void mypetAddInsert(PetDTO petDTO) {
		sqlSession.insert(namespace+".mypetAddInsert", petDTO);
		
	}

	@Override
	public PetDTO mypetDetailView(String petNumber) {
		System.out.println("다오임플 펫디테일뷰");
		return sqlSession.selectOne(namespace+".mypetDetailView", petNumber);
	}

	@Override
	public void mypetDelete(String petNumber) {
		sqlSession.delete(namespace+".mypetDelete", petNumber);
		
	}

	@Override
	public void mypetUpdate(PetDTO petDTO) {
		sqlSession.update(namespace+".mypetUpdate", petDTO);
		
	}
	

}
