<%-- 
    Document   : post
    Created on : Aug 25, 2021, 2:42:20 PM
    Author     : vongovantien
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container">
    <h1 class="text-danger text-center">ĐÂY LÀ TRANG QUẢN LÍ BÀI ĐĂNG</h1>
    <c:url value="/admin/posts" var="action"/>
    <form:form method="POST" action="${action}" modelAttribute="post" 
               enctype="multipart/form-data">
        <form:errors path="*" cssClass="alert alert-danger" element="div"/>
        <div class="form-group">
            <label for="name">Tiêu đề tuyển dụng</label>
            <form:input type="text" id="name" path="name" cssClass="form-control"/>
            <form:errors path="name" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="content">Nội dung công việc</label>
            <form:textarea id="content" path="content" cssClass="form-control"/>
            <form:errors path="content" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="salary">Mức lương đề xuẩt</label>
            <form:input id="salary" path="salary" cssClass="form-control"/>
            <form:errors path="salary" cssClass="alert alert-danger" element="div"/>
        </div>
        <div class="form-group">
            <label for="file">ẢNH BÀI POST</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="POST" class="btn btn-danger"/>
        </div>
    </form:form>
</div>
