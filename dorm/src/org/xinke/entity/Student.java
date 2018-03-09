package org.xinke.entity;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */
public class Student  implements java.io.Serializable {
	private int id;
	private String name;
	private int age;
	private String sex;
	private String school;
	private String major;
	private int buildid;
	private int dormid;
	private String phone;
	private String address;
	private String teacher;
	private String hometel;
	private String familycontact;
	private String teacherphone;
	private String status;
	
	public Student() {
		super();
	}
	/** full constructor */
	public Student(String name, int age, String sex, String school,
			String major, int buildid, int dormid, String phone,
			String address, String teacher, String hometel,
			String familycontact, String teacherphone,String status) {
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.school = school;
		this.major = major;
		this.buildid = buildid;
		this.dormid = dormid;
		this.phone = phone;
		this.address = address;
		this.teacher = teacher;
		this.hometel = hometel;
		this.familycontact = familycontact;
		this.teacherphone = teacherphone;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getHometel() {
		return hometel;
	}
	public void setHometel(String hometel) {
		this.hometel = hometel;
	}
	public String getFamilycontact() {
		return familycontact;
	}
	public void setFamilycontact(String familycontact) {
		this.familycontact = familycontact;
	}
	public String getTeacherphone() {
		return teacherphone;
	}
	public void setTeacherphone(String teacherphone) {
		this.teacherphone = teacherphone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
