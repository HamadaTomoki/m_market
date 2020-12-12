package model;

import java.util.List;

import dao.AcountDAO;

public class AcountLoginLogic {

	public boolean excute(AcountLoginInfo ali) {

		// 設定したアカウント情報を取得
		String email = ali.getEmail();
		String password = ali.getPassword();

		// DBに登録されている照会情報を取得
		AcountDAO actDAO = new AcountDAO();
		List<Acount> actList = actDAO.findLoginInfo();

		boolean isMatch = false;
		try {
			// 入力情報と照会情報を比較
			for (Acount act : actList) {
				// System.out.println(act.getEmail() + "=" + email);
				// System.out.println(act.getPassword() + "=" + password);
				if (email.equals(act.getEmail()) && password.equals(act.getPassword())) {
					isMatch = true;
					break;
				}
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}

		if (isMatch) {
			return true;
		}
		return false;
	}

}
