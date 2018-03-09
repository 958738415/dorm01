package org.xinke.dao;

import java.util.List;

import org.xinke.entity.Build;

public interface BuildDao {
	/**
	 * 查询Build的全部
	 * @return
	 */
	List<Build> findAll();
	/**
	 * 通过id查询Build的全部
	 * @param id 主键
	 * @return
	 */
	List<Build> findById(int id);
	/**
	 * 通过build添加一条记录
	 * @param build 对象
	 * @return
	 */
	int addBuild(Build build);
	/**
	 * 通过build对象来修改
	 * @param build
	 * @return
	 */
	int update(Build build);
	/**
	 * 通过buildid来删除build记录
	 * @param buildId
	 * @return
	 */
	int delete(int buildId);
}
