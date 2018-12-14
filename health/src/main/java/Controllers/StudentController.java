package Controllers;

import Model.Student;
import Service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class StudentController {
    /*@Autowired
    private IStudentService service;
    @GetMapping
    @RequestMapping(value="/Student")
    public String Get() {
        List<Student> students = service.selectByCondition(new Student());
        String jsonResult = com.alibaba.fastjson.JSON.toJSONString(students);
        return jsonResult;
    }
    @RequestMapping(value="/home")
    public ModelAndView home (HttpServletRequest request, HttpServletResponse response)  {
        return new ModelAndView( "home");
    }*/
    @GetMapping
    @RequestMapping(value = "/student")
    public ModelAndView student() {
        return new ModelAndView("student", "command", new Student());
    }
    @PostMapping
    @RequestMapping(value = "/addStudent")
    public String addStudent(@ModelAttribute("SpringWeb")Student student,
                             ModelMap model) {
        model.addAttribute("name", student.getName());
        model.addAttribute("age", student.getAge());
        model.addAttribute("classid", student.getClassid());

        return "result";
    }

}
