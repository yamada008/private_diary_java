package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import blog.SimpleDAO;



public class UserDAO extends SimpleDAO {
	// Singletonパターン（GoFデザインパターン）
	// 用途：一つのインスタンスを共有する、複数のインスタンス生成を認めない
	private static UserDAO dao = new UserDAO(); // 唯一のインスタンス
	
	private UserDAO() {} // privateにすることで、外部からアクセスできなくなる
	
	public static UserDAO getInstance() { // staticメソッドでインスタンス（へのポインタ）を得る
		return dao;
	}
	
	public boolean create(UserBean user) {
		Connection db = this.createConnection();
		//PreparedStatement ps = null;
		boolean result = false;
		try (PreparedStatement ps = db.prepareStatement("INSERT INTO usertbl(realName, userID, passwd) VALUES(?, ?, ?)")) {
			//ps = db.prepareStatement("INSERT INTO user(realName, userID, passwd) VALUES(?, ?, ?)");
			ps.setString(1, user.getRealName());
			ps.setString(2, user.getUserId());
			ps.setString(3, user.getPass());
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeConnection(db);
		}
		return result;
	}

	public String find(String id, String pass) {
		return "ほげ";
	}


//	public String find(String userId, String pass) {
//		Connection db = this.createConnection();
//		PreparedStatement ps = null;
//		String result = null;
//		try {
//			ps = db.prepareStatement("SELECT * FROM usertbl WHERE userID=? AND passwd=?");
//			ps.setString(1, userId);
//			ps.setString(2, pass);
//			ResultSet rst = ps.executeQuery();
//			if (rst.next()) {
//				result = rst.getString("realName");
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (ps != null) {
//					ps.close();
//				}
//			} catch (SQLException e) {
//			}
//			this.closeConnection(db);
//		}
//
//		return result;
//	}

}
