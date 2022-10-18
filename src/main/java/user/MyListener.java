package user;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


/**
 * Application Lifecycle Listener implementation class UserListener
 *
 */
@WebListener
public class MyListener implements ServletContextListener {
	UserDAO dao = null;

	/**
	 * Default constructor. 
	 */
	public MyListener() {
		dao = UserDAO.getInstance();
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
		dao = null;
		System.out.println("SystemStop..");
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		if (System.getenv("DATABASE_URL") != null) {
			dao.execSQL("CREATE TABLE IF NOT EXISTS usertbl"
					+ " (id SERIAL, realName VARCHAR(64), userID VARCHAR(64), passwd VARCHAR(64), PRIMARY KEY (id))");
		} else {
			
		}
		dao.create(new UserBean("管理者", "admin", "adminpass"));
		

		System.out.println("SystemStart..");
	}

}

