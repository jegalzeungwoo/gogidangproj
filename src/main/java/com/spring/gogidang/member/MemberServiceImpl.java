package com.spring.gogidang.member;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gogidang.event.EventVO;
import com.spring.gogidang.review.ReviewVO;
import com.spring.gogidang.store.StoreVO;
import com.spring.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO member = memberMapper.selectMember(memberVO);
      
		return member;
   }
	
	@Override
	public int insertMember(MemberVO memberVO) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.insertMember(memberVO);
		
		return res;
	}
	
	@Override
	public int updateMember(MemberVO memberVO) {
		      
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		      
		int res = memberMapper.updateMember(memberVO);
		return res;
	}
	
	@Override
	public ArrayList<EventVO> getEventList() {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<EventVO> eventList = new ArrayList<EventVO>();
		eventList = memberMapper.getEvents();
		
		return eventList;
	}
	
	@Override
	public ArrayList<StoreVO> getStoreList() {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<StoreVO> storeList = new ArrayList<StoreVO>();
		storeList = memberMapper.getStores();
		
		return storeList;
	}
	
	@Override
	public ArrayList<ReviewVO> getReviewList() {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		reviewList = memberMapper.getReviews();
		
		return reviewList;
	}

}
