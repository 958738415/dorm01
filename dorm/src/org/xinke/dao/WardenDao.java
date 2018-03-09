package org.xinke.dao;

import java.util.List;

import org.xinke.entity.Warden;

public interface WardenDao {
	/**
	 * 查询Warden的全部
	 * @return
	 */
	List<Warden> findAll();
	/**
	 * 通过id查询Warden的全部
	 * @param id 主键
	 * @return
	 */
	List<Warden> findById(int id);
	/**
	 * 通过Warden添加一条记录
	 * @param warden 对象
	 * @return
	 */
	int addWarden(Warden warden);
	/**
	 * 通过warden对象来修改
	 * @param warden
	 * @return
	 */
	int update(Warden warden);
	/**
	 * 通过名称修改密码
	 * @param userName 用户名
	 * @return
	 */
	int updateByName(String userName,String newPwd);
	/**
	 * 通过wardenid来删除warden记录
	 * @param wardenId
	 * @return
	 */
	int delete(int wardenId);
	/**
	 * 通过手机号查询是否存在
	 * @param phone
	 * @return
	 */
}
