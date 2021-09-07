<%-- 
    Document   : VolProfile
    Created on : Apr 11, 2021, 3:16:58 PM
    Author     : KHUSHBOO R. BALANI
--%>


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
                background: url(img/Unity1.jpeg);
                background-repeat: no-repeat;

            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volunteer Page</title>
        <%@include file="all_component/allcss.jsp" %>

    </head>
     
    <body>
        <%@include file="all_component/navbar.jsp" %> 

        <%                            String ApMsg = (String) session.getAttribute("apply-msg");
                            if (ApMsg != null) {%>
        <div class="alert alert-success" role="alert"><%=ApMsg%></div> 
        <%
                session.removeAttribute("apply-msg");
            }

        %>
        
<%
    VolDetails vol1 = (VolDetails) session.getAttribute("volD");

    if (vol1 == null) {
        response.sendRedirect("LoginVol.jsp");
        session.setAttribute("Login-error", "Please Login.");
    }

%>
       
        <div class="text"> 
            <h2> Search For NPO </h2>
            <form class="form-inline my-2 my-lg-4 mt-4" method="get" action="Search.jsp"> <i class="fa fa-search" aria-hidden="true"></i>
                <input name="txtSearch" class="form-control mr-sm-2" style="height:40px; width:400px"  type="text" placeholder="Search by City" aria-label="Search"> 
                <button name="btnSearch" class="btn btn-success btn-lg my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>



    </body>
</html>
<%@include file="all_component/footer.jsp" %>

