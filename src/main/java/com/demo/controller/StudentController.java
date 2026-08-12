package com.demo.controller;

import com.demo.dao.StudentDAO;
import com.demo.model.Student;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    private StudentDAO dao = new StudentDAO();

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/students")
    public String students(Model model) {
        model.addAttribute("students", dao.getAllStudents());
        return "students";
    }

    @PostMapping("/add")
    public String addStudent(@RequestParam String name,
                             @RequestParam String email,
                             @RequestParam String course) {

        Student s = new Student();
        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);

        dao.save(s);

        return "redirect:/students";
    }

    @GetMapping("/edit/{id}")
    public String editStudent(@PathVariable int id, Model model) {

        model.addAttribute("student", dao.getStudentById(id));

        return "edit";
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute Student student) {

        dao.update(student);

        return "redirect:/students";
    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id) {

        dao.delete(id);

        return "redirect:/students";
    }
}