package dao;

import java.util.List;

import domain.BoardDTO;
import domain.OrderInfoDTO;
import domain.PetDTO;
import domain.UserDTO;

public interface MypageDAO {

	List<OrderInfoDTO> orderinfoSelectAll(String id);

	public UserDTO userCheck(UserDTO userDTO);
	
	public void userDelete(UserDTO userDTO);
	
	public UserDTO userInfoSelect(String id);
	
	public PetDTO petInfoSelect(String id);
	
	public List<PetDTO> mypetList(String id);
	
	public List<BoardDTO> myBoardSelectAll1(String id);
	public List<BoardDTO> myBoardSelectAll2(String id);
	public List<BoardDTO> myBoardSelectAll3(String id);
	public List<BoardDTO> myBoardSelectAll4(String id);
	
	public void userUpdate(UserDTO userDTO);
	
	public void mypetAddInsert(PetDTO petDTO);
	
	public PetDTO mypetDetailView(String petNumber);
	
	public void mypetDelete(String petNumber);
	
	public void mypetUpdate(PetDTO petDTO);
}
