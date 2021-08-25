/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.service.impl;

import com.vnvt.pojos.Post;
import com.vnvt.repository.PostRepository;
import com.vnvt.service.PostService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vongovantien
 */
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Post> getPosts(String kw) {
        return this.postRepository.getPosts(kw);
    }

}
