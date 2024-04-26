package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Watch_Order;

public class WatchOrderImpl implements WatchOrder {

	private Connection conn;
	
	@Override
	public int getOrderNo() {
		int i=1;
		try {
			
			String sql="select * from orderhistory";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				i++;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return i;
		
	}

	public WatchOrderImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	
	public boolean saveOrder(List<Watch_Order> blist) {
		boolean f=false;
		try {
			
			String sql="insert into orderhistory(order_id,user_name,email,address,phone,watch_name,model,price,payment)values(?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement(sql);
			for(Watch_Order b:blist)
			{
				ps.setString(1,b.getOrderId());
				ps.setString(2,b.getUsername());
				ps.setString(3,b.getEmail());
				ps.setString(4,b.getFulladd());
				ps.setString(5,b.getPhno());
				ps.setString(6,b.getWatchName());
				ps.setString(7,b.getModel());
				ps.setString(8,b.getPrice());
				ps.setString(9,b.getPaymentType());
				ps.addBatch();
			}
			int[] count=ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
		} catch (Exception e) {
		
		}
			return false;
	}

	@Override
	public boolean saveOrder(Watch_Order b) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Watch_Order> getwatch(String email) {
		List<Watch_Order>list= new ArrayList<Watch_Order>();
		Watch_Order o=null;
		try {
			String sql="select *from orderhistory where email=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				o=new Watch_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setWatchName(rs.getString(7));
				o.setModel(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				list.add(o);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Watch_Order> getAllOrder() {
		List<Watch_Order>list= new ArrayList<Watch_Order>();
		Watch_Order o=null;
		try {
			String sql="select *from orderhistory ";
			PreparedStatement ps=conn.prepareStatement(sql);
	
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				o=new Watch_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setWatchName(rs.getString(7));
				o.setModel(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				list.add(o);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	
}

	



	
