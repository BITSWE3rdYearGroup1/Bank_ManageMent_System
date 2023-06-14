<%-- 
    Document   : storeUser
    Created on : Jun 13, 2023, 9:53:49 PM
    Author     : EZIRA SUTUAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreUser" %>
<%@page import="BMSJAVA.UserLogin" %>
<jsp:useBean id="loginObject" class="BMSJAVA.UserLogin" />
<jsp:useBean id="customer" class="BMSJAVA.Customer" scope="session" />
<jsp:useBean id="storeUserObject" class="BMSJAVA.StoreUser" scope="session" />
<jsp:setProperty name="customer" property="*" ></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% if  ( storeUserObject.addUser(customer) ) { %>
    <jsp:forward page="admin.jsp" />
    <% }%>
  
    </body>
</html>
