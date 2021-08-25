/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.pojos;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author vongovantien
 */
@Entity
@Table(name = "employer")
public class Employer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "company_name")
    private String companyName;
    @Column(name = "company_logo")
    private String companyLogo;
    @Column(name = "company_img")
    private String companyImg;
    private String address;
    private String email;
    @Column(name = "contact_name")
    private String contactName;
    @OneToMany(mappedBy = "employer", fetch = FetchType.EAGER)
    private List<Post> posts;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the companyName
     */
    public String getCompanyName() {
        return companyName;
    }

    /**
     * @param companyName the companyName to set
     */
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    /**
     * @return the companyLogo
     */
    public String getCompanyLogo() {
        return companyLogo;
    }

    /**
     * @param companyLogo the companyLogo to set
     */
    public void setCompanyLogo(String companyLogo) {
        this.companyLogo = companyLogo;
    }

    /**
     * @return the companyImg
     */
    public String getCompanyImg() {
        return companyImg;
    }

    /**
     * @param companyImg the companyImg to set
     */
    public void setCompanyImg(String companyImg) {
        this.companyImg = companyImg;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contactName
     */
    public String getContactName() {
        return contactName;
    }

    /**
     * @param contactName the contactName to set
     */
    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    /**
     * @return the posts
     */
    public List<Post> getPosts() {
        return posts;
    }

    /**
     * @param posts the posts to set
     */
    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }
}
