
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<style>
    .bg-primary{
        background-color: greenyellow;
        color:red;
        margin-top :17px;
        margin-bottom: 70px;
         padding-top: 10px;
         font-size: 23px;
         padding-bottom: 10px;
         
    }
    .list-group-item{
        padding:16px 16px;       
        
    }
    .list-group-item a{
        color: red;
    }
    .bg-success{
         background-color: greenyellow;
        color:red;
         font-size: 23px;
    }
   
 </style>
<div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item text-white ${tag == o.id ? "active" : ""}"><a href="category?cid=${o.id}">${o.name}</a></li>
                                </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div  class="card-header bg-success text-white text-uppercase" >New product</div>
                        <div class="card-body" style="">
                            <img class="img-fluid" width="200px" heigh="200px" src="${p.images}" />
                            <h5 class="card-title">${p.name}</h5>
                            <p class="card-text">${p.infor}</p>
                            <div class="ratings" style="color: yellow">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </div>
                            <p class="bloc_left_price">$${p.price} </p>
                            <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0&appId=401359887932617&autoLogAppEvents=1" nonce="k4lHbSnP"></script>
                        </div>
                        
                    </div>
