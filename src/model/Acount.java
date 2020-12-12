/*
 * Acount.java
 */
/** Acount(会員)テーブルのレコードを表すクラス **/
package model;

import java.sql.Date;

public class Acount {
	String name, email, password, firstname, lastname, furiganaFN, furiganaLN, profile;
	int id, phoneNumber;
	Date birthday;

	// 会員登録時に会員情報を設定するコンストラクタ
	public Acount(int id, String name, String email,String password, String firstname, String lastname, String furiganaFN, String furiganaLN, Date birthday) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.furiganaFN = furiganaFN;
		this.furiganaLN = furiganaLN;
		this.birthday = birthday;
	}

	// ログイン時に比較する会員情報を設定するコンストラクタ
	public Acount(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public int getId() { return id; };
	public String getName() { return name; };
	public String getEmail() { return email; };
	public String getPassword() { return password; };
	public String getFirstname() { return firstname; };
	public String getLastname() { return lastname; };
	public String getFuriganaFN() { return furiganaFN; };
	public String getFuriganaLN() { return furiganaLN; };
	public Date getBirthday() { return birthday; };
}
