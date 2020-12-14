package com.cruds.db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cruds.date.Dateutil;
import com.cruds.entity.Orderitem;
import com.cruds.entity.Product;


public class OrderListDAO {

	public boolean finalorder(List<Product> list,Orderitem o )
	{
		System.out.println(list);
		System.out.println("Order list " + o);
		
		int rows=0;
		int rows2 = 0;
		int orderid = 0;
		

		String sql="insert into orders(email,Order_date,status,grandtotal)values(?,?,?,?)";
		String sqladd="insert into orderitem(order_id,itemname,itemprice,itemquantity,itemimage) values(?,?,?,?,?)";

		try(Connection conn=DBConnectionManager.getConnection())
		{

			PreparedStatement ps=conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

			ps.setString(1,o.getEmail());
			ps.setDate(2,Dateutil.getSQLDate(o.getOrder_date()));
			ps.setString(3,o.getStatus());
			ps.setString(4,o.getTotal());
			rows=ps.executeUpdate();


			try(ResultSet rs=ps.getGeneratedKeys())
			{
				if(rs!=null&&rs.next())
				{
					orderid=rs.getInt(1);
					
				}
			}

			for(Product pp:list)
			{
				ps=conn.prepareStatement(sqladd);
				ps.setInt(1,orderid);
				ps.setString(2,pp.getItemname());
				ps.setString(3, pp.getItemprice());
				ps.setString(4,pp.getQty());
				ps.setString(5,pp.getImage());
				
				
				rows2=ps.executeUpdate();

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rows>0 && rows2>0 ;

	}

	public List<Orderitem> orders(String email)
	{
		Orderitem o=null;
		List<Orderitem> list=new ArrayList<Orderitem>();
		String sql="select o.Order_id,a.itemprice,a.itemquantity,a.itemname,o.status,o.Order_date,a.itemimage from orders o,orderitem a where email=? and o.Order_id=a.order_id";

		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while( rs.next())
			{
				o=new Orderitem(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getDate(6),rs.getString(7));
				System.out.println("orderssssssssssss"+o);
				list.add(o);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
	public Orderitem fetchorderid(String email)
	{
		String sql="select Order_id from orders where email=?";
		Orderitem o=null;
		try(Connection conn=DBConnectionManager.getConnection())
		{
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs!=null& rs.next())
			{
				o=new Orderitem(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return o;
	}
}
