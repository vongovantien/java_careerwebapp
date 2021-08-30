<%-- 
    Document   : header
    Created on : Aug 8, 2021, 4:26:26 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<style>
    .hero-area {
        background: url(<c:url value="/images/bg/bg-intro.png"/>) center center no-repeat;
        background-size: cover;
        overflow: hidden;
        color: #fff;
        position: relative;
        width: 100%;
    }
</style>
<header id="home" class="hero-area">
    <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
        <div class="container">
            <div class="theme-header clearfix">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand"><img src="<c:url value="/images/logo-mobile.png"/>" alt="logo"></a>
                </div>
                <div class="collapse navbar-collapse" id="main-navbar">
                    <ul class="navbar-nav mr-auto w-100 justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/"/>">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/donate"/>">
                               Donate
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/contact"/>">
                                Contact
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/about"/>">
                                About
                            </a>
                        </li>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/login"/>">
                                    Sign in
                                </a>
                            </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/register"/>">
                                <spring:message code="label.register"/>
                            </a>
                        </li>
                        <li class="button-group">
                            <a href="#" class="button btn btn-common"><spring:message code="label.postAJob"/></a>
                        </li>
                        <p><a href="?language=en_US">English</a>|<a href="?language=vi_VI">Vietnamese</a></p>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/account"/>">
                                    ${pageContext.request.userPrincipal.name}
                                </a>
                            </li>
                        </c:if>

                    </ul>
                </div>
            </div>
        </div>
        <div class="mobile-menu" data-logo="<c:url value="/images/logo-mobile.png"/>"></div>
    </nav>         
</header>