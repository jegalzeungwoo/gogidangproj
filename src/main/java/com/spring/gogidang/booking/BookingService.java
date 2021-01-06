package com.spring.gogidang.booking;

import java.util.ArrayList;
import java.util.HashMap;

public interface BookingService {
	   public ArrayList<BookingVO>getBookingList(String u_id);
	   public int insertBooking(BookingVO bookingVO);
	   public int cancelBooking(HashMap<String,String> hashmap);
}
