
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            table {
                border-collapse: collapse;
            }
            td, th {
                border: 1px solid #ccc;
                padding: 3px 5px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <c:if test="${empty list}">
            <p>No Letters!</p>
        </c:if>
        <c:if test="${!empty list}">
            <table>
                <tr>
                    <th>ID</th><th>Name</th>
                </tr>
            <c:forEach items="${list}" var="obj">
                <tr>
                    <td>${obj.username}</td>
                    
                </tr>
            </c:forEach>
            </table>
        </c:if>
    </body>
</html>
