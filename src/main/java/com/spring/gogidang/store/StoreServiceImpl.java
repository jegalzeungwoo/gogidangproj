package com.spring.gogidang.store;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.StoreMapper;

@Service("storeService") // ("storeService")soobin code
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<StoreVO> getStoreList() {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		ArrayList<StoreVO> storeList = new ArrayList<StoreVO>();
		storeList = storeMapper.getStoreList();
		
		return storeList;
	}

	@Override
	public int confirmStore(StoreVO storeVO) {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		int res = storeMapper.confirmStore(storeVO);
		
		return res;
	}

	@Override
	public int refuseStore(StoreVO storeVO) {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		int res = storeMapper.refuseStore(storeVO);
		
		return res;
	}

	@Override
	public StoreVO storeInfo(StoreVO storeVO) {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		StoreVO vo = storeMapper.storeInfo(storeVO);
		
		return vo;
	}


	@Override
	public int checkStore(StoreVO storeVO) {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		int res = storeMapper.checkStore(storeVO);
		
		return res;
	}

	@Override
	   public int insertStore(StoreVO storeVO) {
	      
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
	      
	      int res = storeMapper.insertStore(storeVO);
	      System.out.println("res="+res);
	      return res;
	   }
	
	@Override
	   public StoreVO selectStore(StoreVO storeVO) {
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
		StoreVO store = storeMapper.selectStore(storeVO);
	      
	      return store;
	   }
	
	@Override
	   public int updateStore(StoreVO storeVO) {
	      
		StoreMapper storeMapper = sqlSession.getMapper(StoreMapper.class);
	      
	      int res = storeMapper.updateStore(storeVO);
	      System.out.println("res="+res);
	      return res;
	   }

}
