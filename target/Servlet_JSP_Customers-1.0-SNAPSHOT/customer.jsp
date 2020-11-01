<%--
  Created by IntelliJ IDEA.
  User: Nghia
  Date: 11/1/2020
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/add"><input type="submit" value="Add new customer"></form>

    <div >
        <table border="1px">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Phone</td>
                <td>Address</td>
                <td>Date</td>
            </tr>
            <tr>
                <c:forEach items='${requestScope["customer"]}' var="customer" varStatus="loop">
            <tr>
                <td>${loop.index + 1}</td>
                <td>${customer.getName()}</td>
                <td>${customer.getPhone()}</td>
                <td>${customer.getAddress()}</td>
                <td>${customer.getDate()}</td>
            </tr>

                <%--                <td><img src="${item.getImg}" alt="${item.getName}"></td>--%>
            </c:forEach>
            </tr>
        </table>
    </div>
</body>
</html>
