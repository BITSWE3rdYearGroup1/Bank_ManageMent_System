<%-- 
    Document   : userLoginChecker
    Created on : Jun 13, 2023, 6:09:18 PM
    Author     : EZIRA SUTUAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreUser" %>
<%@page import="BMSJAVA.UserLogin" %>
<%@page import="java.sql.*" %>

<jsp:useBean id="loginObject" class="BMSJAVA.UserLogin" />
<jsp:useBean id="customer" class="BMSJAVA.Customer" scope="session" />
<jsp:useBean id="storeUserObject" class="BMSJAVA.StoreUser" scope="session" />
<jsp:setProperty name="loginObject" property="*" ></jsp:setProperty>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% customer = StoreUser.validateUser(loginObject); %>
    <%     session.setAttribute("customer", customer ); %>
    <% if (customer.getUsername() != null) { %>
    <jsp:forward page="user.jsp" />
    <script>
        alert("<%= customer.getFirstName() %> logged in");
    </script>
<% } else { %>
    <script>
        alert("Invalid username or password");
    </script>
    <jsp:forward page="admin.jsp" />
<% } %>

    </body>
</html>
