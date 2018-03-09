package org.xinke.entity;

import java.util.Date;

/**
 * Dorm entity. @author MyEclipse Persistence Tools
 */
public class Dorm  implements java.io.Serializable {
	private int dormid;
	private int buildid;
	private int dormnum;
	private int dormrealnum;
	private String remark;
	private int dormbeds;
	
	public Dorm() {
		super();
	}
	/** full constructor */
	public Dorm(int buildid, int dormnum, int dormrealnum,
			 Date homeintime, Date homeouttime,
			String remark, int dormbeds) {
		this.buildid = buildid;
		this.dormnum = dormnum;
		this.dormrealnum = dormrealnum;
		this.remark = remark;
		this.dormbeds = dormbeds;
	}
	public int getDormid() {
		return dormid;
	}
	public void setDormid(int dormid) {
		this.dormid = dormid;
	}
	public int getBuildid() {
		return buildid;
	}
	public void setBuildid(int buildid) {
		this.buildid = buildid;
	}
	public int getDormnum() {
		return dormnum;
	}
	public void setDormnum(int dormnum) {
		this.dormnum = dormnum;
	}
	public int getDormrealnum() {
		return dormrealnum;
	}
	public void setDormrealnum(int dormrealnum) {
		this.dormrealnum = dormrealnum;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getDormbeds() {
		return dormbeds;
	}
	public void setDormbeds(int dormbeds) {
		this.dormbeds = dormbeds;
	}
	
}
