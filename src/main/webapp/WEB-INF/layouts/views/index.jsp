<%-- 
    Document   : index
    Created on : Aug 5, 2021, 10:32:08 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<section class="main-banner">
    <div class="container">
        <div class="caption">
            <h2>Build Your Career</h2>
            <form>
                <fieldset>
                    <div class="col-md-4 col-sm-4 no-pad">
                        <input type="text" name="kw" class="form-control border-right" placeholder="Skills, Designation, Companies" />
                    </div>
                    <div class="col-md-3 col-sm-3 no-pad">
                        <select class="selectpicker border-right">
                            <option>Experience</option>
                        </select>
                    </div>
                    <div class="col-md-3 col-sm-3 no-pad">
                        <select class="selectpicker">
                            <c:forEach var="c" items="${categories}" >
                                <option>${c.name}</option>
                            </c:forEach>
                        </select>  
                    </div>
                    <div class="col-md-2 col-sm-2 no-pad">
                        <input type="submit" class="btn seub-btn" value="submit" />
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</section>
