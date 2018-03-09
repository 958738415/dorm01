package org.xinke.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.xinke.dao.WardenDao;
import org.xinke.entity.Warden;
import org.xinke.util.DBPoolConnection;

public class WardenImpl implements WardenDao{
	//获取连接
	DBPoolConnection db = DBPoolConnection.getInstance();
	@Override
	public List<Warden> findAll() {
		ResultSet rs = null;
		Warden warden = null;
		List<Warden> list = new ArrayList<>();
		String sql = "select * from warden";
		rs = db.executeSelect(sql);
		try {
			while(rs.next()) {
				warden = new Warden();
				warden.setWardenid(rs.getInt("wardenid"));
				warden.setWardenadmin(rs.getString("wardenadmin"));
				warden.setWardenpwd(rs.getString("wardenpwd"));
				warden.setWardensex(rs.getString("wardensex"));
				warden.setWardentel(rs.getString("wardentel"));
				warden.setWardenuser(rs.getString("wardenuser"));
				list.add(warden);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public List<Warden> findById(int id) {
		ResultSet rs = null;
		Warden warden = null;
		List<Warden> list = new ArrayList<>();
		String sql = "select * from warden where wardenid = ?";
		rs = db.executeSelect(sql,id);
		try {
			while(rs.next()) {
				warden = new Warden();
				warden.setWardenid(rs.getInt("wardenid"));
				warden.setWardenadmin(rs.getString("wardenadmin"));
				warden.setWardenpwd(rs.getString("wardenpwd"));
				warden.setWardensex(rs.getString("wardensex"));
				warden.setWardentel(rs.getString("wardentel"));
				warden.setWardenuser(rs.getString("wardenuser"));
				list.add(warden);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	} 
	
	@Override
	public int addWarden(Warden warden) {
		int num = 0;
		try {
			String sql = "insert into warden(wardenadmin,wardenpwd,wardensex,wardentel,wardenuser) values(?,?,?,?,?)";
			num = db.executeUpdate(sql, warden.getWardenadmin(),warden.getWardenpwd(),warden.getWardensex(),warden.getWardentel(),warden.getWardenuser());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
		
	}
	
	@Override
	public int update(Warden warden) {
		int num = 0;
		try {
			String sql = "update warden set wardenadmin=?,wardenpwd=?,wardensex=?,wardentel=?,wardenuser=? where wardenid =?";
			num = db.executeUpdate(sql, warden.getWardenadmin(),warden.getWardenpwd(),warden.getWardensex(),warden.getWardentel(),warden.getWardenuser(),warden.getWardenid());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}
	
	@Override
	public int delete(int wardenId) {
		int num = 0;
		try {
			String sql = "delete from warden where wardenid = ?";
			num = db.executeUpdate(sql, wardenId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}
	@Override
	public int updateByName(String userName,String newPwd) {
		int num = 0;
		try {
			String sql = "update warden set wardenpwd=? where wardenuser =?";
			num = db.executeUpdate(sql, newPwd,userName);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return num;
	}

}
