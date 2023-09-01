<%-- 
    Document   : user
    Created on : Aug 23, 2023, 9:59:54 PM
    Author     : Ngoc Thinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1>Hello World!</h1>

<c:url value="/user" var="action" />

<form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data">
    <form:hidden path="idUser" />
    <div class="form-group">
        <label for="usernameUser" >Username</label>
        <form:input type="text" class="form-control" path="usernameUser" id="usernameUser"/>
    </div>
    <div class="form-group">
        <label for="passwordUser" >Password</label>
        <form:input type="password" class="form-control" path="passwordUser" id="passwordUser"/>
    </div>
    <div class="form-group">
        <label for="roleUser" >Role</label>
        <form:input type="text" class="form-control" path="roleUser" id="roleUser"/>
    </div>
    <div class="form-group">
        <label for="avatarUser" >Avatar</label>
        <form:input type="text" class="form-control" path="avatarUser" id="avatarUser"/>
    </div>
    <div class="form-group">
        <label for="image">Chon anh</label>
        <form:input type="file" id="image" path="file" cssClass="form-control" />
    </div>

    <div class="form-floating mb-3 mt-3">
        <button class="btn btn-info" type="submit">
            <c:choose>
                <c:when test="${user.idUser == -1}">Thêm sản phẩm</c:when>
                <c:otherwise>Cập nhật sản phẩm</c:otherwise>
            </c:choose>
        </button>
    </div>
</form:form>