package example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import example.dao.ReplyDao;
import example.vo.Reply;

@Controller // 페이지 컨트롤러에 붙이는 애노테이션 
@RequestMapping("/reply/") // 이 페이지의 컨트롤러의 기준 URL
public class ReplyController {

	@Autowired
	ReplyDao ReplyDao;
	
	@RequestMapping("list")
	public String list(
			@RequestParam(defaultValue="1")int pageNo,
			@RequestParam(defaultValue="5")int length,
			Model model) throws Exception {
		
		HashMap<String,Object> map = new HashMap<>();
		map.put("startIndex", (pageNo - 1) * length);
		map.put("length", length);

		List<Reply> list = ReplyDao.selectList(map);
		model.addAttribute("list", list);			
		
		return "/board/BoardList.jsp";	
	}
	
	@RequestMapping("add")
	public String add(Reply board) throws Exception {
		ReplyDao.insert(board);		
		return "redirect:list.do";
	}
	
	@RequestMapping("detail")
	public String detail(int no, Model model) throws Exception{
		Reply Reply = ReplyDao.selectOne(no);
		model.addAttribute("Reply", Reply);
		return "/board/BoardDetail.jsp";
	}
	
	@RequestMapping("update")
	public String update(Reply Reply) throws Exception{
		HashMap<String,Object> paramMap = new HashMap<>();
		paramMap.put("no", Reply.getNo());
		paramMap.put("password", Reply.getPassword());

		if (ReplyDao.selectOneByPassword(paramMap) == null) {
			throw new Exception("해당 게시물이 없거나 암호가 일치하지 않습니다.!");
		}
		ReplyDao.update(Reply);
		return "redirect:list.do";
	}
	
	@RequestMapping("delete")
	public String delete(int no) throws Exception {
		ReplyDao.delete(no);    	
		return "redirect:list.do";
	}
	
	
	
	
	
	
	
	
	
	
}
