package com.spring.gogidang.likestore;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.gogidang.member.MemberVO;

@Controller
public class LikeStoreController {
   
   @Autowired
   public LikeStoreService likestoreservice;
   
   @RequestMapping("/likestorelist.li")
   public String getLikeStore(MemberVO memberVO,Model model)throws Exception{
      String id = memberVO.getU_id();
      ArrayList<LikeStoreVO>likestore_list = likestoreservice.getLikeStore(id);
      model.addAttribute("likestore_list",likestore_list);
      
      return "mypage/likestore_list";
   }
}