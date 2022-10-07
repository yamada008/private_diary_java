package blog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BlogDAO extends SimpleDAO {
	private static BlogDAO dao = new BlogDAO();

	private BlogDAO() {
	} // privateにすることで、外部からアクセスできなくなる

	public static BlogDAO getInstance() { // staticメソッドでインスタンス（へのポインタ）を得る
		return dao;
	}
	
	public boolean create(BlogBean blog) {
		Connection db = this.createConnection();
		//PreparedStatement ps = null;
		boolean result = false;
		try (PreparedStatement ps = db.prepareStatement("INSERT INTO blogtbl(userID, date, title, article) VALUES(?, ?, ?, ?)")) {
			//ps = db.prepareStatement("INSERT INTO user(realName, userID, passwd) VALUES(?, ?, ?)");
			ps.setString(1, blog.getUserId());
			ps.setDate(2, blog.getDate());
			ps.setString(3, blog.getTitle());
			ps.setString(4, blog.getArticle());
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeConnection(db);
		}
		return result;
	}
}
