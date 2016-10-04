package example.controller.json;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;

import example.dao.ReplyDao;
import example.vo.Reply;

@Controller // 페이지 컨트롤러에 붙이는 애노테이션 
@RequestMapping("/reply/") // 이 페이지의 컨트롤러의 기준 URL
public class ReplyController {
	@Autowired
	ReplyDao ReplyDao;
	
	@RequestMapping(path="list", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String list(
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="30") int length,
			Model model) throws Exception {

		HashMap<String, Object> result = new HashMap<>();
		try {
			HashMap<String,Object> map = new HashMap<>();
			map.put("startIndex", (pageNo - 1) * length);
			map.put("length", length);

			List<Reply> list = ReplyDao.selectList(map);			
			result.put("state", "success");
			result.put("data", list);
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("data", e.getMessage());
		}					
		return new Gson().toJson(result);
	}
	
	@RequestMapping("list2")
	public ResponseEntity<String> list2(
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="5") int length,
			Model model) throws Exception {
		
		HashMap<String,Object> map = new HashMap<>();
		map.put("startIndex", (pageNo - 1) * length);
		map.put("length", length);

		List<Reply> list = ReplyDao.selectList(map);
		
		HttpHeaders heades = new HttpHeaders();
		heades.add("Content-type","text/plain;charset=UTF-8");
		return new ResponseEntity<String>(
				"클라이언트에게 보낼 내용",
				heades,
				HttpStatus.OK); 	
	}
	
	@RequestMapping(path="add", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String add(Reply Reply) throws Exception {
		// 성공하든 실패하든 클라이언트에게 데이터를 보내야 한다.
		HashMap<String, Object> result = new HashMap<>();
		try {
			ReplyDao.insert(Reply);
			result.put("state", "success");
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("data", e.getMessage());
		}						
		return new Gson().toJson(result);
	}
	
	@RequestMapping(path="detail", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String detail(int no) throws Exception{
		HashMap<String, Object> result = new HashMap<>();
		
		try {
			Reply Reply = ReplyDao.selectOne(no);
			
			if (Reply == null)
				throw new Exception("해당 번호의 게시물이 존재하지 않습니다.");
			result.put("state", "success");
			result.put("data", Reply);
			
		
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("data", e.getMessage());
		}		
		
		return new Gson().toJson(result);
	}
	
	
	@RequestMapping(path="update", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String update(Reply Reply) throws Exception{

		HashMap<String, Object> result = new HashMap<>();
		try {
			HashMap<String,Object> paramMap = new HashMap<>();
			paramMap.put("no", Reply.getNo());
			paramMap.put("password", Reply.getPassword());

			if (ReplyDao.selectOneByPassword(paramMap) == null) {
				throw new Exception("해당 게시물이 없거나 암호가 일치하지 않습니다.!");
			}
			ReplyDao.update(Reply);
			result.put("state", "success");
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("data", e.getMessage());
		}					
		
		return new Gson().toJson(result);
	}
	
	@RequestMapping(path="delete", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String delete(int no) throws Exception {
		HashMap<String, Object> result = new HashMap<>();
		try {
			if (ReplyDao.delete(no) == 0) {
				throw new Exception("해당 게시물이 없거나 삭제 실패 입니다.");
			}
			result.put("state", "success");
		} catch (Exception e) {
			result.put("state", "fail");
			result.put("data", e.getMessage());
		}					
		return new Gson().toJson(result);
	}
	
	
	
	
}
