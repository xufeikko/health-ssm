package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HelloworldController {
   /* @RequestMapping(value="/hello")
    public String HelloWorld(){
        return "hello world";
    }*/
    @RequestMapping(value="/home")
    public ModelAndView home (HttpServletRequest request, HttpServletResponse response)  {
        return new ModelAndView( "home");
    }
    @RequestMapping(value="/helloWorld")
    public String helloWorld(Model model){
        model.addAttribute("message","Hello world!");
        return "result";
    }
    @RequestMapping("/modelTest")
    public String modelTest (Model model){
        System.out.println("modelTest");

        return "result1";
    }
}
