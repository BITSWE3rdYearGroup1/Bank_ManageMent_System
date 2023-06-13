<%-- 
    Document   : transfer.jsp
    Created on : Jun 13, 2023, 8:10:00 PM
    Author     : EZIRA SUTUAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMSJAVA.StoreUser" %>
<%@page import="BMSJAVA.TransferBean" %>
<jsp:useBean id="transferBean" class="BMSJAVA.TransferBean" scope="session" />
<jsp:useBean id="manageUserAccount" class="BMSJAVA.ManageUserAccount" scope="session" />
<jsp:useBean id="storeUserObject" class="BMSJAVA.StoreUser" scope="session" />
<jsp:setProperty name="transferBean" property="*" ></jsp:setProperty><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% if( manageUserAccount.transferMoney(transferBean)) { %>
    <script>alert("send succefully" );</script>
    <% } %>
    </body>
</html>
