/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.controllers;

import com.vnvt.pojos.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author vongovantien
 */
@Controller
public class PostController {

    @GetMapping("/admin/post")
    public String list(Model model) {
        model.addAttribute("post", new Post());
        return "post";
    }

}
