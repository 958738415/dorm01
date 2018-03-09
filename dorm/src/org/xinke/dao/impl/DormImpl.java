package org.xinke.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.xinke.dao.DormDao;
import org.xinke.entity.Dorm;
import org.xinke.util.DBPoolConnection;

public class DormImpl implements DormDao{
	//连接对象db
	DBPoolConnection db = DBPoolConnection.getInstance();
	@Override
	public List<Dorm> findAll() {
		ResultSet rs = null;
		Dorm dorm = null;
		List<Dorm> list = new ArrayList<>();
		String sql = "select * from dorm";
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				dorm = new Dorm();
				dorm.setBuildid(rs.getInt("buildid"));
				dorm.setDormbeds(rs.getInt("dormbeds"));
				dorm.setDormid(rs.getInt("dormid"));
				dorm.setDormnum(rs.getInt("dormnum"));
				dorm.setDormrealnum(rs.getInt("dormrealnum"));
				dorm.setRemark(rs.getString("remark"));
				list.add(dorm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public int addDorm(Dorm dorm) {
		int num =0;
		try {
			String sql = "insert into dorm(buildid,dormbeds,dormnum,dormrealnum,remark) values(?,?,?,?,?)";
			num = db.executeUpdate(sql, dorm.getBuildid(),dorm.getDormbeds(),dorm.getDormnum(),dorm.getDormrealnum(),dorm.getRemark());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public int updateDorm(Dorm dorm) {
		int num = 0;
		try {
			String sql = "update dorm set buildid=?,dormbeds=?,dormnum=?,dormrealnum=?,remark=? where dormid = ?";
			num = db.executeUpdate(sql, dorm.getBuildid(),dorm.getDormbeds(),dorm.getDormnum(),dorm.getDormrealnum(),dorm.getRemark(),dorm.getDormid());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public int delete(int dormid) {
		int num = 0;
		try {
			String sql = "delete from dorm where dormid = ?";
			num = db.executeUpdate(sql, dormid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

	@Override
	public List<Dorm> findById(int dormid) {
		ResultSet rs = null;
		Dorm dorm = null;
		List<Dorm> list = new ArrayList<>();
		String sql = "select * from dorm where  dormid = ?";
		rs = db.executeSelect(sql,dormid);
		try {
			while(rs.next()) {
				dorm = new Dorm();
				dorm.setBuildid(rs.getInt("buildid"));
				dorm.setDormbeds(rs.getInt("dormbeds"));
				dorm.setDormid(rs.getInt("dormid"));
				dorm.setDormnum(rs.getInt("dormnum"));
				dorm.setDormrealnum(rs.getInt("dormrealnum"));
				dorm.setRemark(rs.getString("remark"));
				list.add(dorm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public int updateNum(int dormid) {
		int num = 0;
		try {
			String sql = "update dorm set dormrealnum=0 where dormid = ?";
			num = db.executeUpdate(sql, dormid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

}
