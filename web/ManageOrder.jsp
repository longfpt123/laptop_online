<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }

        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>History <b>Order</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <!--data-toggle="modal"-->
                           
                            <!--<a href="#" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>ProductID</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listS}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.oid}</td>
                                <td>${o.pid}</td>
                                 <td>${o.quantity}</td>
                                <td>${o.price}</td>
                                <td>${o.fname} </td>
                                <td>${o.phone}</td>
                                <td>${o.address}</td>
                                <td>
                                    <c:if test= "${o.status==0}">
                                       Done
                                    </c:if>
                                 <c:if test= "${o.status ==1}">
                                      Progress
                                    </c:if>
                                          <c:if test= "${o.status==2}">
                                        Cancel
                                    </c:if>
                                 </td>
<!--                                <td>
                                    <a href="loadInfor?id=${o.oid}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?id=${o.oid}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>-->
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>3</b> out of <b>4</b> entries</div>
                    <ul class="pagination">
                        <c:if test="${tag>1}">
                             <li class="page-item "><a href="manager?index=${tag-1}">Previous</a></li>
                        </c:if>
                       
                        <!--                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                <li class="page-item"><a href="#" class="page-link">5</a></li>-->
                        <c:forEach begin="1" end="${endP}" var="i">
                            <li class="page-item ${tag==i?"active":""}"><a href="order?index=${i}" class="page-link">${i}</a></li>
                            </c:forEach>
                            <c:if test="${tag<endP}">
                             <li class="page-item"><a href="order?index=${tag+1}" class="page-link">Next</a></li>
                            </c:if>
                       
                    </ul>
                </div>
            </div>
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button>

        </div>
        <!-- Edit Modal HTML -->
      
        <!-- Edit Modal HTML -->
     
        <!-- Delete Modal HTML -->
      
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>