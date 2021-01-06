package com.spring.mapper;

import java.util.ArrayList;

import com.spring.gogidang.likestore.LikeStoreVO;

public interface LikeStoreMapper {
   public ArrayList<LikeStoreVO>getLikeStores(String id);

}