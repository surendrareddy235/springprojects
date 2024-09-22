package spring5;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Controllers {
	@RequestMapping("/hello")
  public String redirect(@RequestParam("username")String username,@RequestParam("pass")String pass,Model m) {
		if(pass.equals("123")) {
			String msg = "Hello:"+username;
		m.addAttribute("message", msg);
		return "homepage";
		}
		else {
			String msg = "sorry"+username+"password is wrong check again";
			m.addAttribute("message", msg);
			return "errorpage";
		}
	}
}
