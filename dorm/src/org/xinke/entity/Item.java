package org.xinke.entity;

/**
 * Item entity. @author MyEclipse Persistence Tools
 */
public class Item  implements java.io.Serializable {
	private int itemno;
	private String itemname;
	private double itemprice;
	private String itemtype;
	
	public Item() {
		super();
	}
	/** full constructor */
	public Item(String itemname, double itemprice, String itemtype) {
		this.itemname = itemname;
		this.itemprice = itemprice;
		this.itemtype = itemtype;
	}
	public int getItemno() {
		return itemno;
	}
	public void setItemno(int itemno) {
		this.itemno = itemno;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public double getItemprice() {
		return itemprice;
	}
	public void setItemprice(double itemprice) {
		this.itemprice = itemprice;
	}
	public String getItemtype() {
		return itemtype;
	}
	public void setItemtype(String itemtype) {
		this.itemtype = itemtype;
	}
	
}
