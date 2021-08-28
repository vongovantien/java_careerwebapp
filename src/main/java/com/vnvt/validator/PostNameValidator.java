/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.validator;

import com.vnvt.pojos.Post;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author vongovantien
 */
@Component
public class PostNameValidator implements Validator{

    @Override
    public boolean supports(Class<?> clazz) {
        return Post.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Post p = (Post) target;
        if(!p.getName().contains("VNVT"))
            errors.rejectValue("name", "post.name.nameErr");
    }
    
}
