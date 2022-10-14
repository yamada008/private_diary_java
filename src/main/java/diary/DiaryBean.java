package diary;

import java.io.Serializable;
import java.sql.Date;

public class DiaryBean implements Serializable {
	private String userId = null;
	private Date date = null;
	private String title = null;
	private String content = null;
	
	public DiaryBean() {}
	public DiaryBean(String userId, Date date, String title, String content) {
		this.setUserId(userId);
		this.setDate(date);
		this.setTitle(title);
		this.setContent(content);
	}
	
	public void setUserId(String id) { this.userId = id; }
	public String getUserId() { return this.userId; }
	public void setDate(Date date) { this.date = date; }
	public Date getDate() { return this.date; }
	public void setTitle(String title) { this.title = title; }
	public String getTitle() { return this.title; }
	public void setContent(String content) { this.content = content; }
	public String getContent() { return this.content; }
	

}