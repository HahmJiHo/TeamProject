package example.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import example.dao.MemberDao;
import example.vo.Member;

@Controller
@RequestMapping("/auth/") // 이 페이지의 컨트롤러의 기준 URL
@SessionAttributes({"member"}) 
public class AuthController {

	@Autowired
	MemberDao memberDao;

	@RequestMapping("form")
	public String form(
			@CookieValue(name="email", defaultValue="") String email,
			Model model) throws Exception {		
		model.addAttribute("email", email);
		model.addAttribute("checked", (email.equals("")) ? "" : "checked");

		return "auth/LoginForm";	
	}

	@RequestMapping("login")
	public String login(
			HttpServletResponse response,	
			String email,	
			String password,
			String saveEmail,
			Model model,
			SessionStatus sessionStatus)	throws Exception {

		Cookie cookie = new Cookie("email", email);
		if (saveEmail == null) {
			cookie.setMaxAge(0); // 기존의 "email" 이름으로 저장된 쿠리를 삭제하라고 명령을 보낸다.
		} else {
			cookie.setMaxAge(60 * 60 * 24 * 7); // 쿠키를 1주일 저장하게 만든다.			
		}
		response.addCookie(cookie);

		System.out.println(email);
		System.out.println(password);

		// DB에서 해당 이메일과 암호가 일치하는 사용자가 있는지 조사한다.
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("email", email);
		paramMap.put("password", password);
		Member member = memberDao.selectOneByEmailAndPassword(paramMap);

		if (member == null) {
			sessionStatus.setComplete();			
			return "auth/LoginFail";

		} else {					
			model.addAttribute("member", member); // Model 객체에 로그인 회원정보를 담는다.		
			return "redirect:../board/list.do";			
		}	
	}

	@RequestMapping("logout")
	public String logout(SessionStatus sessionStatus) throws Exception {
		sessionStatus.setComplete();		
		return "redirect:form.do";		
	}

}
