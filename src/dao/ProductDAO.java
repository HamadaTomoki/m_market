/*
 * ProductDAO.java
 */

/** Productテーブルを担当するDAO **/
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductDAO {

	// private final String JDBC_URL = "jdbc:mysql://localhost:3306/m_market";
	// private final String DB_USER = "root";
	// private final String DB_PASS = "";
	private final String JDBC_URL = "jdbc:oracle:thin:@//localhost:1521/orcldb";
	private final String DB_USER = "hamadatomoki";
	private final String DB_PASS = "argon3-3";

	public List<List<Product>> search(String pattern) {

		List<List<Product>> prdList = new ArrayList<>();
		List<Product> prd = new ArrayList<>();
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			// SELECT文作成
			String sql = "SELECT name, price, category, img, ext FROM product WHERE name LIKE ? OR category LIKE ?";

			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, '%' + pattern + '%');
			pStmt.setString(2, '%' + pattern + '%');

			// SQLを実行し、結果を取得
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				// クエリ結果から値を取得
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String category = rs.getString("category");
				String img = rs.getString("img");
				String ext = rs.getString("ext");
				// インスタンスに取得した値を設定
				Product product = new Product(name, price, category, img, ext);
				System.out.println(name + "　|　" + price + "　|　" + name + "　|　" + category + "　|　" + ext);

				// カラム1~３の配列に格納
				prd.add(product);
				// System.out.println(prd.size());

				// prdの配列の要素数が3のときとき
				if (prd.size() == 3) {
					// 配列prdListにprdを格納
					prdList.add(prd);

					// 新しくインスタンスを生成
					prd = new ArrayList<>();
				}
			}
			if (prd.size() < 3) {
				prdList.add(prd);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prdList;
	}

	public List<List<Product>> findCategory(String categories) {
		List<List<Product>> prdList = new ArrayList<>();
		List<Product> prd = new ArrayList<>();
		// DB接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			// SELECT文作成
			String sql = "SELECT name, price, category, img, ext FROM product WHERE category = ?";

			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, categories);

			// SQLを実行し、結果を取得
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				// クエリ結果から値を取得
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String category = rs.getString("category");
				String img = rs.getString("img");
				String ext = rs.getString("ext");
				// インスタンスに取得した値を設定
				Product product = new Product(name, price, category, img, ext);
				// System.out.println(name + "　|　" + price + "　|　" + name + "　|　" + category + "　|　" + ext);

				// カラム1~３の配列に格納
				prd.add(product);
				// System.out.println(prd.size());

				// prdの配列の要素数が3のときとき
				if (prd.size() == 3) {
					// 配列prdListにprdを格納
					prdList.add(prd);

					// 新しくインスタンスを生成
					prd = new ArrayList<>();
				}
			}
			if (prd.size() < 3) {
				prdList.add(prd);
			}
		} catch (SQLException e) {
			// 例外処理
			e.printStackTrace();
			return null;
		}
		return prdList;
	}

	public List<List<Product>> find_all() {
		List<List<Product>> prdList = new ArrayList<>();
		List<Product> prd = new ArrayList<>();
		// DB接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			// SELECT文作成
			String sql = "SELECT name, price, category, img, ext FROM product";

			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQLを実行し、結果を取得
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				// クエリ結果から値を取得
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String category = rs.getString("category");
				String img = rs.getString("img");
				String ext = rs.getString("ext");
				// インスタンスに取得した値を設定
				Product product = new Product(name, price, category, img, ext);
				// System.out.println(name + "　|　" + price + "　|　" + name + "　|　" + category + "　|　" + ext);

				// カラム1~３の配列に格納
				prd.add(product);
				// System.out.println(prd.size());

				// prdの配列の要素数が3のときとき
				if (prd.size() == 3) {
					// 配列prdListにprdを格納
					prdList.add(prd);

					// 新しくインスタンスを生成
					prd = new ArrayList<>();
				}
			}
			if (prd.size() < 3) {
				prdList.add(prd);
			}
		} catch (SQLException e) {
			// 例外処理
			e.printStackTrace();
			return null;
		}
		return prdList;
	}

	public List<Product> findKinds() {
		List<Product> prdList = new ArrayList<>();
		// DB接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			// SELECT文作成
			String sql = "SELECT DISTINCT category FROM product";

			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQLを実行し、結果を取得
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				String category = rs.getString("category");
				// インスタンスに取得した値を設定
				Product product = new Product(category);
				prdList.add(product);
			}
		} catch (SQLException e) {
			// 例外処理
			e.printStackTrace();
			return null;
		}
		return prdList;
	}
}
