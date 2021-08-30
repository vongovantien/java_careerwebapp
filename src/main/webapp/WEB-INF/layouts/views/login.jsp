<%-- 
    Document   : login
    Created on : Aug 26, 2021, 9:26:41 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Da xay ra loi
    </div>
</c:if>
<p><a href="?language=en_US">English</a>|<a href="?language=vi_VI">Vietnamese</a></p>
<h1 class="text-center text-danger"><spring:message code="label.title"/></h1>
<c:url value="/login" var="action"/>
<form action="post" method="${action}">
    <div class="form-group">
        <label for="username"><spring:message code="label.username"/></label>
        <input type="text" class="form-control" placeholder="Enter username" id="username" name="username">
    </div>
    <div class="form-group">
        <label for="password"><spring:message code="label.password"/></label>
        <input type="password" class="form-control" placeholder="Enter password" id="password" name="password">
    </div>
    <div class="form-group form-check">
        <label class="form-check-label">
            <input class="form-check-input" type="checkbox"> Remember me
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Sign In</button>
</form>
