package com.spring.gogidang.member;

import java.util.ArrayList;

import com.spring.gogidang.event.EventVO;
import com.spring.gogidang.review.ReviewVO;
import com.spring.gogidang.store.StoreVO;

public interface MemberService {
	
	public MemberVO selectMember(MemberVO memberVO);
	public int insertMember(MemberVO memberVO);
	public int updateMember(MemberVO memberVO);
	public ArrayList<EventVO> getEventList();
	public ArrayList<StoreVO> getStoreList();
	public ArrayList<ReviewVO> getReviewList();
}
