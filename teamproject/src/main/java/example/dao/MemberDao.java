package example.dao;

import java.util.List;
import java.util.Map;

import example.vo.Member;

public interface MemberDao {
	
	Member selectOneByEmailAndPassword(Map<String, Object> paramMap);
	
	List<Member> selectList(Map<String, Object> paramMap) throws Exception;
	Member selectOne(int no) throws Exception;  
  Member selectOneByPassword(Map<String, Object> paramMap) throws Exception;    
  int insert(Member member) throws Exception;
  int update(Member member) throws Exception;
  int delete(int no) throws Exception;
}
