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
import domain.PetDTO;
import domain.UserDTO;
import service.MypageService;

@Controller
public class MypageController {

	@Inject
	private MypageService mypageservice;		
	
	@RequestMapping("/")
	public String home(){
	
		return "home/home";
	}
	
//	마이페이지 - 주문내역 목록 출력
	@RequestMapping("/mypage/mypage")
	public String mypage(Model model, HttpSession session) {
		
		String id = (String) session.getAttribute("id");
		List<OrderInfoDTO> orderinfoDTO=mypageservice.orderinfoSelectAll(id);
		model.addAttribute("orderInfoList", orderinfoDTO);		
		System.out.println("모델에 값 넣음");
		return "mypage/mypageOrder";
	}
	
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-1
	@RequestMapping("/mypage/mypageBoard")
	public String mypageBoard(Model model, BoardDTO boardDTO, HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<BoardDTO> boardDTO1 = mypageservice.myBoardSelectAll1(id);
		model.addAttribute("myBoardView1", boardDTO1);
		
		return "mypage/mypageBoard";
	}
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-2
	@RequestMapping("/mypage/mypageBoard2")
	public String mypageBoard2(Model model, BoardDTO boardDTO, HttpSession session) {
		System.out.println("보드2번");
		String id = (String) session.getAttribute("id");
		List<BoardDTO> boardDTO2 = mypageservice.myBoardSelectAll2(id);
		model.addAttribute("myBoardView2", boardDTO2);
		
		return "mypage/mypageBoard2";
	}
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-3
	@RequestMapping("/mypage/mypageBoard3")
	public String mypageBoard3(Model model, BoardDTO boardDTO, HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<BoardDTO> boardDTO3 = mypageservice.myBoardSelectAll3(id);
		model.addAttribute("myBoardView3", boardDTO3);
		
		return "mypage/mypageBoard3";
	}
//	마이페이지 - 내가 작성한 게시판 화면으로 이동-4
	@RequestMapping("/mypage/mypageBoard4")
	public String mypageBoard4(Model model, BoardDTO boardDTO, HttpSession session) {
		String id = (String) session.getAttribute("id");
		List<BoardDTO> boardDTO4 = mypageservice.myBoardSelectAll4(id);
		model.addAttribute("myBoardView4", boardDTO4);
		
		return "mypage/mypageBoard4";
	}
	
//	마이페이지 회원정보 업데이트화면으로 이동
	@RequestMapping("/mypage/mypageUserUpdate")
	public String mypageUserUpdate(Model model, UserDTO userDTO, HttpSession session) {
		
		String id = (String) session.getAttribute("id");
		userDTO = mypageservice.userInfoSelect(id);
		model.addAttribute("orderInfoList", userDTO);
		
		return "mypage/mypageUserUpdate";
	}
	
