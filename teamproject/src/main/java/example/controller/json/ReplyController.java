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
import example.vo.JsonResult;
import example.vo.Reply;

@Controller // 페이지 컨트롤러에 붙이는 애노테이션 
@RequestMapping("/reply/") // 이 페이지의 컨트롤러의 기준 URL
public class ReplyController {
	@Autowired
	ReplyDao ReplyDao;
	
	@RequestMapping(path="list")
	public Object list(
			@RequestParam(defaultValue="1") int pageNo,
			@RequestParam(defaultValue="30") int length,
			Model model) throws Exception {

		try {
			HashMap<String,Object> map = new HashMap<>();
			map.put("startIndex", (pageNo - 1) * length);
			map.put("length", length);
					
			return JsonResult.success(ReplyDao.selectList(map));
		} catch (Exception e) {
			
			return JsonResult.fail(e.getMessage());
		}					
	}
	
	@RequestMapping(path="add")
	public Object add(Reply Reply) throws Exception {
		// 성공하든 실패하든 클라이언트에게 데이터를 보내야 한다.
		try {
			ReplyDao.insert(Reply);
			return JsonResult.success();
		} catch (Exception e) {
		
			return JsonResult.fail(e.getMessage());
		}						
	}
	
	@RequestMapping(path="detail")
	public Object detail(int no) throws Exception{
		
		try {
			Reply Reply = ReplyDao.selectOne(no);
			
			if (Reply == null)
				throw new Exception("해당 번호의 게시물이 존재하지 않습니다.");			
			return JsonResult.success(Reply);
		
		} catch (Exception e) {
			
			return JsonResult.fail(e.getMessage());
		}		
		
	}
	
	
	@RequestMapping(path="update")
	public Object update(Reply Reply) throws Exception{

		try {
			HashMap<String,Object> paramMap = new HashMap<>();
			paramMap.put("no", Reply.getNo());
			paramMap.put("password", Reply.getPassword());

			if (ReplyDao.selectOneByPassword(paramMap) == null) {
				throw new Exception("해당 게시물이 없거나 암호가 일치하지 않습니다.!");
			}
			ReplyDao.update(Reply);
			return JsonResult.success();
		} catch (Exception e) {
			
			return JsonResult.fail(e.getMessage());
		}					
		
	}
	
	@RequestMapping(path="delete")
	public Object delete(int no, String password) throws Exception {
		try {
			
			HashMap<String,Object> paramMap = new HashMap<>();
      paramMap.put("no", no);
      paramMap.put("password", password);

			if (ReplyDao.selectOneByPassword(paramMap) == null) {
				throw new Exception("해당 게시물이 없거나 암호가 일치하지 않습니다.!");
			}
			ReplyDao.delete(no);
			return JsonResult.success();
		} catch (Exception e) {
			return JsonResult.fail(e.getMessage());
		}					
	}
	
	
	
	
}
