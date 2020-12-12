package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AcountLoginInfo;
import model.AcountLoginLogic;

@WebServlet("/AcountLogin")
public class AcountLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// アカウントのログイン情報を取得
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// アカウントのログイン情報を設定
		AcountLoginInfo ali = new AcountLoginInfo();
		ali.setEmail(email);
		ali.setPassword(password);

		// アカウントがDBに存在するかチェック
		AcountLoginLogic all = new AcountLoginLogic();
		boolean isRegistered = all.excute(ali);
		// System.out.println(isRegistered);
		if (isRegistered) {

			// セッションスコープに保存
			HttpSession session = request.getSession();
			session.setAttribute("acountLoginInfo", ali);

			// ログイン済みTopページへフォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/mypage.jsp");
			dispatcher.forward(request, response);

		} else {
			// ログイン画面にリダイレクト
			response.sendRedirect("/m_market/login.jsp");
		}
	}

}
