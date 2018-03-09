package org.xinke.util;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.DruidPooledConnection;

/**
 * 数据库操作工具类
 * @author 第四组：杨琰闯、范升恺、孔蕾、万俊豪
 * @date 2017年8月23日下午1:06:54
 */
public class DBPoolConnection {
	
	protected  DruidPooledConnection conn;			//数据库连接
	protected  PreparedStatement ps ;	//预编译sql语句
	protected  ResultSet rs;				//结果集
	
    private static DBPoolConnection dbPoolConnection = null;	//连接池对象
    private static DruidDataSource druidDataSource = null;		//数据源
    /**
     * 获取数据源
     * 用于dbUtil等工具包。
     * @return
     */
    public static DruidDataSource getDruidDataSource() {
		return druidDataSource;
	}
    /**
     * 静态代码块加载配置信息，创建德鲁伊数据源
     */
	static {
    	Properties properties=new Properties();
    	try {
    		InputStream is =DBPoolConnection.class.getClassLoader().getResourceAsStream("db_server.properties");
    		properties.load(is);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
        try {
        	//传入配置文件信息，创建数据源
            druidDataSource = (DruidDataSource)DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    /**
     * 单例模式创建数据库连接池
     * @return	数据库连接池实例对象
     */
    public static synchronized DBPoolConnection getInstance(){
        if (null == dbPoolConnection){
            dbPoolConnection = new DBPoolConnection();
        }
        return dbPoolConnection;
    }

    /**
     * 获取druid数据库连接方法
     * 
     * @return
     * @throws SQLException
     */
    public DruidPooledConnection getCoon(){
    	try {
			return druidDataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
    }
    /**
     * 通用更新操作
     * @param sql	sql语句
     * @param params	参数
     * @return	>0  成功，<=0  失败
     */
  	public int  executeUpdate(String sql,Object...params) {
  		int num = 0;
  		conn = getCoon();
  		try {
  			ps = conn.prepareStatement(sql);
  			for (int i = 0; i < params.length; i++) {
  				if(params[i] instanceof java.util.Date){
  					ps.setDate(i+1, new java.sql.Date(((java.util.Date)params[i]).getTime()));
  				}else{
  					ps.setObject(i+1, params[i]);
  				}
  			}
  			num = ps.executeUpdate();
  		} catch (SQLException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
  		return num;
  		
  	}

  	/**
  	 * 通用查询操作
  	 * @param sql	sql语句
  	 * @param params	参数
  	 * @return	rs查询结果集
  	 */
  	public ResultSet executeSelect(String sql,Object...params) {
  		conn = getCoon();
  		 try {
  			ps = conn.prepareStatement(sql);
  			for (int i = 0; i < params.length; i++) {
  				if(params[i] instanceof java.util.Date){
  					ps.setDate(i+1, new java.sql.Date(((java.util.Date)params[i]).getTime()));
  				}else{
  					ps.setObject(i+1, params[i]);
  				}
  			}
  			 rs = ps.executeQuery();
  		} catch (SQLException e) {
  			e.printStackTrace();
  		}
  		return rs;
  	}
  	
  	public  void closeAll(){
  		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				//当关闭连接的时候,就将数据库连接放回连接池中,等待其他操作使用.
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
  	}
 
}