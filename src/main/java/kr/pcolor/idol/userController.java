package kr.pcolor.idol;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.ItemVO;
import kr.pcolor.domain.UserVO;
import kr.pcolor.mapper.UserMapper;

@Controller
public class userController {
   @Inject
   private UserMapper userMapper;

   // 로그인 페이지 이동
   @RequestMapping("login.do")
   public void login() {   
   }
   // 로그인 인증검사
   @RequestMapping("/loginUser.do")
   public void loginUser(UserVO vo, HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException {      
      String user_id = request.getParameter("user_id");
      String user_password = request.getParameter("user_password");

      vo.setUser_id(user_id);
      vo.setUser_password(user_password);
      UserVO userVO = userMapper.loginUser(vo);
      model.addAttribute("userVO", userVO);
      PrintWriter out = response.getWriter();
      if(userVO!=null) {
         out.print("YES");  
         HttpSession session = request.getSession();
         session.setAttribute("userVO", userVO);         
      }else {
         out.print("NO");   // 인증에 실패(0)
      }
   }
   // 로그이웃
   @RequestMapping("logout.do")
   public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(); 
      session.invalidate();
   }
   // 회원가입 페이지 이동
   @RequestMapping("/signup.do")
   public void signup() {      
   }
   // 회원가입 인서트
   @RequestMapping("/userInsert.do")
   public String insertUser(UserVO vo) {
      userMapper.insertUser(vo);
      return "redirect:/home.do";
   }
   // 마이페이지 값 불러오기
   @RequestMapping("/mypage.do")
   public void mypage(Model model, String user_id) {      
      UserVO vo = userMapper.userList(user_id);
      model.addAttribute("vo", vo);
   }
   // 게시판 수정
   @RequestMapping("userUpdate.do")
   public String userUpdate(UserVO vo, Model model) {
      userMapper.userUpdate(vo);
      System.out.println(vo.getUser_name());
      model.addAttribute("vo", vo);
      return "redirect:/mypage.do?user_id="+vo.getUser_id();//수정페이지에서 현재로그인 한 사람의 아이디를 기준을 검색해서 update페이지에서 보여주는데 수정을 하고나면 그 아이디값을 보내지 않아서 안나왔던것같아요
   }
   //게시판 삭제
   @RequestMapping("userDelete.do")
   public String userDelete(String user_id, HttpServletRequest request) throws ServletException, IOException {
      userMapper.userDelete(user_id); 
      HttpSession session = request.getSession(); 
      session.invalidate();
      return "redirect:/home.do";
   }
   // 진단페이지 이동
   @RequestMapping("/goResult.do")
   public String goResult(String user_id) {
	   int result = userMapper.goResult(user_id);
	   UserVO vo = userMapper.userList(user_id);
	   		if(result==1) {
	   			return "redirect:/pcolorResult1_1.do?user_id="+user_id;
	   		}else if(result==2){
	   			return "redirect:/pcolorResult2_1.do?user_id="+user_id;
	   		}else if(result==3) {
	   			return "redirect:/pcolorResult3_1.do?user_id="+user_id;
	   		}else {
	   			return "redirect:/pcolorResult4_1.do?user_id="+user_id;
	   		}
   }
   
}