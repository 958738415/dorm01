package org.xinke.dao;

import java.util.List;

import org.xinke.entity.Dorm;

public interface DormDao {
	/**
	 * 查询dorm宿舍全部
	 * @return List
	 */
	List<Dorm> findAll();
	/**
	 * 根据dormid查询
	 * @param dormid 宿舍号
	 * @return
	 */
	List<Dorm> findById(int dormid);
	/**
	 * 添加dorm
	 * @param dorm 宿舍对象
	 * @return int
	 */
	int addDorm(Dorm dorm);
	/**
	 * dorm宿舍修改
	 * @param dorm 宿舍对象
	 * @return int
	 */
	int updateDorm(Dorm dorm);
	/**
	 * 通过dormid 删除dorm宿舍
	 * @param dormid 主键
	 * @return int
	 */
	int delete(int dormid);
	/**
	 * 修改实住人数
	 * @param dormid
	 * @return
	 */
	int updateNum(int dormid);
}
