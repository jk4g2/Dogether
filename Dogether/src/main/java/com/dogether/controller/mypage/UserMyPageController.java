package com.dogether.controller.mypage;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;
import com.dogether.domain.MemberVO;
import com.dogether.domain.OrderVO;
import com.dogether.domain.RunningGooVO;
import com.dogether.service.BoardService;
import com.dogether.service.MemberService;
import com.dogether.service.OrderService;
import com.dogether.service.RunningGooService;
import com.dogether.service.TestService;

@Controller
@RequestMapping("mypage")
public class UserMyPageController {

	//마이페이지 특성상 다른 Service를 사용할 일이 많아서 @Autowired를 통해서 객체의존성주입을 시키고 선언을 해줌
	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired
	public TestService testService;
	@Autowired
	public OrderService orderService;
	@Autowired
	public RunningGooService runningGooService;
	
	
	// 마이페이지 메인화면
	@RequestMapping("/")//'/'로 url상으로 보이는 폴더명을 없앰
	public String myPage(String memberID, Model m, HttpSession session, Board_LikeVO vo) {
		String sessionok = (String) session.getAttribute("username");//String 으로 가상의 변수를 넣어준후
		if (sessionok == null) {//로그인이 되어있는지 확인하기
			m.addAttribute("msg", "로그인이 필요한 서비스입니다.");
			return "redirect";//로그인이 되어있지 않다면 밑으로 내려가기전에 return되서 redirect페이지로 넘어감
		}
		memberID = session.getAttribute("username").toString();//각각 개개인의 마이페이지를 불러와야 함으로 세션에 저장되있는 username을 세팅
		MemberVO result = memberService.getMemberInfo(memberID);// 멤버정보 불러오기
		List<BoardVO> result2 = memberService.myBoardList(memberID);// 내 게시글 목록 불러오기
		List<Board_ReplyVO> reply_list = boardService.getReplyList();// 댓글 목록 가져오기
		vo.setLiker(session.getAttribute("username").toString().trim());//누가 좋아요를 눌렀는지 확인 시키기 위해서 Board_LikeVO 에 아이디를 set해줌
		List<Board_LikeVO> like_list = boardService.getLikeList(vo);//좋아요 불러오기
		if (result2.size() == 0) {//만약 내 게시글 목록이 없으면 nullcheck라는 이름을 모델로 보냄
			m.addAttribute("nullCheck", "작성한 게시글이 존재하지 않습니다.");
		}

		m.addAttribute("member", result);
		m.addAttribute("list", result2);
		m.addAttribute("reply_list", reply_list);
		m.addAttribute("like_list", like_list);
	
		return "mypage/userMypage";
	}

	// 포인트 결제
	@PostMapping("paypoint.do")
	@ResponseBody
	public String payPoint(String memberID, int price) {
		System.out.println("포인트 충전을 시작합니다.");
		memberService.updatePoint(memberID, price);//paypoint.do에 들어왔다는건 이미 결제가 성공한 뒤임으로 따로 조건문을 걸지않고 바로 업데이트 실행
		return "포인트 충전 완료!!!";//ajax사용 컨트롤러임으로 @ResponseBody를 선언해주고 문자열 그자체를 return
	}

	// 좋아요 업데이트
	@GetMapping(value = "updateLike.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String updateBoardLike(Board_LikeVO vo) {
		int result = 0;
		// 이미 좋아요에서 좋아요를 취소할시..
		if (vo.getLikeY().equals("Y")) {
			System.out.println(vo.getBoard_like_no());
			result = boardService.deleteLike(vo);

			// 좋아요를 안한상태에서 좋아요를 눌렀을 때,
		} else if (vo.getLikeY().equals("N")) {
			System.out.println(vo.getBoard_like_no());
			result = boardService.insertLike(vo);
		}

		return Integer.toString(result);
	}

	// 댓글 등록
	@PostMapping(value = "reply.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String insert(Board_ReplyVO vo, HttpSession session) {
		System.out.println(vo.getBoardID());
		System.out.println(vo.getReply());
		vo.setReplyer(session.getAttribute("username").toString().trim());

		int boardID = boardService.insertReply(vo);
		System.out.println(boardID);
		return Integer.toString(boardID);
	}

	// 아이디 중복확인
	@GetMapping(value = "idCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String idCheck(MemberVO vo) {
		System.out.println("아이디체크-------------------------------------------------------------");
		MemberVO result = testService.idCheck_Login(vo);
		String message = "사용가능한 아이디입니다";
		if (result != null)
			return "중복된 아이디입니다";
		return message;
	}

	// 닉네임 중복확인
	@GetMapping(value = "nickNameCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String nickNameCheck(MemberVO vo) {
		System.out.println("닉네임체크-------------------------------------------------------------");
		MemberVO result = testService.nickName_Check(vo);
		String message = "사용가능한 닉네임입니다";
		if (result != null)
			return "중복된 닉네임입니다";
		return message;
	}

