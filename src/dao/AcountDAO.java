package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Acount;
import model.AcountInfo;

public class AcountDAO {
	// private final String JDBC_URL = "jdbc:mysql://localhost:3306/m_market";
	// private final String DB_USER = "root";
	// private final String DB_PASS = "";
	private final String JDBC_URL = "jdbc:oracle:thin:@//localhost:1521/orcldb";
	private final String DB_USER = "hamadatomoki";
	private final String DB_PASS = "argon3-3";

	// 会員情報を登録するメソッド
	public void registerAcount(AcountInfo acountInfo) {
		String acountName = acountInfo.getAcountName();
		String email = acountInfo.getEmail();
		String password = acountInfo.getPassword();
		String firstname = acountInfo.getFirstname();
		String lastname = acountInfo.getLastname();
		String furiganaFN = acountInfo.getFuriganaFN();
		String furiganaLN = acountInfo.getFuriganaLN();
		Date birthday = acountInfo.getBirthday();

		// DB接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			// SELECT文作成
			String sql = "INSERT INTO acount (id,name, email, password, firstname, lastname, furigana_fn, furigana_ln, birthday) VALUES(seq.NEXTVAL,?,?,?,?,?,?,?,?)";
			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, acountName);
			pStmt.setString(2, email);
			pStmt.setString(3, password);
			pStmt.setString(4, firstname);
			pStmt.setString(5, lastname);
			pStmt.setString(6, furiganaFN);
			pStmt.setString(7, furiganaLN);
			pStmt.setDate(8, birthday);

			// SQLを実行
			pStmt.executeUpdate();

		} catch (SQLException e) {
			// 例外処理
			e.printStackTrace();
		}
	}

	public List<Acount> findLoginInfo() {
		List<Acount> loginInfoList = new ArrayList<>();
		// DB接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

			// SELECT文作成
			String sql = "SELECT email, password FROM acount";

			// 事前にコンパイルし、プリペアドステートメントに変換
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQLを実行し、結果を取得
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				String email = rs.getString("email");
				String password = rs.getString("password");

				// インスタンスに取得した値を設定
				Acount acount = new Acount(email, password);
				// インスタンスをArrayListに格納
				loginInfoList.add(acount);
			}
		} catch (SQLException e) {
			// 例外処理
			e.printStackTrace();
			return null;
		}
		return loginInfoList;
	}

}
