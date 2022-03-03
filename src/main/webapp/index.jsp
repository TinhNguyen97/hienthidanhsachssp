<%@ page import="java.util.List" %>
<%@ page import="com.codegym.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </head>
  <body>
<%
  List<Product> products=new ArrayList<>();
  products.add(new Product(1,"IPhone 13 ProMax",4000,"New","/image/ip13.jpg"));
  products.add(new Product(2,"IPhone 13",3000,"New","/image/ip13promax.jpg"));
  pageContext.setAttribute("listProduct",products);
%>

<%--  <table class="table table-striped">--%>
<%--    <tr>--%>
<%--      <td>Mã sản phẩm</td>--%>
<%--      <td>Tên sản phẩm</td>--%>
<%--      <td>Giá sản phẩm</td>--%>
<%--      <td>Mô tả sản phẩm</td>--%>
<%--      <td>Ảnh sản phẩm</td>--%>
<%--    </tr>--%>
<%--    <c:forEach var="product" items="${listProduct}">--%>
<%--      <tr>--%>
<%--      <td>${product.id}</td>--%>
<%--      <td>${product.name}</td>--%>
<%--      <td>${product.price}</td>--%>
<%--        <td>${product.descripition}</td>--%>
<%--      <td><img src="${product.image}" alt="Ảnh sản phẩm" width="150" height="200"></td>--%>
<%--      </tr>--%>
<%--    </c:forEach>--%>
<%--  </table>--%>

<div class="container">
  <h1>Danh sách sản phẩm</h1>
<table class="table">
  <thead>
  <tr>
    <th scope="col">Mã sản phẩm</th>
    <th scope="col">Tên sản phẩm</th>
    <th scope="col">Giá sản phẩm</th>
    <th scope="col">Mô tả sản phẩm</th>
    <th scope="col">Ảnh sản phẩm</th>
  </tr>
  </thead>
  <tbody>
<c:forEach var="product" items="${listProduct}">
  <tr>
    <th scope="row">${product.id}</th>
    <td>${product.name}</td>
    <td>${product.price}</td>
    <td>${product.descripition}</td>
  <td><img src="${product.image}" alt="Ảnh sản phẩm" width="150" height="200"></td>
  </tr>
  </tbody>
  </c:forEach>
</table>
</div>
  </body>
</html>
