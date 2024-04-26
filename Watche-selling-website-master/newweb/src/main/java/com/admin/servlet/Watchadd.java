package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

//import org.apache.tomcat.jni.File;

import com.DAO.WatchDAoImpl;
import com.DB.Dbconnect1;
import com.entity.WatchBtls;
//import com.mysql.cj.Session;
@WebServlet("/add_books")
@MultipartConfig
public class Watchadd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String watchname=req.getParameter("wname");
			String modelname=req.getParameter("mname");
		    Double price=Double.parseDouble(req.getParameter("price"));
		    String categories=req.getParameter("btype");
		    String status=req.getParameter("status");
		 //   int stock=Integer.parseInt(req.getParameter("stock"));;
		    Part part=req.getPart("bimg");
		    String filename=part.getSubmittedFileName();
		    
		    WatchBtls b= new WatchBtls(watchname,modelname,price,categories,status,filename); 
		    
		    WatchDAoImpl dao= new WatchDAoImpl(Dbconnect1.getConn());
		    HttpSession session=req.getSession();
		  
		    boolean f=dao.addwatches(b);
		    if(f)
		    {
		    	
		    	session.setAttribute("failedMsg","Went wrong try again");
				resp.sendRedirect("admin/add_books.jsp");
		    }else
		    {
		    	 String path= getServletContext().getRealPath("")+"watchimg";
				   File f1=new File("");
				   part.write(path + java.io.File.separator+filename);
				    System.out.println(path);
		    	session.setAttribute("succMsg","Watches added Successfully ");
				resp.sendRedirect("admin/add_books.jsp");
		    }
		    
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
