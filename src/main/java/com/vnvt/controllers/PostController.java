/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.vnvt.pojos.Post;
import java.io.IOException;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author vongovantien
 */
@Controller
public class PostController {

    @Autowired
    private Cloudinary cloudinary;

    @GetMapping("/admin/posts")
    public String list(Model model) {
        model.addAttribute("post", new Post());
        return "post";
    }

    @PostMapping("/admin/posts")
    public String add(@ModelAttribute(value = "post") @Valid Post post,
            BindingResult result) {
        if (!result.hasErrors()) {
            try {
                this.cloudinary.uploader().upload(post.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                return "redirect:/";
            } catch (IOException ex) {
                System.err.println("--add post img fail--" + ex.getMessage());
            }

        }
        return "post";

    }

}
