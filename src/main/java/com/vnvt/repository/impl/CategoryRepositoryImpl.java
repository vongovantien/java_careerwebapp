package com.vnvt.repository.impl;

import com.vnvt.pojos.Category;
import com.vnvt.repository.CategoryRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author vongovantien
 */
@Repository
public class CategoryRepositoryImpl implements CategoryRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<Category> getCategories() {
        Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Category");

        return q.getResultList();
    }

}
