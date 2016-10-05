package example.controller.json;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import example.dao.MemberDao;
import example.vo.JsonResult;
import example.vo.Member;

@Controller
@RequestMapping("/auth/") // 이 페이지의 컨트롤러의 기준 URL
@SessionAttributes({"member"}) 
public class AuthController {

	@Autowired
	MemberDao memberDao;

	
	@RequestMapping(path="login")
	public Object login(
			HttpSession session, /*세션이 무효화된 이후에 세션을 자동 생성하도록 강제한다.*/
			HttpServletResponse response,	
			String email,	
			String password,
			boolean saveEmail,
			Model model,
			SessionStatus sessionStatus)	throws Exception {
				
		try {
			Cookie cookie = new Cookie("email", email);
			if (!saveEmail) {
				cookie.setMaxAge(0); // 기존의 "email" 이름으로 저장된 쿠리를 삭제하라고 명령을 보낸다.
			} else {
				cookie.setMaxAge(60 * 60 * 24 * 7); // 쿠키를 1주일 저장하게 만든다.			
			}
			response.addCookie(cookie);
			
			response.addCookie(new Cookie("test", "okok"));
			cookie = new Cookie("test2", "nono");
			cookie.setMaxAge(129);
			response.addCookie(cookie);
			
			System.out.println(email);
			System.out.println(password);
	
			// DB에서 해당 이메일과 암호가 일치하는 사용자가 있는지 조사한다.
			HashMap<String, Object> paramMap = new HashMap<>();
			paramMap.put("email", email);
			paramMap.put("password", password);
			Member member = memberDao.selectOneByEmailAndPassword(paramMap);
			// 로그인 성공 조회 여부 시작
			
			if (member == null) {
				sessionStatus.setComplete();			
				return JsonResult.fail();
				
			} else {					
				model.addAttribute("member", member); // Model 객체에 로그인 회원정보를 담는다.		
				return JsonResult.success();			
			}
		// 로그인 성공 조회 여부 끝
		} catch(Exception e) {			
			return JsonResult.error(e.getMessage());
		}					
	}

	@RequestMapping(path="logout")
	public Object logout(HttpSession session, SessionStatus sessionStatus) throws Exception {
		try {
			sessionStatus.setComplete();
			session.invalidate();
			return JsonResult.success();
			
		} catch(Exception e) {
			return JsonResult.error(e.getMessage());
		}					
	}
	
	@RequestMapping(path="loginUser")
	public Object loginUser(HttpSession session) throws Exception {

		try {
			Member member = (Member)session.getAttribute("member");
			if(member.getEmail() == null) {
				throw new Exception("로그인이 되지 않았습니다.");
			}
				return JsonResult.success(member);
				
		} catch(Exception e) {
				return JsonResult.error(e.getMessage());
		}					
	}
		
}
