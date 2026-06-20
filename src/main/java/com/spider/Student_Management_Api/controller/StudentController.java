package com.spider.Student_Management_Api.controller;

import com.spider.Student_Management_Api.dao.StudentDao;
import com.spider.Student_Management_Api.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    @Autowired
    private StudentDao dao;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("addStudent")
    public String addStudent(@ModelAttribute("student") Student s) {
        dao.addStudent(s);
        return "showStudents";
    }

    @GetMapping("getStudents")
    public String getStudents(Model m){
        m.addAttribute("student", dao.getStudents());
        return "showStudent";
    }

   @GetMapping("getStudent")
   public String getStudent(@RequestParam int id, Model m){
        m.addAttribute("student", dao.getStudent(id));
        return "result";
   }

   @PostMapping("deleteStudent")
   public String deleteStudent(@RequestParam int id){
        dao.deleteStudent(id);

        return "redirect:/";
   }

   @GetMapping("showUpdateForm")
   public String showUpdateForm(@RequestParam int id, Model m){
        m.addAttribute("student", dao.getStudent(id));
        return "updateStudent";
   }

   @PostMapping("updateStudent")
   public String updateStudent(@ModelAttribute Student s, Model m){
        dao.updateStudent(s);
        m.addAttribute("student", s);

        return "result";
   }

}
