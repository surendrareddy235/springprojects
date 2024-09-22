package spring10;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignupController {
@RequestMapping("/signup")
public String redirect() {
	return "signup";
}
@RequestMapping("/login")
public String redirect2() {
	return "login";
}
@PostMapping("/SignupDao")
public ModelAndView signup(@RequestParam("username") String username,@RequestParam("password") String Password) {
	
	Signup signup = new Signup();
	signup.setUsername(username);
	signup.setPassword(Password);
	
	SignupDao dao = new SignupDao();
	dao.saveSignup(signup);
	
	ModelAndView mav = new ModelAndView("redirect:/login");
	mav.addObject("message","you have signedup successfully.");
	return mav;
}
     @Autowired
     private SignupDao signupDao;
    @PostMapping("/login")
    public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password) {
    Signup signup = signupDao.findByUsernameAndPassword(username,password);
    
    if(signup != null) {
    	ModelAndView mav = new ModelAndView("success");
    	mav.addObject("username",username);
    	return mav;
    }else {
    	ModelAndView mav = new ModelAndView("login");
    	mav.addObject("error","invalid username or password.please try again");
    	return mav;
        }
    }
}
