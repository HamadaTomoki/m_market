package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;

@WebServlet("/ItemSearch")
public class ItemSearch extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {


		// 商品テーブルDAO
		ProductDAO prdDAO = new ProductDAO();

		// 検索パターンを取得
		request.setCharacterEncoding("UTF-8");
		String pattern = request.getParameter("search");
		System.out.println(pattern);

		// リクエストスコープに検索結果を保存
		request.setAttribute("prdList", prdDAO.search(pattern));

		// フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/category.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		doGet(request, response);
	}
}
