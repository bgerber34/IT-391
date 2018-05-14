<%-- 
    Document   : raffles
    Created on : Apr 21, 2018, 8:50:38 PM
    Author     : Bgerb
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
     
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
       
      
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
           
    

    </head>
    <body style ="background-color: #77856b" >
 
    <center> <h1>  Raffles </h1></center>
        <br>
        <center>
        <form action=" " method="POST" >
        <div class="container">
            <div class="form-group">
                <div class="col-sm-5">
                    <div class="input-group">
                      
                        <div class="input-group-btn">
                            
                          </div>  
                        </div>
                    </div>
                </div><br><br>
                  <table class="table table-bordered table-striped " style="width: 70%">
                    <tr>
                        <th style ="width: 15%"> Name</th>
                    
                        <th style ="width: 15%">  Phone Number</th>
                    
                        <th style ="width: 15%"> Email</th>
                        
                    </tr>
                
                    <%
                    try
                    {
                     Class.forName("com.mysql.jdbc.Driver").newInstance();  
                      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsclub","root","admin");
                     String query = "Select name,email,phone from member where raffles = 'Yes'";
                     Statement stm =conn.createStatement();
                     ResultSet rs=stm.executeQuery(query);
                     while(rs.next())
                     {
                         %>
                         <tr>
                             <td><%= rs.getString("name")%></td>
                                
                             <td><%=rs.getString("phone")%></td>
                             
                             <td><%=rs.getString("email")%></td>
                             
                             
                         </tr>
                    
                    
                    
                    <%
                     }
                    }
                    catch(Exception e)
                            {
                                e.printStackTrace();
                            }
                    %>
                </table>  
            
        </div>
          
        </Center>
        </form>
                <center>
                 <a href="home.xhtml"><input type = button value =" Home" </a>    
                <a href="eventSearch.xhtml"><input type = button value =" Back" </a> 
                </center>
    </body>
</html>
