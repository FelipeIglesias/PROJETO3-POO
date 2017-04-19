<%-- 
    Document   : home
    Created on : 17/04/2017, 20:16:23
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Importa Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <!-- Importa tema Bootstra.386 -->
        <link rel="stylesheet" href="css/bootstrap-theme.css"/>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>%>
        <br>
        <h1>Hello World!</h1><br>
        <a href="amortizacao-constante.jsp">CONSTANTE</a><br>
        <b>UM teste só de zoas</b>
        
        <!-- Importa jQuery -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
