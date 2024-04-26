package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOimpl;
import com.DAO.WatchOrderImpl;
import com.DB.Dbconnect1;
import com.entity.Cart;
import com.entity.WatchBtls;
import com.entity.Watch_Order;
@WebServlet("/order")
public class OrderServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session=req.getSession();
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("username");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pincode=req.getParameter("pincode");
			String paymentType=req.getParameter("paymentype");
			String fullAdd=address+","+landmark+","+city+","+pincode;
			
		//	System.out.println(name+" "+email+" "+phno+" "+fullAdd+" "+paymentType);
			CartDAOimpl dao= new CartDAOimpl(Dbconnect1.getConn());
			List<Cart> blist=dao.getWatchByUser(id);
			
			if(blist.isEmpty())
			{
				session.setAttribute("failedMsg","CART IS EMPTY");
				resp.sendRedirect("checkout.jsp");
			}else
			{
				WatchOrderImpl dao2= new WatchOrderImpl(Dbconnect1.getConn());
				int i=dao2.getOrderNo();
			
				Watch_Order o= new Watch_Order();;
				ArrayList<Watch_Order> olist=new ArrayList<Watch_Order>();
				Random r= new Random();
				for(Cart c:blist)
				{
					//System.out.println(c.getWatcname()+" "+c.getModel()+" "+c.getPrice());
					
					o.setOrderId("ORD_NO-00"+r.nextInt(1000));
					o.setUsername(name);
					o.setEmail(email);
					o.setPhno(phno);
					o.setFulladd(fullAdd);
					o.setWatchName(c.getWatcname());
					o.setModel(c.getModel());
					o.setPrice(c.getPrice()+"");
					o.setPaymentType(paymentType);
					olist.add(o);
					i++;
					
					
					
					
					
				}
				if("noselect".equals(paymentType))
				{
					session.setAttribute("failedMsg","PLEASE CHOOSE PAYMENT MODE");
					resp.sendRedirect("checkout.jsp");
				}else
				{
					boolean f=dao2.saveOrder(olist);
					if(f)
						
					{
					 session.setAttribute("failedMsg","Please try again");
						resp.sendRedirect("checkout.jsp");
					}else
					{
						//System.out.println("Order placed successfully");
						resp.sendRedirect("order_sucess.jsp");
					}
					
				}
				
			}
			
		} catch (Exception e) {
			
		
		}
		
		
		
	}

}
