package model;

import java.io.Serializable;

public class LoginInfo implements Serializable {

	private String email, password;

	public String getEmail() { return email;  }
	public void setEmail(String email) { this.email = email;  }
	public String getPassword() { return password;  }
	public void setPassword(String password) { this.password= password;  }
}
