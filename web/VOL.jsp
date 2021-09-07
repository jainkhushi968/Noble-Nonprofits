<%-- 
    Document   : NPO
    Created on : Apr 16, 2021, 12:19:54 AM
    Author     : NAVODITA TANDON
--%>
<%@page import="com.User.ADetails"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ADetails user1 = (ADetails) session.getAttribute("userd");

    if (user1 == null) {
        response.sendRedirect("adminlogin.jsp");
        session.setAttribute("login-error", "Please Login");
    }

%>
<!DOCTYPE html>
<%    try {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits", "noble", "noble");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from REGISTER");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>VOLUNTEER</title>
        <%@include file="all_component/allcss.jsp" %> 

    </head>
    <body>
        <%@include file="all_component/navbar_admin.jsp"%>

        <div class="container-fluid">

            <h1 style="font-weight: bold" class="text-center textt-custom">VOLUNTEER - DETAILS</h1>
            <%    while (rs.next()) {
            %>

            <div class="container bg-custom"  style="margin-bottom: 4%">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3 custom-card" style="margin-bottom: 2%">
                            <img alt="" src="img/Vol.jpeg" class="card-img-top mt-2 mx-auto"
                                 style="max-width: 100px;">
                            <div class="card-body p-4">

                                <p>
                                    <b class="text-success">Name</b></br><b class="text-primary"><%=rs.getString(1)%></b>
                                </p>     

                                <p>
                                    <b class="text-success">VOL Email</b></br><b class="text-primary"><%=rs.getString(2)%></b>
                                </p>

                                <p>
                                    <b class="text-success">Contact</b></br><b class="text-primary"><%=rs.getString(4)%></b>
                                </p>

                                <p>
                                    <b class="text-success">Address</b></br><b class="text-primary"><%=rs.getString(5)%></b>
                                </p>

                                <p>
                                    <b class="text-success">City</b></br><b class="text-primary"><%=rs.getString(6)%></b>
                                </p>


                                <p>
                                    <b class="text-success">Qualification</b></br><b class="text-primary"><%=rs.getString(7)%></b>
                                </p>

                                <p>
                                    <b class="text-success">About</b></br><b class="text-primary"><%=rs.getString(8)%></b>
                                </p>
                                <div class="container text-center mt-2">
                                    <a href="VOLedit.jsp?note_name=<%=rs.getString(2)%>" type="submit" class="btn btn-primary">EDIT</a>
                                    <a href="VOLDelete.jsp?note_namee=<%=rs.getString(2)%>" name="delete" value="delete" type="submit" class="btn btn-danger">DELETE</a>
                                </div> 
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

<%}
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
<%@include file="all_component/footer.jsp" %>
