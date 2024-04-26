package com.DAO;

import java.util.List;

import com.entity.Watch_Order;

public interface WatchOrder {
	
    public int getOrderNo();
    public boolean saveOrder(Watch_Order b);
	boolean saveOrder(List<Watch_Order> blist);
	public List<Watch_Order> getwatch(String email);
	public List<Watch_Order> getAllOrder();
	

}
