package spring8;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    private LoginDao loginDao;

    @PostMapping("/loginmvc")
    public ModelAndView handleLogin(@RequestParam("username") String username, 
                              @RequestParam("password") String password, 
                              Model model) {
        LoginData logindata = new LoginData();
        logindata.setUsername(username);
        logindata.setPassword(password);

       
        loginDao.saveLoginData(logindata);
        
        return new ModelAndView("WelcomePage");
    }
}
