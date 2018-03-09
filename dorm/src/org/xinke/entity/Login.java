package org.xinke.entity;

/**
 * Login entity. @author MyEclipse Persistence Tools
 */
public class Login  implements java.io.Serializable {
	private Integer loginid;
	private String loginuser;
	private String loginpwd;
	private String loginphone;
	private String loginadmin;
	
	public Login() {
		super();
	}

	/** full constructor */
	public Login(String loginuser, String loginpwd, String loginphone,
			String loginadmin) {
		this.loginuser = loginuser;
		this.loginpwd = loginpwd;
		this.loginphone = loginphone;
		this.loginadmin = loginadmin;
	}

	public Integer getLoginid() {
		return loginid;
	}

	public void setLoginid(Integer loginid) {
		this.loginid = loginid;
	}

	public String getLoginuser() {
		return loginuser;
	}

	public void setLoginuser(String loginuser) {
		this.loginuser = loginuser;
	}

	public String getLoginpwd() {
		return loginpwd;
	}

	public void setLoginpwd(String loginpwd) {
		this.loginpwd = loginpwd;
	}

	public String getLoginphone() {
		return loginphone;
	}

	public void setLoginphone(String loginphone) {
		this.loginphone = loginphone;
	}

	public String getLoginadmin() {
		return loginadmin;
	}

	public void setLoginadmin(String loginadmin) {
		this.loginadmin = loginadmin;
	}
	
}
