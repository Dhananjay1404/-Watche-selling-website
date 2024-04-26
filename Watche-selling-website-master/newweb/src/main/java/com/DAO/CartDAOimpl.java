package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DB.Dbconnect1;
import com.entity.Cart;
import com.entity.WatchBtls;

public class CartDAOimpl  implements CartDA{
	private Connection conn;
	public CartDAOimpl(Connection conn)
	{
		this.conn=conn;
		
	}
	

	@Override
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			String sql="insert into cart(wid,uid,Watcname,model,price,total_price)values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,c.getWid());
			ps.setInt(2,c.getUserId() );
			ps.setString(3,c.getWatcname());
			ps.setString(4,c.getModel());
			ps.setDouble(5,c.getPrice());
			ps.setDouble(6,c.getTotalPrice());
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
		} catch (Exception e) {
		  e.printStackTrace();
		}
		return f;
	}


	@Override
	public List<Cart> getWatchByUser(int userId) {
		List<Cart> list=new ArrayList<Cart>();
	   Cart  c=null;
		double totalPrice=0;
		try {
			String sql="select *from cart where uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
		   ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			c=new Cart();
			c.setCid(rs.getInt(1));
			c.setWid(rs.getInt(2));
			c.setUserId(rs.getInt(3));
			c.setWatcname(rs.getString(4));
			c.setModel(rs.getString(5));
			c.setPrice(rs.getDouble(6));
			totalPrice=totalPrice+rs.getDouble(7);
			c.setTotalPrice(totalPrice);
			list.add(c);
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public boolean deletewatch(int wid,int uid) {
		// TODO Auto-generated method stub
		boolean f=false;
		
		try {
			String sql="delete from cart where wid=? and uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, wid);
			ps.setInt(2, uid);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return f;
	}
	

}
