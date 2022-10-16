package diary.create;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/diary_create")
@MultipartConfig
public class CreateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/Create/create.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		//name属性がpictのファイルをPartオブジェクトとして取得
		Part part1=request.getPart("pict1");
		Part part2=request.getPart("pict2");
		Part part3=request.getPart("pict3");
		//ファイル名を取得
		//String filename=part.getSubmittedFileName();//ie対応が不要な場合
		String filename1=Paths.get(part1.getSubmittedFileName()).getFileName().toString();
		String filename2=Paths.get(part2.getSubmittedFileName()).getFileName().toString();
		String filename3=Paths.get(part3.getSubmittedFileName()).getFileName().toString();
		//アップロードするフォルダ
		String path1=getServletContext().getRealPath("/upload");
		String path2=getServletContext().getRealPath("/upload");
		String path3=getServletContext().getRealPath("/upload");
		//実際にファイルが保存されるパス確認
		System.out.println(path1);
		System.out.println(path2);
		System.out.println(path3);
		//書き込み
		part1.write(path1+File.separator+filename1);
		part2.write(path2+File.separator+filename2);
		part3.write(path3+File.separator+filename3);
		request.setAttribute("title",title);
		request.setAttribute("content", content);
		request.setAttribute("filename1", filename1);
		request.setAttribute("filename2", filename2);
		request.setAttribute("filename3", filename3);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/Create/result.jsp");
		rd.forward(request, response);
	}
}