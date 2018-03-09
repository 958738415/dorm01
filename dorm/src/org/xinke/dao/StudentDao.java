package org.xinke.dao;

import java.util.List;

import org.xinke.entity.Student;

public interface StudentDao {
	/**
	 * 查询Student全部
	 * @return
	 */
	List<Student> findAll();
	/**
	 * 通过SQL语句执行查询
	 * @param sql
	 * @return
	 */
	List<Student> findAllBySql(String sql);
	/**
	 * 模糊查询出表中的相关信息
	 * @param obj
	 * @return
	 */
	List<Student> findAllLike(String obj);
	/**
	 * 添加student
	 * @param student 学生对象
	 * @return
	 */
	int addStudent(Student student);
	/**
	 * 修改Student信息
	 * @param student
	 * @return
	 */
	int update(Student student);
	/**
	 * 删除Student(修改状态)
	 * @param student
	 * @return
	 */
	int delete(int id);
}
