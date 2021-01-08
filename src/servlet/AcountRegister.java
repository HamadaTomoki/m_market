package servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AcountDAO;
import model.AcountInfo;

@WebServlet("/AcountRegister")
public class AcountRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*---------------- 会員情報を取得 -----------------------*/
		request.setCharacterEncoding("UTF-8");
		String acountName = request.getParameter("acount_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String furiganaFN = request.getParameter("furigana_fn");
		String furiganaLN = request.getParameter("furigana_ln");
		String birthYear = request.getParameter("birth_year");
		String birthMonth = request.getParameter("birth_month");
		String birthDay = request.getParameter("birth_day");

		if(Integer.parseInt(birthMonth) < 10) {
			birthMonth = "0" + birthMonth;
		}
		if(Integer.parseInt(birthDay) < 10) {
			birthDay= "0" + birthDay;
		};

		/*---------- 会員情報を設定 -----------------*/
		AcountInfo acountInfo = new AcountInfo();
		acountInfo.setAcountName(acountName);
		acountInfo.setEmail(email);
		acountInfo.setPassword(password);
		acountInfo.setFirstname(firstname);
		acountInfo.setLastname(lastname);
		acountInfo.setFuriganaFN(furiganaFN);
		acountInfo.setFuriganaLN(furiganaLN);

		// String型からDate型へ変換
		Date birthday = Date.valueOf(birthYear + "-" + birthMonth + "-" + birthDay);
		// 設定
		acountInfo.setBirthday(birthday);

		/*--------- 会員情報を登録 -----------*/
		AcountDAO actDAO = new AcountDAO();
		actDAO.registerAcount(acountInfo);

		// リダイレクト
		response.sendRedirect("/m_market/registration_successful.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	// public static void main(String[] args) {
	// 	AcountDAO actDAO = new AcountDAO();
	// 	List<Acount> actList = actDAO.findAll();
	// 	for (Acount act : actList) {
	// 		System.out.println(act.getId());
	// 		System.out.println(act.getName());
	// 	}
	// }
}
