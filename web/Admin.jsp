<%-- 
    Document   : Admin
    Created on : Nov 1, 2023, 8:59:04 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/colors.css" rel="stylesheet">
    </head>
    <body>
        
        
        
        <div class="container-fluid text-center"    >
        <table class="table table-bordered table-hover">
            <a href="blockAcc">Enable User</a>
            <tr class="table-inverse" >
                <th style="text-align: center">Account</th>
                <th style="text-align: center">Password</th>               
                <th style="text-align: center">Phone</th>
                <th style="text-align: center">Address</th>
                <th style="text-align: center">Email</th>
             
                
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.us}" var="c" varStatus="loop">
                
                <tr>
                    <td>${c.username}</td>
                    <td><input type="password" value="${c.password}" readonly></td>
                    <td>${c.phone}</td>
                    <td>${c.address}</td>
                    <td>${c.email}</td>
                  
                    
                    <td> <a href="admin?aid=${c.id}">Block</a></td>
                </tr>
            </c:forEach>
           
        </table>
        <a href="home" class="btn btn-gradient grd4 withradius secbtn">HOME</a>
        
    </body>
</html>

