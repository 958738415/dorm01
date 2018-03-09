package org.xinke.entity;

import java.util.Date;

/**
 * Repair entity. @author MyEclipse Persistence Tools
 */
public class Repair  implements java.io.Serializable {
	private int repairid;
	private int buildid;
	private int dormid;
	private String itemno;
	private String cause;
	private Date subdate;
	private Date resolve;
	private double resolvecost;
	private int employeeid;
	
	public Repair() {
		super();
	}
	/** full constructor */
	public Repair(int buildid, int dormid, String itemno, String cause,
			Date subdate, Date resolve, double resolvecost, int employeeid) {
		this.buildid = buildid;
		this.dormid = dormid;
		this.itemno = itemno;
		this.cause = cause;
		this.subdate = subdate;
		this.resolve = resolve;
		this.resolvecost = resolvecost;
		this.employeeid = employeeid;
	}
	public int getRepairid() {
		return repairid;
	}
	public void setRepairid(int repairid) {
		this.repairid = repairid;
	}
	public int getBuildid() {
		return buildid;
	}
	public void setBuildid(int buildid) {
		this.buildid = buildid;
	}
	public int getDormid() {
		return dormid;
	}
	public void setDormid(int dormid) {
		this.dormid = dormid;
	}
	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public Date getSubdate() {
		return subdate;
	}
	public void setSubdate(Date subdate) {
		this.subdate = subdate;
	}
	public Date getResolve() {
		return resolve;
	}
	public void setResolve(Date resolve) {
		this.resolve = resolve;
	}
	public double getResolvecost() {
		return resolvecost;
	}
	public void setResolvecost(double resolvecost) {
		this.resolvecost = resolvecost;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	
}
