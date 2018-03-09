package org.xinke.entity;

import java.util.Date;

/**
 * Dormmember entity. @author MyEclipse Persistence Tools
 */
public class Dormmember  implements
		java.io.Serializable {
	private int dormmbid;
	private String dormbname;
	private int dormid;
	private String dormbeds;
	private String dormbtel;
	private Date homeintime;
	private Date homeouttime;
	// Constructors

	/** default constructor */
	public Dormmember() {
	}

	/** full constructor */
	public Dormmember(String dormbname, int dormid, String dormbeds,
			String dormbtel,Date homeintime,Date homeouttime) {
		this.dormbname = dormbname;
		this.dormid = dormid;
		this.dormbeds = dormbeds;
		this.dormbtel = dormbtel;
		this.homeintime = homeintime;
		this.homeouttime = homeouttime;
	}

	public int getDormmbid() {
		return dormmbid;
	}

	public void setDormmbid(int dormmbid) {
		this.dormmbid = dormmbid;
	}

	public String getDormbname() {
		return dormbname;
	}

	public void setDormbname(String dormbname) {
		this.dormbname = dormbname;
	}

	public int getDormid() {
		return dormid;
	}

	public void setDormid(int dormid) {
		this.dormid = dormid;
	}

	public String getDormbeds() {
		return dormbeds;
	}
	public void setDormbeds(String dormbeds) {
		this.dormbeds = dormbeds;
	}

	public String getDormbtel() {
		return dormbtel;
	}
	public void setDormbtel(String dormbtel) {
		this.dormbtel = dormbtel;
	}
	public Date getHomeintime() {
		return homeintime;
	}
	public void setHomeintime(Date homeintime) {
		this.homeintime = homeintime;
	}
	public Date getHomeouttime() {
		return homeouttime;
	}
	public void setHomeouttime(Date homeouttime) {
		this.homeouttime = homeouttime;
	}
}
