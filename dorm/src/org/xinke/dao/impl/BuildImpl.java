package org.xinke.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.xinke.dao.BuildDao;
import org.xinke.entity.Build;
import org.xinke.util.DBPoolConnection;

public class BuildImpl implements BuildDao {
	//获取连接
	DBPoolConnection db = DBPoolConnection.getInstance();
	/**
	 * 直接查询全部
	 */
	@Override
	public List<Build> findAll() {
		ResultSet rs = null;
		Build build = null;
		List<Build> list = new ArrayList<Build>();
		String sql = "select * from build";
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				build = new Build();
				build.setBuild(rs.getInt("build"));
				build.setBuildnum(rs.getInt("roomnum"));
				build.setFloor(rs.getInt("floor"));
				build.setBuildnum(rs.getInt("buildnum"));
				build.setBuildrealnum(rs.getInt("buildrealnum"));
				build.setBuildremark(rs.getString("buildremark"));
				build.setWardenid(rs.getInt("wardenid"));
				list.add(build);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}
	/**
	 * 通过id查询
	 */
	@Override
	public List<Build> findById(int id) {
		List<Build> list = new ArrayList<>();
		ResultSet rs = null;
		Build build = null;
		String sql = "select * from build where build = ?";
		rs = db.executeSelect(sql, id);
		try {
			while(rs.next()) {
				build = new Build();
				build.setBuild(rs.getInt("build"));
				build.setBuildnum(rs.getInt("roomnum"));
				build.setFloor(rs.getInt("floor"));
				build.setBuildnum(rs.getInt("buildnum"));
				build.setBuildrealnum(rs.getInt("buildrealnum"));
				build.setBuildremark(rs.getString("buildremark"));
				build.setWardenid(rs.getInt("wardenid"));
				list.add(build);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}
	/**
	 * 添加build
	 */
	@Override
	public int addBuild(Build build) {
		int num = 0;
		try {
			String sql = "insert into build(build,floor,roomnum,buildnum,buildrealnum,builremark,wardenid) values(?,?,?,?,?,?,?)";
			num = db.executeUpdate(sql, build.getBuild(),build.getFloor(),build.getRoomnum(),build.getBuildnum(),build.getBuildrealnum(),build.getBuildremark(),build.getWardenid());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}
	/**
	 * 修改build
	 */
	@Override
	public int update(Build build) {
		int num = 0;
		try {
			String sql = "update build set floor=?,roomnum=?,buildnum=?,buildrealnum=?,buildremark=? where build =?";
			num = db.executeUpdate(sql, build.getFloor(),build.getRoomnum(),build.getBuildnum(),build.getBuildrealnum(),build.getBuildremark(),build.getBuild());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}
	/**
	 * 通过id删除
	 */
	@Override
	public int delete(int buildId) {
		int num = 0;
		try {
			String sql = "delete from build where build = ?";
			num = db.executeUpdate(sql, buildId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

}
