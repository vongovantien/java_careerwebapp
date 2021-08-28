/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.repository;

import com.vnvt.pojos.User;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author vongovantien
 */
@Repository
public interface UserRepository {

    boolean addUser(User user);

    List<User> getUsers(String username);
}
