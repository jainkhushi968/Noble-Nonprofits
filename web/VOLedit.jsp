<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
           try{
                           String Name=request.getParameter("note_name");
                           Class.forName("org.apache.derby.jdbc.ClientDriver");
                           Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Noble Nonprofits","noble","noble");
                           Statement stmt=conn.createStatement();
                           ResultSet rs1=stmt.executeQuery("select * from REGISTER where EMAIL='"+Name+"'");
                           
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Volunteer Edit page</title>
        <%@include file="all_component/allcss.jsp" %> 
      
    </head>
    <body>
        <%@include file="all_component/navbar_admin.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5" style="margin-bottom: 14%">
                        <div class="card-header text-center text-white bg-custom">
                           
                            <h4>Volunteer edit</h4>
                        </div>   
            <%
             while(rs1.next())
                { 
            %>      
   
                        <div class="card-body">
                            <form action="VOLServlett" method="post">
                            <div class="form-group">
                            <input type="hidden" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="volemail" value="<%=rs1.getString(2)%>">                       
                            </div>
                            
                              <h5 style="text-align: center"><%= rs1.getString(1) %> </h5>   
  
                           <div class="form-group">
                            <label for="exampleInputPassword1">Contact</label>
                            <input type="tel" class="form-control" name="volcontact" maxlength="10" pattern="[0-9]{10}" value="<%=rs1.getString(4)%>">
                            </div>
                            
                           <div class="form-group">
                            <label for="exampleInputPassword1">Address</label>
                            <input type="text" class="form-control" name="voladdress" value="<%=rs1.getString(5)%>">
                            </div>
                            
                           <div class="form-group">
                            <label for="exampleInputPassword1">City</label>
                            <input type="text" class="form-control" name="volcity" value="<%=rs1.getString(6)%>">
                            </div>
                            
                            <div class="form-group">
                            <label for="exampleInputPassword1">Qualification</label>
                            <input type="text" class="form-control" name="volqual" value="<%=rs1.getString(7)%>">
                            </div>
                            
                            <div class="form-group">
                            <label for="exampleInputPassword1">About</label>
                            <input type="text" class="form-control" name="volabout" value="<%=rs1.getString(8)%>">
                            </div>
                            
                            
  
                            <button type="submit" class="btn btn-primary badge-pill btn-block" name="edit" value="edit">EDIT</button>
                            </form>
                        </div>   
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
<%@include file="all_component/footer.jsp" %>
<%}
}catch(Exception ex){ex.printStackTrace();}
%>



