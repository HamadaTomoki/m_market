package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

@WebServlet("/CategorySearch")
public class CategorySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 商品テーブルのDAO
		ProductDAO prdDAO = new ProductDAO();

		ServletContext application = this.getServletContext();
		List<Product> kindsApp = (List<Product>) application.getAttribute("kindsList");
		if (kindsApp == null) {
			// アプリケーションスコープにカテゴリ一覧を保存
			application.setAttribute("kindsList", prdDAO.findKinds());
		}


		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		if (category != null) {
			// リクエストスコープに商品一覧を保存
			request.setAttribute("prdList", prdDAO.findCategory(category));
		} else {
			// リクエストスコープに商品一覧を保存
			request.setAttribute("prdList", prdDAO.find_all());
		}

		// フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/category.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
