<%-- 
    Document   : base
    Created on : Aug 8, 2021, 4:21:08 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>

        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/line-icons.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/owl.theme.default.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/slicknav.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/animate.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/main.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/responsive.css"/>"/>

    </head>
    <body>
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="content"/>
        <tiles:insertAttribute name="footer"/>

        <script src="<c:url value="/js/jquery-min.js"/>"></script>
        <script src="<c:url value="/js/popper.min.js"/>"></script>

        <script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.slicknav.js"/>"></script>
        <script src="<c:url value="/js/jquery.counterup.min.js"/>"></script>
        <script src="<c:url value="/js/waypoints.min.js"/>"></script>
        <script src="<c:url value="/js/form-validator.min.js"/>"></script>
        <script src="<c:url value="/js/contact-form-script.js"/>"></script>
        <script src="<c:url value="/js/main.js"/>"></script>
        <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://www.paypal.com/sdk/js?client-id=test"></script>

    </body>
</html>