	@RequestMapping(value = "/mypage/mypageUserUpdatePro", method = RequestMethod.POST)
	public String mypageUserUpdatePro(Model model, UserDTO userDTO, HttpServletRequest httpServletRequest) {
		
		userDTO.setUser_id(httpServletRequest.getParameter("id"));
		userDTO.setUser_pwd(httpServletRequest.getParameter("pass"));
		userDTO.setUser_name(httpServletRequest.getParameter("name"));
		userDTO.setUser_email(httpServletRequest.getParameter("email"));
		userDTO.setUser_phone(httpServletRequest.getParameter("phone"));
		System.out.println(userDTO.getUser_id());
		System.out.println(userDTO.getUser_pwd());
		System.out.println(userDTO.getUser_name());
		System.out.println(userDTO.getUser_email());
		System.out.println(userDTO.getUser_phone());
		mypageservice.userUpdate(userDTO);
		
		return "redirect:/";
	}
	
//	마이페이지 - 내 애완동물 목록 화면으로 이동
	@RequestMapping("/mypage/mypagePetUpdate")
	public String mypagePetUpdate(Model model, PetDTO petDTO, HttpSession session) {
		String id = (String) session.getAttribute("id"); 
		List<PetDTO> petDTO1 = mypageservice.mypetList(id);
		model.addAttribute("mypetList", petDTO1);
		System.out.println(petDTO1);
		
		return "mypage/mypagePetList";
	}
	
//	마이페이지 - 펫 추가하는 화면으로 이동(펫추가하기 버튼 클릭 시)
	@RequestMapping("/mypage/mypagePetAdd")
	public String mypagePetAdd() {
		return "mypage/mypagePetAdd";
	}
	
//	마이페이지 - 펫 상세보기 화면으로 이동
	@RequestMapping(value = "/mypage/mypagePetContent", method = RequestMethod.GET)
	public String mypagePetContent(HttpServletRequest httpServletRequest, Model model, PetDTO petDTO, HttpSession session) {
		String petNumber = httpServletRequest.getParameter("pet_number");
		System.out.println(petNumber);
		
		petDTO = mypageservice.mypetDetailView(petNumber);
		model.addAttribute("mypetDetailView", petDTO);
		
		return "mypage/mypagePetContent";
	}
	
//	마이페이지 - 펫 추가하는 프로세스
	@RequestMapping("/mypage/mypagePetAddPro")
	public String mypagePetAddPro(Model model, PetDTO petDTO, HttpSession session, HttpServletRequest httpServletRequest) {
		String id = (String) session.getAttribute("id");
		petDTO.setUser_id(id);
		petDTO.setPet_name(httpServletRequest.getParameter("petName"));
		petDTO.setPet_type(httpServletRequest.getParameter("petType"));
		petDTO.setPet_gender(httpServletRequest.getParameter("petGender"));
		petDTO.setPet_breed(httpServletRequest.getParameter("petBreed"));
		petDTO.setPet_birth(httpServletRequest.getParameter("petBirth"));
		petDTO.setPet_weight(httpServletRequest.getParameter("petWeight"));
		petDTO.setPet_addinfo(httpServletRequest.getParameter("petAddInfo"));
		petDTO.setPet_imagePath(httpServletRequest.getParameter("pet_imagepath"));
		mypageservice.mypetAddInsert(petDTO);
		
		return "redirect:/mypage/mypagePetUpdate";
	}
//	마이페이지 - 펫 업데이트 프로세스
	@RequestMapping(value = "/mypage/mypagePetUpdatePro", method = RequestMethod.POST)
	public String mypagePetUpdatePro(Model model, PetDTO petDTO, HttpServletRequest httpServletRequest) {
		petDTO.setPet_number(httpServletRequest.getParameter("petNumber"));
		petDTO.setPet_name(httpServletRequest.getParameter("petName"));
		petDTO.setPet_type(httpServletRequest.getParameter("petType"));
		petDTO.setPet_gender(httpServletRequest.getParameter("petGender"));
		petDTO.setPet_breed(httpServletRequest.getParameter("petBreed"));
		petDTO.setPet_birth(httpServletRequest.getParameter("petBirth"));
		petDTO.setPet_weight(httpServletRequest.getParameter("petWeight"));
		petDTO.setPet_addinfo(httpServletRequest.getParameter("petAddInfo"));
		petDTO.setPet_imagePath(httpServletRequest.getParameter("pet_imagepath"));
		mypageservice.mypetUpdate(petDTO);
		
		return "redirect:/mypage/mypagePetUpdate";
	}
//	마이페이지 - 펫 추가하는 화면으로 이동(펫추가하기 버튼 클릭 시)
	@RequestMapping("/mypage/mypagePetDeletePro")
	public String mypagePetDeletePro(HttpServletRequest httpServletRequest, Model model, PetDTO petDTO) {
		System.out.println("삭제작업실시");
		String petNumber = httpServletRequest.getParameter("pet_number");
		System.out.println(petNumber);
		mypageservice.mypetDelete(petNumber);
		return "redirect:/mypage/mypagePetUpdate";
	}
	
//	마이페이지 - 회원탈퇴 화면으로 이동
	@RequestMapping("/mypage/mypageUserDelete")
	public String mypageUserDelete() {
		return "mypage/mypageUserDelete";
	}
	
//	유저정보 삭제 프로세스
	@RequestMapping(value = "/mypage/mypageUserDeletePro", method = RequestMethod.POST)
	public String mypageUserDeletePro(Model model, UserDTO userDTO, HttpServletRequest httpServletRequest, HttpSession session) {
		
		userDTO.setUser_id(httpServletRequest.getParameter("id"));
		userDTO.setUser_pwd(httpServletRequest.getParameter("pass"));
		UserDTO userDTO2=mypageservice.userCheck(userDTO);
		if(userDTO2!=null) {
			System.out.println("아이디 비번일치함 탈퇴작업실시");
			mypageservice.userDelete(userDTO);
		}else {
			System.out.println("일치하지않음");
			model.addAttribute("msg", "비밀번호가 잘못되었습니다.");

			model.addAttribute("url", "mypage/mypageUserDelete");
			return "mypage/alert";
		}
		
		session.invalidate();
		return "redirect:/";
	}
	
	
}
