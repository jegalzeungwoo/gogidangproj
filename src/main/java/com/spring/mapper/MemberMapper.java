package com.spring.mapper;

import java.util.ArrayList;

import com.spring.gogidang.event.EventVO;
import com.spring.gogidang.member.*;
import com.spring.gogidang.review.ReviewVO;
import com.spring.gogidang.store.StoreVO;

public interface MemberMapper {
  
	MemberVO selectMember(MemberVO member);
	int insertMember(MemberVO member);
	int updateMember(MemberVO member);
	public ArrayList<EventVO> getEvents();
	public ArrayList<StoreVO> getStores();
	public ArrayList<ReviewVO> getReviews();
}
