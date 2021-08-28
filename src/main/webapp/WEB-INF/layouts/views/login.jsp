<%-- 
    Document   : login
    Created on : Aug 26, 2021, 9:26:41 PM
    Author     : vongovantien
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Da xay ra loi
    </div>
</c:if>
<c:url value="/login" var="action"/>
<form action="post" method="${action}">
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" placeholder="Enter username" id="username" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" placeholder="Enter password" id="password" name="password">
    </div>
    <div class="form-group form-check">
        <label class="form-check-label">
            <input class="form-check-input" type="checkbox"> Remember me
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Sign In</button>
</form>
