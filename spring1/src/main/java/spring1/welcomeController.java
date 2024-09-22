package spring1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class welcomeController {
	
	@RequestMapping("/")
  public String welcome() {
	  return "index";
  }
}
