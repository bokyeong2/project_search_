package service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import dao.MypageDAO;
import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PetDTO;
import domain.UserDTO;

@Service
public class MypageServiceImpl implements MypageService{
	
	@Inject
	private MypageDAO mypageDAO;
	
	@Override
	public List<OrderInfoDTO> orderinfoSelectAll(String id) {
		System.out.println("마이페이지 주문정보 서비스임플 실행");
		return mypageDAO.orderinfoSelectAll(id);
	}

	@Override
	public UserDTO userCheck(UserDTO userDTO) {
		return mypageDAO.userCheck(userDTO);
	}

	@Override
	public void userDelete(UserDTO userDTO) {
		mypageDAO.userDelete(userDTO);
		
		
		
		System.out.println(userDTO.getUser_deleteDate());
	}

	@Override
	public UserDTO userInfoSelect(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.userInfoSelect(id);
	}

	@Override
	public PetDTO petInfoSelect(String id) {
		// TODO Auto-generated method stub
		return mypageDAO.petInfoSelect(id);
	}

	@Override
	public List<BoardDTO> myBoardSelectAll1(String id) {
		return mypageDAO.myBoardSelectAll1(id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll2(String id) {
		return mypageDAO.myBoardSelectAll2(id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll3(String id) {
		return mypageDAO.myBoardSelectAll3(id);
	}
	@Override
	public List<BoardDTO> myBoardSelectAll4(String id) {
		return mypageDAO.myBoardSelectAll4(id);
	}

	@Override
	public void userUpdate(UserDTO userDTO) {
		mypageDAO.userUpdate(userDTO);
	}

	@Override
	public List<PetDTO> mypetList(String id) {
		return mypageDAO.mypetList(id);
	}

	@Override
	public void mypetAddInsert(PetDTO petDTO) {
		mypageDAO.mypetAddInsert(petDTO);
		
	}

	@Override
	public PetDTO mypetDetailView(String petNumber) {
		return mypageDAO.mypetDetailView(petNumber);
	}

	@Override
	public void mypetDelete(String petNumber) {
		mypageDAO.mypetDelete(petNumber);
		
	}

	@Override
	public void mypetUpdate(PetDTO petDTO) {
		mypageDAO.mypetUpdate(petDTO);
	}

	
}
