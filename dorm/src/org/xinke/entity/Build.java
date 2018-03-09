package org.xinke.entity;

/**
 * Build entity. @author MyEclipse Persistence Tools
 */
public class Build  implements java.io.Serializable {
	private int build;
	private int floor;
	private int roomnum;
	private int buildnum;
	private int buildrealnum;
	private String buildremark;
	private int wardenid;
	private String inhabittype;
	
	
	public Build() {
		super();
	}

	/** full constructor */
	public Build(int floor, int roomnum, int buildnum,
			int buildrealnum, String buildremark, int wardenid,String inhabittype) {
		this.floor = floor;
		this.roomnum = roomnum;
		this.buildnum = buildnum;
		this.buildrealnum = buildrealnum;
		this.buildremark = buildremark;
		this.wardenid = wardenid;
		this.inhabittype = inhabittype;
	}

	public int getBuild() {
		return build;
	}

	public void setBuild(int build) {
		this.build = build;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}

	public int getRoomnum() {
		return roomnum;
	}

	public void setRoomnum(int roomnum) {
		this.roomnum = roomnum;
	}

	public int getBuildnum() {
		return buildnum;
	}

	public void setBuildnum(int buildnum) {
		this.buildnum = buildnum;
	}

	public int getBuildrealnum() {
		return buildrealnum;
	}

	public void setBuildrealnum(int buildrealnum) {
		this.buildrealnum = buildrealnum;
	}

	public String getBuildremark() {
		return buildremark;
	}

	public void setBuildremark(String buildremark) {
		this.buildremark = buildremark;
	}

	public int getWardenid() {
		return wardenid;
	}

	public void setWardenid(int wardenid) {
		this.wardenid = wardenid;
	}
	public String getInhabittype() {
		return inhabittype;
	}
	public void setInhabittype(String inhabittype) {
		this.inhabittype = inhabittype;
	}
}
