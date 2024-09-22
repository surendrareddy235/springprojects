package spring3;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class logincontroller {
 @RequestMapping("/loginmvc")
 public String display(HttpServletRequest req,Model m) {
	String name= req.getParameter("username");
	String pass =  req.getParameter("password");
	 
	 if(pass.equals("123")) {
		 String msg="hello"+name;
		 m.addAttribute("msg", msg);
		 return "loginmvc";
	 }
	 else {
		 String msg = "sorry"+name+"your password is incorrect";
		 m.addAttribute("msg", msg);
		 return "errorpage";
	 }
   }
}
