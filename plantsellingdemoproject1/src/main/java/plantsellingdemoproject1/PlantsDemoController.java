package plantsellingdemoproject1;

import java.sql.SQLException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/plantsdemo")
public class PlantsDemoController {
    
    @GetMapping("") 
    public String showPlantsDemo() {
        return "plantsdemo"; 
    }
    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; 
    }
    @GetMapping("/signup")
    public String showsignup() {
    	return "signup";
    }
    @GetMapping("/")
    public String showHomePage() {
        return "plantsdemo"; 
    }

    @RequestMapping("/plants")
    public String showplants() {
        return "plants";
    }

    @RequestMapping("/pots")
    public String showpots() {
        return "pots";
    }

    @RequestMapping("/offers")
    public String showoffer() {
        return "offers";
    }

    @RequestMapping("/customersupport")
    public String showcustomersupport() {
        return "customersupport";
    }

    @RequestMapping("/plantconsultent")
    public String showplantsconsultent() {
        return "plantconsultent";   
    }
    @GetMapping("/checkout")
    public String showcheckoutpage() {
    	return "checkout";
    }
    @PostMapping("/processOrder")
    public String showprocessorder() {
    	return "processOrder";
    }
    
    private final SignupDao signupDao = new SignupDao(); 
    @PostMapping("/signup")
    public ModelAndView signup(@RequestParam("username") String username,
                                @RequestParam("email") String email,
                                @RequestParam("password") String password) {
        ModelAndView modelAndView = new ModelAndView();

        try {
            signupDao.saveSignup(username, email, password);
            modelAndView.setViewName("redirect:/plantsdemo/login");
            
        } catch (SQLException e) {
            e.printStackTrace(); // Log error
            modelAndView.addObject("errorMessage", "Signup failed. Please try again.");
            modelAndView.setViewName("signup"); // Return to signup page on error
        }
        return modelAndView;
    }
    @PostMapping("/login")
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password) {
        ModelAndView modelAndView = new ModelAndView();

        try {
            if (signupDao.validateLogin(username, password)) {
                modelAndView.setViewName("redirect:/plantsdemo/"); // Redirect to plantsdemo page
            } else {
                modelAndView.addObject("errorMessage", "Invalid credentials. Please try again.");
                modelAndView.setViewName("login"); // Stay on the login page with an error
            }
        } catch (SQLException e) {
            e.printStackTrace();
            modelAndView.addObject("errorMessage", "Login failed. Please try again.");
            modelAndView.setViewName("login");
        }

        return modelAndView;
    }
    @Autowired
    private EmailService emailService;

    @PostMapping("/finalizeOrder")
    public String finalizeOrder(
            @RequestParam("plantName") String plantName,
            @RequestParam("plantCount") String plantCount,
            @RequestParam("username") String username,
            @RequestParam("usernumber") String usernumber,
            @RequestParam("useremail") String useremail,
            @RequestParam("useraddress") String useraddress) {

        String subject = "Order Confirmation: " + plantName;
        String body = "<h1>Order Details</h1>" +
                      "<p><strong>Plant:</strong> " + plantName + " (Quantity: " + plantCount + ")</p>" +
                      "<p><strong>Customer Name:</strong> " + username + "</p>" +
                      "<p><strong>Phone Number:</strong> " + usernumber + "</p>" +
                      "<p><strong>Email:</strong> " + useremail + "</p>" +
                      "<p><strong>Address:</strong> " + useraddress + "</p>";

        try {
            emailService.sendOrderConfirmation(useremail, subject, body);
        } catch (MessagingException e) {
            e.printStackTrace();  // Log the error for debugging
            return "error";  // Return an error page in case of failure
        }

        return "orderSuccess";  // Redirect to a success page
    }
}
   
