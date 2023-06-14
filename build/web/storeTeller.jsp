<%-- 
    Document   : storeTeller
    Created on : Jun 13, 2023, 10:14:28 PM
    Author     : EZIRA SUTUAL
--%>
<%-- 
    Document   : storeUser
    Created on : Jun 13, 2023, 9:53:49 PM
    Author     : EZIRA SUTUAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreTeller" %>
<%@page import="BMSJAVA.UserLogin" %>
<jsp:useBean id="loginObject" class="BMSJAVA.UserLogin" />
<jsp:useBean id="teller" class="BMSJAVA.Teller" scope="session" />
<jsp:useBean id="storeTellerObject" class="BMSJAVA.StoreTeller" scope="session" />
<jsp:setProperty name="teller" property="*" ></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% if  ( storeTellerObject.addTeller(teller) ) { %>
    <jsp:forward page="admin.jsp" />
    <% }%>
  
    </body>
</html>
