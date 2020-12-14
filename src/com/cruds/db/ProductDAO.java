package com.cruds.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cruds.entity.Product;

public class ProductDAO {

	public List<Product> getall( String itemid) {
		String sql="select  itemid,itemimage,itemname,itemprize from product where itemid=?";
		List<Product> list=new ArrayList<Product>();
		Product p=null;
		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,itemid);
			
			ResultSet rs=ps.executeQuery();
			if(rs!=null&&rs.next())
			{
				p=new Product(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
				list.add(p);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return  list;
	}
	
	
	
}
