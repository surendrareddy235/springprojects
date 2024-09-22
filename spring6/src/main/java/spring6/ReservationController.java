package spring6;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/Reservation")
@Controller
public class ReservationController {
	@RequestMapping("/Booking")
  public String display(Model m) {
	  Reservation res = new Reservation();
	  m.addAttribute("reservation", res);
	  return "Reservation-page";
  }
	@RequestMapping("/BookingDetails")
	public String redirect(@ModelAttribute("reservation")Reservation res) {
	return "BookingDetails";
}
}
