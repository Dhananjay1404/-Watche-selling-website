
package com.DAO;

import java.sql.Connection;
import java.util.List;

import com.entity.WatchBtls;

public interface WatchDAO {
	
	public boolean addwatches(WatchBtls b);
	public List<WatchBtls> getAllWatches();
	public WatchBtls getWatchById(int Id);
	public boolean updatewatches(WatchBtls b);
    public boolean deleteWatches(int id);
    public List<WatchBtls> getRolexWatch();
    public List<WatchBtls> getallRolexWatch();
    public List<WatchBtls> getFireboltWatch();
    public List<WatchBtls> getallFireboltWatch();
    public List<WatchBtls> getOmega();
    public List<WatchBtls> getallOmega();
    public List<WatchBtls> getWatchBySearch(String ch);
}
