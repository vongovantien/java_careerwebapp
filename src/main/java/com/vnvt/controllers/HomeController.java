/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.controllers;

import com.vnvt.pojos.User;
import com.vnvt.service.CategoryService;
import com.vnvt.service.PostService;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vongovantien
 */
@Controller
public class HomeController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private PostService postService;

    @RequestMapping("/")
    public String index(Model model, 
            @RequestParam(value = "kw", required = false, defaultValue = "") String kw) {
        model.addAttribute("categories", this.categoryService.getCategories());
        model.addAttribute("posts", this.postService.getPosts("kw"));
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model) {

        return "about";
    }
    
    @RequestMapping("/donate")
    public String donate(Model model) {

        return "donate";
    }
    
    @RequestMapping("/contact")
    public String contact(Model model) {

        return "contact";
    }
    
    @GetMapping("/admin/reports")
    public String showDashboard(Model model) {
        Map<String, Integer> data = new LinkedHashMap<String, Integer>();
        data.put("JAVA", 50);
        data.put("Ruby", 20);
        data.put("Python", 30);
        data.put("Py", 30);
        data.put("C#", 30);

        model.addAttribute("data", data);
        return "reports";
    }

    @RequestMapping("hello/{name}")
    public String hello(Model model,
            @PathVariable(value = "name") String name) {
        model.addAttribute("message", "Welcome" + name + "!!!!!!!!!");
        return "hello";
    }
    

    @RequestMapping(path = "/test")
    public String testRedirect(Model model) {
        model.addAttribute("testMsg", "WELCOME REDIRECT!!!!");

        return "redirect:/hello/Tien";
    }
}
