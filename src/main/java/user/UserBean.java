package user;

import java.io.Serializable;

public class UserBean implements Serializable {
	private String userId = null;
	private String realName = null;
	private String pass = null;
	private boolean isAuth = false;
	
	public UserBean() {}
	public UserBean(String name, String id, String pass) {
		this.setRealName(name);
		this.setUserId(id);
		this.setPass(pass);
	}
	
	public void setUserId(String id) { this.userId = id; }
	public String getUserId() { return this.userId; }
	public void setRealName(String name) { this.realName = name; }
	public String getRealName() { return this.realName; }
	public void setPass(String pass) { this.pass = pass; }
	public String getPass() { return this.pass; }
	public boolean isAuth() { return this.isAuth; }
	
	public boolean login(String id, String pass) {
		UserDAO dao = UserDAO.getInstance();
		String realName = null;
		if ((realName = dao.find(id, pass)) != null) {
			this.setRealName(realName);
			this.setUserId(id);
			this.setPass(pass);
			this.isAuth = true;
		}
		return this.isAuth();
	}
	
	public void logout() {
		this.isAuth = false;
		this.userId = null;
		this.pass = null;
		this.realName = null;
	}
}
