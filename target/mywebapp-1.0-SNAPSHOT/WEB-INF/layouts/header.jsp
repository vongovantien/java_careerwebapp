<%-- 
    Document   : header
    Created on : Aug 8, 2021, 4:26:26 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Navigation Start  -->
<nav class="navbar navbar-default navbar-sticky bootsnav">

    <div class="container">      
        <!-- Start Header Navigation -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="index.html"><img src="<c:url value="imgages/logo.png"/>" class="logo" alt=""></a>
        </div>
        <!-- End Header Navigation -->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                <li><a href="index.html">Home</a></li>
                <li><a href="login.html">Login</a></li>
                <li><a href="companies.html">Companies</a></li> 
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse</a>
                    <ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
                        <li class="active"><a href="browse-job.html">Browse Jobs</a></li>
                        <li><a href="company-detail.html">Job Detail</a></li>
                        <li><a href="resume.html">Resume Detail</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>   
</nav>
<!-- Navigation End  -->