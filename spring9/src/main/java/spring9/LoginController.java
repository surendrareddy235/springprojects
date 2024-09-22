package spring9;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
  @PostMapping("/loginmvc")
  public ModelAndView handleLogin(HttpServletRequest req) {
	  String username = req.getParameter("username");
	  String password = req.getParameter("password");
	  return new ModelAndView("welcomepage");
  }
}
