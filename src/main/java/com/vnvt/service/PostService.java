/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.service;

import com.vnvt.pojos.Post;
import java.util.List;

/**
 *
 * @author vongovantien
 */
public interface PostService {

    List<Post> getPosts(String kw);
}
