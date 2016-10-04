package example.dao;

import java.util.List;
import java.util.Map;

import example.vo.Reply;

public interface ReplyDao {
	
	Reply selectOneByEmailAndPassword(Map<String, Object> paramMap);
	
	List<Reply> selectList(Map<String, Object> paramMap) throws Exception;
	Reply selectOne(int no) throws Exception;  
	Reply selectOneByPassword(Map<String, Object> paramMap) throws Exception;    
  int insert(Reply reply) throws Exception;
  int update(Reply reply) throws Exception;
  int delete(int no) throws Exception;
}
