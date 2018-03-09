package org.xinke.entity;

/**
 * Employee entity. @author MyEclipse Persistence Tools
 */
public class Employee  implements java.io.Serializable {
	private Integer employeeid;
	private String employeename;
	private String employeesex;
	private String employeeage;
	private Integer buildid;
	private String employeetel;
	private String employeeadd;
	private String employeetype;
	
	public Employee() {
		super();
	}
	/** full constructor */
	public Employee(String employeename, String employeesex,
			String employeeage, Integer buildid, String employeetel,
			String employeeadd, String employeetype) {
		this.employeename = employeename;
		this.employeesex = employeesex;
		this.employeeage = employeeage;
		this.buildid = buildid;
		this.employeetel = employeetel;
		this.employeeadd = employeeadd;
		this.employeetype = employeetype;
	}
	public Integer getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(Integer employeeid) {
		this.employeeid = employeeid;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getEmployeesex() {
		return employeesex;
	}
	public void setEmployeesex(String employeesex) {
		this.employeesex = employeesex;
	}
	public String getEmployeeage() {
		return employeeage;
	}
	public void setEmployeeage(String employeeage) {
		this.employeeage = employeeage;
	}
	public Integer getBuildid() {
		return buildid;
	}
	public void setBuildid(Integer buildid) {
		this.buildid = buildid;
	}
	public String getEmployeetel() {
		return employeetel;
	}
	public void setEmployeetel(String employeetel) {
		this.employeetel = employeetel;
	}
	public String getEmployeeadd() {
		return employeeadd;
	}
	public void setEmployeeadd(String employeeadd) {
		this.employeeadd = employeeadd;
	}
	public String getEmployeetype() {
		return employeetype;
	}
	public void setEmployeetype(String employeetype) {
		this.employeetype = employeetype;
	}
	
}
