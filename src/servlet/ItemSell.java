package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.ProductDAO;
import model.ItemInfo;

@WebServlet("/ItemSell")
@MultipartConfig
public class ItemSell extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] map = { "北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県",
				"茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県",
				"新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県",
				"静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県",
				"奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県",
				"徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県",
				"熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"
		};
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 商品に関する情報を取得
		String name = request.getParameter("prd_name");
		String explain = request.getParameter("prd_explain");
		String category = request.getParameter("prd_category");
		String condition = request.getParameter("prd_condition");
		String strPrice = request.getParameter("prd_price");
		String spgFee = request.getParameter("spg_fee");
		String spgLocation = request.getParameter("spg_location");
		String spgDay = request.getParameter("spg_day");

		// ファイル名と拡張子にわける
		Part part = request.getPart("fileInput");
		String fileName = part.getSubmittedFileName();
		String[] fileSplit = fileName.split("\\.");
		String img = fileSplit[0];
		String ext = fileSplit[1];

		int price = Integer.parseInt(strPrice);
		int location = Integer.parseInt(spgLocation);

		// 商品情報を設定
		ItemInfo itemInfo = new ItemInfo();
		itemInfo.setName(name);
		itemInfo.setExplain(explain);
		itemInfo.setPrice(price);
		itemInfo.setCategory(category);
		itemInfo.setCondition(condition);
		itemInfo.setImg(img);
		itemInfo.setExt(ext);
		itemInfo.setFee(spgFee);
		itemInfo.setLocation(map[location]);
		itemInfo.setDay(spgDay);

		// 商品情報を登録
		ProductDAO prdDAO = new ProductDAO();
		prdDAO.register(itemInfo);

		// ファイルのアップロード
		boolean isUploaded = uploadFile(part);
		if (!isUploaded) {
			System.out.println("Error: Faild upload.");
		} else {
			response.sendRedirect("/m_market/sell_successful.jsp");
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public boolean uploadFile(Part part) {
		boolean test = false;
		try {
			String fileName = part.getSubmittedFileName();
			String sql = "INSERT INTO product(id,name,explain,condition,price,category,img,ext,spg_fee,spg_loc,spg_day)VALUES(myseq.NEXTVAL,?,?,?,?,?,?,?,?,?,?)";
			// String path = getServletContext().getRealPath("/" + "images" + File.separator + fileName);
			String path = "/Applications/Eclipse_2020-12.app/Contents/workspace/m_market/WebContent/images" + File.separator + fileName;
			part.write(path);
			test = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return test;
	}
}
