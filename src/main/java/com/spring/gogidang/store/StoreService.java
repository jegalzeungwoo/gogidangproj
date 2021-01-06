package com.spring.gogidang.store;

import java.util.ArrayList;

public interface StoreService {
	public ArrayList<StoreVO> getStoreList();
	public int confirmStore(StoreVO storeVO);
	public int refuseStore(StoreVO storeVO);
	public StoreVO storeInfo(StoreVO storeVO);
	public int checkStore(StoreVO storeVO);
	public int insertStore(StoreVO storeVO); 
	public StoreVO selectStore(StoreVO storeVO);
	public int updateStore(StoreVO storeVO); 
}
