package com.spring.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.gogidang.booking.BookingVO;



public interface BookingMapper {
   public ArrayList<BookingVO>getBookings(String id);
   public int insertBooking(BookingVO bookingVO);
   public int cancelBooking(int booking_num);
   public int customerBooking(HashMap<String,String>hashmap);

}