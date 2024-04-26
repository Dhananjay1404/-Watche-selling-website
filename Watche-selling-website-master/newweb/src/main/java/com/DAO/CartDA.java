package com.DAO;

import java.util.List;

import com.entity.Cart;
import com.entity.WatchBtls;

public interface CartDA {
	public boolean addCart(Cart c);
	public List<Cart> getWatchByUser(int userId);
    public boolean deletewatch(int wid,int uid);
}