	// 내 정보 수정하기
	@PostMapping(value = "updateMemberInfo.do", produces = "application/text; charset=UTF-8")
	public String updateMyInfo(MemberVO vo) {
		memberService.updateMemberInfo(vo);
		System.out.println("내정보 수정 완료!");
		return "redirect:../mypage/";
	}
	
	
	// 쇼핑몰 주문 list 출력
	@RequestMapping(value ="OrderList.do")
	@ResponseBody
	public List<HashMap<String,Object>> Orderlist(String memberID) {		
		System.out.println("변수로 넘겨받은 memberID----------"+memberID);
		List<HashMap<String,Object>> odList = orderService.getMyOrderList(memberID);//odList이름으로 memberID를 파라미터로 보낸후 해당아이디에 맞는 주문리스트를 가져옴
		for(HashMap a : odList) {
			System.out.println(a.get("OrderDate")+"----------------------------");
		}
		System.out.println("쇼핑몰 주문 리스트 전달완료!!");
		return odList;
	}
	
	
	//구매확정 업데이트
	@RequestMapping(value="updatebuyingConfirm.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String updatebuyingConfirm(OrderVO vo) {//마이페이지에서 주문확정 버튼을 누르면 여기로 옴
		System.out.println("구매확정 업데이트-----");
		orderService.updatebuyingConfirm(vo);//구매확정컬럼을 N에서 Y로 바꿈
		String message = "구매확정 완료";
		return message;
	}
	
	
	//회원탈퇴
	@GetMapping(value="OUTmember.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String OUTmember(MemberVO vo) {
		System.out.println(vo.getMemberID()+"님의 회원탈퇴가 진행됩니다.");
		memberService.deleteMember(vo);//회원을 삭제시킴 그리고 ajax에서 로그아웃시킨후 index로 보내버림
		return "탈퇴가 완료되었습니다.";
	}
	
	
	//내 런닝구 목록 가져오기
	@PostMapping(value="getMyRunninggoList.do")
	@ResponseBody
	public List<HashMap<String,Object>>getMyRunninggooList(String memberID){
		List<HashMap<String,Object>> rgList = memberService.myrunninggooList(memberID);//내가 참가하고 있는 런닝구 목록을 가져옴
		for(HashMap a : rgList) {
			System.out.println(a.get("memberID"));
		}
		return rgList;
	}
	
	
	//내가 호스트인 런닝구 목록 가져오기
	@PostMapping("myhostrunninggooList.do")
	@ResponseBody
	public List<HashMap<String,Object>>myhostrunninggooList(String memberID){
		List<HashMap<String,Object>> hrgList = memberService.myhostrunninggooList(memberID);//내가 호스트인 런닝구 목록을 가져옴 마찬가지로 select만 함으로 memberID만 필요
		return hrgList;
	}
	
	
	
	// 호스트에게 보여질 수락된 참여자들의 간단한 정보 --> 호스트
	@RequestMapping("viewJoinMemberTotalInfo.do")
	public String viewJoinMemberInfo(RunningGooVO rVO,Model m, @RequestParam String roomNumber) {
		// Dogether 본 서버에서는 session.setAttribute를 해줄 필요가 없음.
		// 수락이 완료된 참여자들의 간단한 정보
		int roomNum = Integer.parseInt(roomNumber);
		List<HashMap<String,Object>> result1 = runningGooService.viewJoinMemberInfo(roomNum);
		m.addAttribute("joinCompleteMemberList", result1);
		
		
		// 호스트에게 보여질 수락을 기다리는 참여자들의 간단한 정보
		//int roomNum1 = rVO.getRoomNumber();
		List<HashMap<String,Object>> result2 = runningGooService.viewNotYetJoinMemberList(roomNum);
		System.out.println(result2.toString());
		m.addAttribute("joinNotYetCompleteMemberList", result2);
		
		return "redirect:/runninggoo/viewJoinMemberTotalInfo.do?roomNumber="+roomNumber;
	}
	
	
	
	

	@RequestMapping("deleteBoard.do")
	@ResponseBody
	public void deleteBoard(BoardVO vo) {
		System.out.println(vo.getBoardID());
		boardService.deleteBoard(vo);
	}

	@RequestMapping("deleteReply.do")
	@ResponseBody
	public void deleteReply(Board_ReplyVO vo) {
		System.out.println(vo.getReply_no());
		boardService.deleteReply(vo);
	}

	@GetMapping("updateReply.do")
	@ResponseBody
	public String updateReply(Board_ReplyVO vo, HttpSession session) {
		System.out.println("댓글수정 가즈아");
		boardService.updateReply(vo);
		return "";
	}
	@GetMapping("updateBoardForm.do")
	public String updateBoardForm(@RequestParam(value = "boardID", required = true) String boardID,
			Model m) {
		m.addAttribute("boardID",boardID);
		return "boast/updateBoardForm";
	}
	
	@RequestMapping("updateBoard.do")
	public String updateBoard(BoardVO vo, HttpSession session) {
		boardService.updateBoard(vo);
		return "redirect:/boast/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
