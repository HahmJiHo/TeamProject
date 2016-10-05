package example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import example.dao.MemberDao;
import example.vo.Member;

@Controller // 페이지 컨트롤러에 붙이는 애노테이션 
@RequestMapping("/member/") // 이 페이지의 컨트롤러의 기준 URL
public class MemberController {

	@Autowired
	MemberDao memberDao;
	
	@RequestMapping("list")
	public String list(
			@RequestParam(defaultValue="1")int pageNo,
			@RequestParam(defaultValue="5")int length,
			Model model) throws Exception {
		
		HashMap<String,Object> map = new HashMap<>();
		map.put("startIndex", (pageNo - 1) * length);
		map.put("length", length);

		List<Member> list = memberDao.selectList(map);
		model.addAttribute("list", list);			
		
		return "member/MemberList";	
	}
	
	@RequestMapping("add")
	public String add(Member board) throws Exception {
		memberDao.insert(board);		
		return "redirect:list.do";
	}
	
	@RequestMapping("detail")
	public String detail(int no, Model model) throws Exception{
		Member member = memberDao.selectOne(no);
		model.addAttribute("member", member);
		return "member/MemberDetail";
	}
	
	@RequestMapping("update")
	public String update(Member member) throws Exception{
		HashMap<String,Object> paramMap = new HashMap<>();
		paramMap.put("no", member.getNo());
		paramMap.put("password", member.getPassword());

		if (memberDao.selectOneByPassword(paramMap) == null) {
			throw new Exception("해당 게시물이 없거나 암호가 일치하지 않습니다.!");
		}
		memberDao.update(member);
		return "redirect:list.do";
	}
	
	@RequestMapping("delete")
	public String delete(int no) throws Exception {
		memberDao.delete(no);    	
		return "redirect:list.do";
	}
	
	
	
	
	
	
	
	
	
	
}
