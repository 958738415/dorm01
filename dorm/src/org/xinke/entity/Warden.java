package org.xinke.entity;

/**
 * Warden entity. @author MyEclipse Persistence Tools
 */
public class Warden  implements java.io.Serializable {
	private int wardenid;
	private String wardenuser;
	private String wardensex;
	private String wardentel;
	private String wardenadmin;
	private String wardenpwd;
	
	public Warden() {
		super();
	}
	/** full constructor */
	public Warden(int wardenid, String wardenuser, String wardensex, String wardentel, String wardenadmin,
			String wardenpwd) {
		super();
		this.wardenid = wardenid;
		this.wardenuser = wardenuser;
		this.wardensex = wardensex;
		this.wardentel = wardentel;
		this.wardenadmin = wardenadmin;
		this.wardenpwd = wardenpwd;
	}
	public int getWardenid() {
		return wardenid;
	}
	public void setWardenid(int wardenid) {
		this.wardenid = wardenid;
	}
	public String getWardenuser() {
		return wardenuser;
	}
	public void setWardenuser(String wardenuser) {
		this.wardenuser = wardenuser;
	}
	public String getWardensex() {
		return wardensex;
	}
	public void setWardensex(String wardensex) {
		this.wardensex = wardensex;
	}
	public String getWardentel() {
		return wardentel;
	}
	public void setWardentel(String wardentel) {
		this.wardentel = wardentel;
	}
	public String getWardenadmin() {
		return wardenadmin;
	}
	public void setWardenadmin(String wardenadmin) {
		this.wardenadmin = wardenadmin;
	}
	public String getWardenpwd() {
		return wardenpwd;
	}
	public void setWardenpwd(String wardenpwd) {
		this.wardenpwd = wardenpwd;
	}
	
	
}
