package spring4;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reservation")  
@Controller  
public class Controllers {  
    @RequestMapping("/bookingform")  
public String bookingForm(Model model)  
{  
        
    reservation res=new reservation();  
        
    model.addAttribute("reservation", res);  
    return "reservation-page";  
}  
@RequestMapping("/submitform")  
 
public String submitForm(@ModelAttribute("reservation") reservation res)  
{  
    return "confirmation-page";  
}  
}  
