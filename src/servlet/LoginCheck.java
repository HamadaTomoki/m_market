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
import model.Product;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ファイル名を取得
		request.setCharacterEncoding("UTF-8");
		String fileName = request.getParameter("file_name");
		String path = "/WEB-INF/jsp/" + fileName + ".jsp";

		HttpSession session = request.getSession();
		AcountLoginInfo ali = (AcountLoginInfo) session.getAttribute("acountLoginInfo");

		if (fileName.equals("purchase")) {
			String name = request.getParameter("name");
			String strPrice = request.getParameter("price");
			int price = Integer.parseInt(strPrice);
			String img = request.getParameter("img");
			String ext = request.getParameter("ext");
			request.setAttribute("prd", new Product(name,price,img,ext));
		}

		if (ali == null) {
			response.sendRedirect("/m_market/login.jsp");
		} else {
			// フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
