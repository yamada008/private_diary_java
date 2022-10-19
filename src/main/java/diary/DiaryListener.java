package diary;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DiaryListener implements ServletContextListener {
	DiaryDAO dao = null;
	
    public DiaryListener() {
        dao = DiaryDAO.getInstance();
    }

    @Override
	public void contextInitialized(ServletContextEvent sce) {
    	if (System.getenv("DATABASE_URL") != null) {
		} else {
			if (dao.execSQL("CREATE TABLE IF NOT EXISTS diary"
					+ " (id IDENTITY, userID VARCHAR(64), date DATE, title VARCHAR(64), content VARCHAR(64))")) {
				System.out.println("DiaryDB is READY.");
			} else {
				System.out.println("DiaryDB is NOT READY.");
			}
		}
		dao.create(new DiaryBean("hoge", "2022-10-10","ほげ", "ほげほげ"));
	}
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    	dao = null;
    }
}
