package com.cruds.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cruds.classes.User;

public class UserDAO {

	public Boolean Insert(User u)
	{
		String sql="insert into user(name,password,email) values(?,?,?)";
		int rows=0;
		
		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			rows=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rows>0;
		
	}
	
	public Boolean Login(User u)
	{
		String sql="select 1 from user where email=? and password=?";
		
		boolean found=false;
		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs!=null && rs.next())
			{
				found=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return found;
		
	}
	
	public User getname(String email)
	{
		String sql="select name from user where email=?";
		User u=null;
		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs!=null && rs.next())
			{
				u=new User(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

}
