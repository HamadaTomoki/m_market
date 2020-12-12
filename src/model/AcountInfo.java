/*
 * Acount.java
 */
/** アカウントに関する情報を持つJavaBeans **/
package model;

import java.io.Serializable;
import java.sql.Date;

public class AcountInfo implements Serializable{

	private String acountName, email, password, firstname, lastname, furiganaFN, furiganaLN;
	private Date birthday;

	public String getAcountName() { return acountName; }
	public void setAcountName(String acountName) { this.acountName = acountName; }
	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }
	public String getFirstname() { return firstname; }
	public void setFirstname(String firstname) { this.firstname= firstname; }
	public String getLastname() { return lastname; }
	public void setLastname(String lastname) { this.lastname= lastname; }
	public String getFuriganaFN() { return furiganaFN; }
	public void setFuriganaFN(String furiganaFN) { this.furiganaFN= furiganaFN; }
	public String getFuriganaLN() { return furiganaLN; }
	public void setFuriganaLN(String furiganaLN) { this.furiganaLN= furiganaLN; }
	public Date getBirthday() { return birthday; }
	public void setBirthday(Date birthday) { this.birthday= birthday; }

}
