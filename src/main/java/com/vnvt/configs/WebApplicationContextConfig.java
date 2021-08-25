/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnvt.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author vongovantien
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.vnvt.controllers",
    "com.vnvt.repository",
    "com.vnvt.service",})
public class WebApplicationContextConfig implements WebMvcConfigurer {

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/resources/images/");
        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
    }

    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();

        resolver.setViewClass(JstlView.class);
        resolver.setPrefix("/WEB-INF/layouts/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource source
                = new ResourceBundleMessageSource();
        source.setBasename("messages");
        return source;
    }

    @Bean
    public CommonsMultipartResolver multiCommonMutipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");

        return resolver;
    }
    
    @Bean
    public Cloudinary cloudinary(){
        Cloudinary c = new Cloudinary(ObjectUtils.asMap(
               "cloud_name", "dgct8zpvp",
                "api_key", "631943736442228",
                "api_serect", "4xKADk_UWqAKS7vlOl8qst_LUjw",
                "secure", true
        ));
        return c;
    }
}
