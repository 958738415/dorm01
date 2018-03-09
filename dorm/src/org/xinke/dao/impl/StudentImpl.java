package org.xinke.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.xinke.dao.StudentDao;
import org.xinke.entity.Student;
import org.xinke.util.DBPoolConnection;

public class StudentImpl implements StudentDao{
	//创建连接对象
	DBPoolConnection db = DBPoolConnection.getInstance();
	@Override
	public List<Student> findAll() {
		ResultSet rs = null;
		Student student = null;
		List<Student> list = new ArrayList<>();
		String sql = "select * from student";
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				student = new Student();
				student.setAddress(rs.getString("address"));
				student.setAge(rs.getInt("age"));
				student.setBuildid(rs.getInt("buildid"));
				student.setDormid(rs.getInt("dormid"));
				student.setFamilycontact(rs.getString("familycontact"));
				student.setHometel(rs.getString("hometel"));
				student.setId(rs.getInt("id"));
				student.setMajor(rs.getString("major"));
				student.setName(rs.getString("name"));
				student.setPhone(rs.getString("phone"));
				student.setSchool(rs.getString("school"));
				student.setSex(rs.getString("sex"));
				student.setStatus(rs.getString("status"));
				student.setTeacher(rs.getString("teacher"));
				student.setTeacherphone(rs.getString("teacherphone"));
				list.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public int addStudent(Student student) {
		int num = 0;
		try {
			String sql = "insert into student (address,age,buildid,dormid,familycontact,hometel,major,name,phone,school,sex,status,teacher,teacherphone) values(?,?,?,?,?,?,?,?,?,?,?,1,?,?)";
			num = db.executeUpdate(sql, student.getAddress(),student.getAge(),student.getBuildid(),student.getDormid(),student.getFamilycontact(),student.getHometel(),student.getMajor(),student.getName(),student.getPhone(),student.getSchool(),student.getSex(),student.getTeacher(),student.getTeacherphone());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public int update(Student student) {
		int num = 0;
		try {
			String sql = "update student set address=?,age=?,buildid=?,dormid=?,familycontact=?,hometel=?,major=?,name=?,phone=?,school=?,sex=?,status=1,teacher=?,teacherphone=? where id = ?";
			num = db.executeUpdate(sql, student.getAddress(),student.getAge(),student.getBuildid(),student.getDormid(),student.getFamilycontact(),student.getHometel(),student.getMajor(),student.getName(),student.getPhone(),student.getSchool(),student.getSex(),student.getTeacher(),student.getTeacherphone(),student.getId());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public int delete(int id) {
		int num = 0;
		try {
			String sql = "update student set status=0 where id = ?";
			num = db.executeUpdate(sql,id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public List<Student> findAllBySql(String sql) {
		ResultSet rs = null;
		Student student = null;
		List<Student> list = new ArrayList<>();
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				student = new Student();
				student.setAddress(rs.getString("address"));
				student.setAge(rs.getInt("age"));
				student.setBuildid(rs.getInt("buildid"));
				student.setDormid(rs.getInt("dormid"));
				student.setFamilycontact(rs.getString("familycontact"));
				student.setHometel(rs.getString("hometel"));
				student.setId(rs.getInt("id"));
				student.setMajor(rs.getString("major"));
				student.setName(rs.getString("name"));
				student.setPhone(rs.getString("phone"));
				student.setSchool(rs.getString("school"));
				student.setSex(rs.getString("sex"));
				student.setStatus(rs.getString("status"));
				student.setTeacher(rs.getString("teacher"));
				student.setTeacherphone(rs.getString("teacherphone"));
				list.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public List<Student> findAllLike(String obj) {
		ResultSet rs = null;
		Student student = null;
		List<Student> list = new ArrayList<>();
		String sql = "select * from student where id = '"+obj+"'"+
					 " union select * from student where name like '%"+obj+"%'"+
					 " union select * from student where sex = '"+obj+"'"+
					 " union select * from student where age = '"+obj+"'"+ 
					 " union select * from student where school like '%"+obj+"%'"+
					 " union select * from student where major like '%"+obj+"%'"+ 
					 " union select * from student where buildid = '"+obj+"'"+ 
					 " union select * from student where dormid = '"+obj+"'"+
					 " union select * from student where phone like '%"+obj+"%'"+ 
					 " union select * from student where address like '%"+obj+"%'"+
					 " union select * from student where teacher like '%"+obj+"%'"+ 
					 " union select * from student where hometel like '%"+obj+"%'"+ 
					 " union select * from student where familycontact like '%"+obj+"%'"+
					 " union select * from student where teacherphone like '%"+obj+"%'";
		System.out.println(sql);
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				student = new Student();
				student.setAddress(rs.getString("address"));
				student.setAge(rs.getInt("age"));
				student.setBuildid(rs.getInt("buildid"));
				student.setDormid(rs.getInt("dormid"));
				student.setFamilycontact(rs.getString("familycontact"));
				student.setHometel(rs.getString("hometel"));
				student.setId(rs.getInt("id"));
				student.setMajor(rs.getString("major"));
				student.setName(rs.getString("name"));
				student.setPhone(rs.getString("phone"));
				student.setSchool(rs.getString("school"));
				student.setSex(rs.getString("sex"));
				student.setStatus(rs.getString("status"));
				student.setTeacher(rs.getString("teacher"));
				student.setTeacherphone(rs.getString("teacherphone"));
				list.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

}
