<%-- 
    Document   : register
    Created on : Aug 27, 2021, 9:10:37 AM
    Author     : vongovantien
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/register" var="action"/>
<form:form method="post" action="${action}" modelAttribute="user">
    <div class="form-group">
        <label for="firstname">First name:</label>
        <form:input type="text" class="form-control" id="firstname" path="firstName" />
    </div>
    <div class="form-group">
        <label for="lastname">Last name:</label>
        <form:input type="text" class="form-control" id="lastname" path="lastName" />
    </div>
    <div class="form-group">
        <label for="username">Username:</label>
        <form:input type="text" class="form-control" placeholder="Enter username" id="username" path="username" />
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <form:input type="password" class="form-control" placeholder="Enter your password" id="password" path="password" />
    </div>
    <div class="form-group">
        <label for="confirm-password">Password:</label>
        <form:input type="password" class="form-control" placeholder="Enter your password again" id="confirm-password" path="confirmPassword" />
    </div>
    <div class="form-group form-check">
        <label class="form-check-label">
            <input class="form-check-input" type="checkbox"> Remember me
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Dang nhap</button>
</form:form>