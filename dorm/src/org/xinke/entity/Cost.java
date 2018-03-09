package org.xinke.entity;

import java.util.Date;

/**
 * Cost entity. @author MyEclipse Persistence Tools
 */
public class Cost implements java.io.Serializable {
	private int costid;
	private String costtype;
	private String dormid;
	private Date costdate;
	private String costname;
	private String remark;
	private int wardenid;
		
	public Cost() {
		super();
	}

	/** full constructor */
	public Cost(String costtype, String dormid, Date costdate, String costname, String remark, int wardenid) {
		this.costtype = costtype;
		this.dormid = dormid;
		this.costdate = costdate;
		this.costname = costname;
		this.remark = remark;
		this.wardenid = wardenid;
	}

	public int getCostid() {
		return costid;
	}

	public void setCostid(int costid) {
		this.costid = costid;
	}

	public String getCosttype() {
		return costtype;
	}

	public void setCosttype(String costtype) {
		this.costtype = costtype;
	}

	public String getDormid() {
		return dormid;
	}

	public void setDormid(String dormid) {
		this.dormid = dormid;
	}

	public Date getCostdate() {
		return costdate;
	}

	public void setCostdate(Date costdate) {
		this.costdate = costdate;
	}

	public String getCostname() {
		return costname;
	}

	public void setCostname(String costname) {
		this.costname = costname;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getWardenid() {
		return wardenid;
	}

	public void setWardenid(int wardenid) {
		this.wardenid = wardenid;
	}

}
