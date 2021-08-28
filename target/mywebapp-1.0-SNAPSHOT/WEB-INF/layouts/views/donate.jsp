<%-- 
    Document   : donate
    Created on : Aug 27, 2021, 2:52:06 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container">
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
</div>
<script>paypal.Buttons().render('body');</script>
<script src="https://www.paypal.com/sdk/js?client-id=test"></script>