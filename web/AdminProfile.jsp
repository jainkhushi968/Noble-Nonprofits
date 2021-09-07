<%-- 
    Document   : AdminProfile
    Created on : Apr 20, 2021, 4:47:51 PM
    Author     : KHUSHBOO R. BALANI
--%>

<%@page import="com.User.ADetails"%>
<%@page import="com.Db.DBCOnnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        
        <style type="text/css">
.text{
    font-style: italic;
    font-weight: bolder;
    padding-top: 200px;
    padding-left: 100px;
    font-size: 20px;
    font-family: sans-serif;
    position: absolute;
    width: 100%;
    height: 100%;
    margin-left: 25%;
    background: url(img/adminindexx.jpeg);
    background-repeat: no-repeat;
    
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
                          
       <%@include file="all_component/allcss.jsp" %> 
     
    </head>
  
    <body> 
        
   <%                             ADetails user1 = (ADetails) session.getAttribute("userd");

            if (user1 == null) {
                response.sendRedirect("adminlogin.jsp");
                session.setAttribute("login-error", "Please Login");
            }

        %>


        <%@include file="all_component/navbar_admin.jsp" %>
        <h2 style="text-align: center"> Admin Profile</h2>
               <div class="text"> 
               </div>
       
</body> 
</html>
<%@include file="all_component/footer.jsp" %>