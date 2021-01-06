package com.spring.gogidang.booking;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.gogidang.member.MemberVO;



@Controller
public class BookingController {
   
   @Autowired
   public BookingService bookingService;
   
   @RequestMapping("/bookinglist.bo")
   public String getBookinglist(MemberVO memberVO, Model model)throws Exception{
      String u_id = memberVO.getU_id();
      ArrayList<BookingVO>booking_list = bookingService.getBookingList(u_id);
      model.addAttribute("booking_list",booking_list);
      
      return "mypage/booking_list";
      }
   
   @RequestMapping("/booking.bo")
   public String insertBooking(BookingVO bookingVO, HttpServletResponse response) throws Exception{
      int res = bookingService.insertBooking(bookingVO);
      
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=utf-8");
      PrintWriter writer = response.getWriter();
      if(res != 0)
      {
            writer.write("<script>alert('예약이완료되었습니다');"
         +"location.href='./shoplist.sh';</script>");
      }
      else
      {
            writer.write("<script>alert('예약에 실패하였습니다.');"
         +"location.href='./shoplist.sh';</script>");
      }
      return null;
      }
   
   @RequestMapping("/bookingform.bo")
   public String bookingForm() throws Exception{
      
      return "bookingForm";
   }
   @RequestMapping("/bookingcancel.bo")
   public String cancelBooking(@RequestParam(value="booking_num", required=true)int num,HttpSession session,HttpServletResponse response)throws Exception{
      String id = (String)session.getAttribute("id");
      
      HashMap<String,String> hashmap = new HashMap<String,String>();
      hashmap.put("booking_num", Integer.toString(num));
      hashmap.put("u_id", id);
      int res= bookingService.cancelBooking(hashmap);
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=utf-8");
      PrintWriter writer = response.getWriter();
      if(res==1)
      {
         writer.write("<script>alert('�삁�빟�씠痍⑥냼�릺�뿀�뒿�땲�떎');"
               +"location.href='./main.me';</script>");
      }
      else
      {
         writer.write("<script>alert('�삁�빟 痍⑥냼瑜� �떎�뙣�븯���뒿�땲�떎');"
               +"location.href='./bookingllist.bo';</script>");
      }
      return null;
   }
}   

