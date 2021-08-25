/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.repository.impl;

import com.vnvt.pojos.Post;
import com.vnvt.repository.PostRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author vongovantien
 */
@Repository
@Transactional
public class PostRepositoryImpl implements PostRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Post> getPosts(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> query = builder.createQuery(Post.class);
        Root root = query.from(Post.class);
        query = query.select(root);

        if (!kw.isEmpty() && kw != null) {
            Predicate p = builder.like(root.get("name").as(String.class),
                    String.format("%%s%%", kw));
            query = query.where(p);
        }

        Query q = session.createQuery(query);
        return q.getResultList();
    }

}
