package diary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import blog.SimpleDAO;

public class DiaryDAO extends SimpleDAO {
	private static DiaryDAO da = new DiaryDAO();

	private DiaryDAO() {
	} // privateにすることで、外部からアクセスできなくなる

	public static DiaryDAO getInstance() { // staticメソッドでインスタンス（へのポインタ）を得る
		return da;
	}
	
	public boolean create(DiaryBean blog) {
		Connection db = this.createConnection();
		//PreparedStatement ps = null;
		boolean result = false;
		try (PreparedStatement ps = db.prepareStatement("INSERT INTO blogtbl(userID, date, title, content) VALUES(?, ?, ?, ?)")) {
			//ps = db.prepareStatement("INSERT INTO user(realName, userID, passwd) VALUES(?, ?, ?)");
			ps.setString(1, blog.getUserId());
			ps.setDate(2, blog.getDate());
			ps.setString(3, blog.getTitle());
			ps.setString(4, blog.getContent());
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
