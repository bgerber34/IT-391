<%-- 
    Document   : memberFee
    Created on : Apr 22, 2018, 11:22:40 PM
    Author     : Bgerb
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"></link>
        <title>JSP Page</title>
    </head>
    <body style ="background-color: #77856b" >
 
    <center> <h1>  Membership Fee's  </h1></center>
        <br>
       
        <div class="container">
          <form action="memberFee.jsp" method="POST">  
             
              <div class="col-sm-2">
                  
                  <Select class=" form-control" name="memberFee" onchange="this.form.submit();"   >
                
                <option value="0"> Select Month </option>
                
                
                
                 <%
                    try
                    {
                     Class.forName("com.mysql.jdbc.Driver").newInstance();  
                      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsclub","root","admin");
                     
                     Statement stm =conn.createStatement();
                     ResultSet rs=stm.executeQuery("Select distinct paymentCode, memberfee from member");
                     while(rs.next())
                     {
                       %>
                       <option value="<%=rs.getInt("paymentCode")%>"><%=rs.getString("memberfee")%></option>
                       
                       <%
                     }
                     conn.close();
                     rs.close();
                    }
                    
                    catch(Exception e)
                            {
                                e.printStackTrace();
                            }
                   
                    %>
            </Select>        
                            
                        
                            
                          
                        </div>
            <table class="table table-bordered table-striped">
                <tr>
                   
                    <th>Name </th>
                    <th>Phone </th>
                    <th>Email </th>
                    <th>Month </th>
                </tr>
                <%
                try
                {
                 Class.forName("com.mysql.jdbc.Driver").newInstance();  
                      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsclub","root","admin");
                     
                     Statement stm =conn.createStatement();
                     ResultSet rs=stm.executeQuery("Select name,phone,email,memberfee from member where paymentCode= "+ Integer.parseInt(request.getParameter("memberFee")) );  
                    while(rs.next())
                     {
                       %>
                       <tr>
                        
                        <td> <%=rs.getString("name")%></td>
                        <td> <%=rs.getString("phone")%></td>
                        <td> <%=rs.getString("email")%></td>
                        <td> <%=rs.getString("memberfee")%></td>
                       
                       
                       </tr>
                       
                       <%  
                }
                conn.close();
                rs.close();
}
               catch(Exception e)
                            {
                                e.printStackTrace();
                            }
                   
                %>
            </table>
             <a href="home.xhtml"><input type = button value =" Home" </a> 
             </form>   
                    </div>
</body>
</html>