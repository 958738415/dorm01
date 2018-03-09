package org.xinke.entity;

/**
 * Utilities entity. @author MyEclipse Persistence Tools
 */
public class Utilities  implements
		java.io.Serializable {
	private int utilitiesid;
	private int buildid;
	private int dormid;
	private String months;
	private double electnum;
	private double electcharge;
	private double waternum;
	private double watercharge;
	
	public Utilities() {
		super();
	}
	/** full constructor */
	public Utilities(int buildid, int dormid, String months,
			double electnum, double electcharge, double waternum,
			double watercharge) {
		this.buildid = buildid;
		this.dormid = dormid;
		this.months = months;
		this.electnum = electnum;
		this.electcharge = electcharge;
		this.waternum = waternum;
		this.watercharge = watercharge;
	}
	public int getUtilitiesid() {
		return utilitiesid;
	}
	public void setUtilitiesid(int utilitiesid) {
		this.utilitiesid = utilitiesid;
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
	public String getMonths() {
		return months;
	}
	public void setMonths(String months) {
		this.months = months;
	}
	public double getElectnum() {
		return electnum;
	}
	public void setElectnum(double electnum) {
		this.electnum = electnum;
	}
	public double getElectcharge() {
		return electcharge;
	}
	public void setElectcharge(double electcharge) {
		this.electcharge = electcharge;
	}
	public double getWaternum() {
		return waternum;
	}
	public void setWaternum(double waternum) {
		this.waternum = waternum;
	}
	public double getWatercharge() {
		return watercharge;
	}
	public void setWatercharge(double watercharge) {
		this.watercharge = watercharge;
	}
	
}
