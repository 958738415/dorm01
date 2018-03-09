package org.xinke.entity;

import java.util.Date;

/**
 * Visiting entity. @author MyEclipse Persistence Tools
 */
public class Visiting  implements java.io.Serializable {
	private int visitid;
	private String visitname;
	private int id;
	private String relationship;
	private Date visitdate;
	private Date visittime;
	private Date endtime;
	private String remark;
	private String wardenname;
	
	public Visiting() {
		super();
	}

	/** full constructor */
	public Visiting(String visitname, int id, String relationship,
			Date visitdate, Date visittime, Date endtime, String remark,
			String wardenname) {
		this.visitname = visitname;
		this.id = id;
		this.relationship = relationship;
		this.visitdate = visitdate;
		this.visittime = visittime;
		this.endtime = endtime;
		this.remark = remark;
		this.wardenname = wardenname;
	}

	public int getVisitid() {
		return visitid;
	}

	public void setVisitid(int visitid) {
		this.visitid = visitid;
	}

	public String getVisitname() {
		return visitname;
	}

	public void setVisitname(String visitname) {
		this.visitname = visitname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public Date getVisitdate() {
		return visitdate;
	}

	public void setVisitdate(Date visitdate) {
		this.visitdate = visitdate;
	}

	public Date getVisittime() {
		return visittime;
	}

	public void setVisittime(Date visittime) {
		this.visittime = visittime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWardenname() {
		return wardenname;
	}

	public void setWardenname(String wardenname) {
		this.wardenname = wardenname;
	}
	
}
