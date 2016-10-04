package example.vo;

import java.io.Serializable;
import java.sql.Date;
import java.text.SimpleDateFormat;

public class Reply implements Serializable {
	private static final long serialVersionUID = 1L;
  static SimpleDateFormat format = new SimpleDateFormat("yyy-MM-dd");
  
  protected int no;
  protected String title;
  protected String contents;
  protected String nicknm;
  protected Date createdDate; // 이제 java.sql.Date 타입으로 날짜 정보를 제대로 다뤄보자!
  protected transient String password; // 보안상 암호는 직렬화 대상에서 제외하는 것이 좋다.
  protected String createdDate2; 
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContents() {
    return contents;
  }
  public void setContents(String contents) {
    this.contents = contents;
  }
  public String getNicknm() {
    return nicknm;
  }
  public void setNicknm(String nicknm) {
    this.nicknm = nicknm;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
    this.createdDate2 = format.format(createdDate);
  }
  public String getCreatedDate2() {
    return createdDate2;
  }
  public void setCreatedDate2(String str) {
    this.createdDate = Date.valueOf(str);
    this.createdDate2 = str;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
}
