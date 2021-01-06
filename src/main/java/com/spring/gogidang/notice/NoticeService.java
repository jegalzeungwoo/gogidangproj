package com.spring.gogidang.notice;

import java.util.HashMap;
import java.util.List;

import com.spring.gogidang.qna.QnaVO;





public interface NoticeService {
	
	public int getListCount(); // 글 개수 구하기 
	public List<NoticeVO> getNoticeList(HashMap<String, Integer> hashmap); // 글 목록 보기
	public int noticeInsert(NoticeVO notice);
	public NoticeVO getDetail(int notice_num);
	public int noticeModify(NoticeVO notice);
	public NoticeVO noticeModifyForm(int notice_num);
	public int noticeDelete(HashMap<String, String> hashmap);
	
	


}
