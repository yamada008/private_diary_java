package diary;

import java.io.Serializable;
import java.sql.Date;

public class DiaryBean implements Serializable {
	private String userId = null;
	private Date date = null;
	private String title = null;
	private String Text = null;
	
	public DiaryBean() {}
	public DiaryBean(String userId, Date date, String title, String Text) {
		this.setUserId(userId);
		this.setDate(date);
		this.setTitle(title);
		this.setText(Text);
	}
	
	public void setUserId(String id) { this.userId = id; }
	public String getUserId() { return this.userId; }
	public void setDate(Date date) { this.date = date; }
	public Date getDate() { return this.date; }
	public void setTitle(String title) { this.title = title; }
	public String getTitle() { return this.title; }
	public void setText(String Text) { this.Text = Text; }
	public String getText() { return this.Text; }
	

}