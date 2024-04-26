package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.WatchBtls;

public class WatchDAoImpl implements WatchDAO {
	 private Connection conn;
		
		public WatchDAoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

		public boolean addwatches(WatchBtls b)
		{boolean f=false;
			try {
				
		String sql="insert into watches(WatchName,ModelName,Price,WatchCategory,Status,Photo) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getWatchName());
			ps.setString(2, b.getModel());
			ps.setDouble(3, b.getPrice());
			ps.setString(4,b.getWatchCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			//ps.setInt(7, b.getStock());
			int i=ps.executeUpdate();
		if(i>1)
		{
			
			f=true;
			
			
			
		}
		
		
		
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}

		@Override
		public List<WatchBtls> getAllWatches() {
			List<WatchBtls> list=new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				
				String sql="select * from watches";
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while (rs.next()) {
					
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					//b.setStock(rs.getInt(8));
					list.add(b);
					
				}
				
				
			} catch (Exception e) {
		
			}
			
			
			
			
			return list;
		}

		@Override
		public WatchBtls getWatchById(int Id) {
			WatchBtls b=null;
			try {
				
				String sql="select * from watches where WatchId=?";
				PreparedStatement ps= conn.prepareStatement(sql);
				ps.setInt(1, Id);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					//b.setStock(rs.getInt(8));
				}
				
			} catch (Exception e) {
			   e.printStackTrace();
			}
			return b;
		}

		@Override
		public boolean updatewatches(WatchBtls b) {
			  boolean f=false;
			  try {
				  String sql="update watches set WatchName=?,ModelName=?,Price=?,Status=? where WatchId=?";
				  PreparedStatement ps=conn.prepareStatement(sql);
				  ps.setString(1,b.getWatchName());
				  ps.setString(2,b.getModel());
				  ps.setDouble(3,b.getPrice());
				  ps.setString(4,b.getStatus());
				 // ps.setInt(5,b.getStock());
				  ps.setInt(5,b.getWatchId());
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
		public boolean deleteWatches(int id) {
			boolean f=false;
			try {
				
				String sql="delete from watches where WatchId=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, id);
				int i=ps.executeUpdate();
				if(i>1)
				{
					f=true;
				}
				
			} catch (Exception e) {
			  e.printStackTrace();
			}
			return false;
		}

		@Override
		public List<WatchBtls> getRolexWatch() {
			
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Rolex");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				int i=1;
				while(rs.next() && i<=4)
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
					i++;
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getallRolexWatch() {
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=? order by WatchId DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Rolex");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
	
				while(rs.next())
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
				
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getFireboltWatch() {
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Firebolt");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				int i=1;
				while(rs.next() && i<=4)
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
					i++;
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getallFireboltWatch() {
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=? order by WatchId DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Firebolt");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
	
				while(rs.next())
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
				
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getWatchBySearch(String ch) {
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchName like ? or ModelName like? or WatchCategory like ? and Status=?" ;
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"%"+ch+"%");
				ps.setString(2,"%"+ch+"%");
				ps.setString(3,"%"+ch+"%");
				ps.setString(4,"Active");


				ResultSet rs=ps.executeQuery();
	
				while(rs.next())
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
				
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getOmega() {
			
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Omega");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
				int i=1;
				while(rs.next() && i<=4)
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
					i++;
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

		@Override
		public List<WatchBtls> getallOmega() {
			List<WatchBtls>list= new ArrayList<WatchBtls>();
			WatchBtls b=null;
			try {
				String sql="select * from watches where WatchCategory=? and Status=? order by WatchId DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,"Omega");
				ps.setString(2, "Active");
				ResultSet rs=ps.executeQuery();
	
				while(rs.next())
				{
					b=new WatchBtls();
					b.setWatchId(rs.getInt(1));
					b.setWatchName(rs.getString(2));
					b.setModel(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setWatchCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setPhotoName(rs.getString(7));
					list.add(b);
				
				}
			} catch (Exception e) {
		   e.printStackTrace();
			}
			return list;
		}

			
			

}
