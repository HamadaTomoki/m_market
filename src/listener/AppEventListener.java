package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServlet;

@WebListener
public class AppEventListener extends HttpServlet implements ServletContextListener {
	private static final long serialVersionUID = 1L;

	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("アプリケーション開始");
	}

	public void contextDestroyed(ServletContextEvent sce) {
		ServletContext application = this.getServletContext();
		application.removeAttribute("kindsList");
		System.out.println("アプリケーション終了");
	}

}
