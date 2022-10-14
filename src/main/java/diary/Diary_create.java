package diary;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Diary_create
 */
@WebServlet("/create")
public class Diary_create extends DiaryServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
//		ContentBean content = new ContentBean("/WEB-INF/jsp/Blog/content.jsp");
//		req.removeAttribute("content"); // 既存のcontentを消去
//		req.setAttribute("content", content);

		req.getRequestDispatcher("WEB-INF/jsp/Diary/Diary_create.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO 自動生成されたメソッド・スタブ
		super.doPost(req, resp);
	}
}