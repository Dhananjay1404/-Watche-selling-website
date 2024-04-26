package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.WatchDAoImpl;
import com.DB.Dbconnect1;
import com.entity.WatchBtls;

@WebServlet("/EditWatchServlet")
public class EditWatchServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String watchname=req.getParameter("wname");
			String modelname=req.getParameter("mname");
		    Double price=Double.parseDouble(req.getParameter("price"));
		     String status=req.getParameter("status");
		    // int stock=Integer.parseInt(req.getParameter("stock"));
		     
		     
		   WatchBtls b= new WatchBtls() ;
		   b.setWatchId(id);
		   b.setWatchName(watchname);
		   b.setModel(modelname);
		   b.setPrice(price);
		   b.setStatus(status);
		  // b.setStock(stock);
		   
		   WatchDAoImpl dao= new WatchDAoImpl(Dbconnect1.getConn());
		    boolean f=dao.updatewatches(b);
		    HttpSession session=req.getSession();
		   
		    		if(f)
		    		{
		    		//	session.setAttribute("succMsg","Watch Updated Successfully");
		    		//	resp.sendRedirect("../admin/all_watches.jsp");
   		        	session.setAttribute("succMsg","Updated sucessfully");
          			resp.sendRedirect("admin/all_watches.jsp");
		    		}else
		    		{
	    			session.setAttribute("failedMsg","Not Updated");
	    			resp.sendRedirect("admin/all_watches.jsp");
		    		}
			
		} catch (Exception e) {
		   e.printStackTrace();
		}
	}

}
