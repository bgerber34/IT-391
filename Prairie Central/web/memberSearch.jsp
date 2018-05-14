<%-- 
    Document   : memberSearch
    Created on : Apr 24, 2018, 5:39:17 PM
    Author     : Bgerb
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  bgcolor=" #77856b ">
    <center> <h1> Prairie Central Sportsman's Club Current Members</h1> </center>
         <%!
            public class Members {

                String URL = "jdbc:mysql://localhost:3306/sportsclub";
                String username = "root";
                String password = "admin";

                Connection connection = null;
                PreparedStatement selectMember = null;
                ResultSet resultset = null;
//Constructor
                public Members() {


                    try {
                        connection = DriverManager.getConnection(URL, username, password);

                        selectMember = connection.prepareStatement(
                                "SELECT name,phone,email from member  ");

                    } catch (SQLException e) {
                        e.printStackTrace();

                    }
            }

             public ResultSet getMembers() {
                    try {
                        
                        
                        
                        resultset = selectMember.executeQuery();

                    } catch (SQLException e) {
                        e.printStackTrace();

                    }
                    return resultset;


                }
               
            }

  
%>
            <%
                        Members members = new Members();
                        ResultSet member = members.getMembers();
                         
                     


            %>
         <center>   <table border="1">
                
                <tbody>
                    <tr>
                        <td>Name </td>
                        <td>Phone </td>
                        <td>Email </td>
                    </tr>
                    <% while (member.next()) { %>
                    <tr>
                        <td> <%= member.getString("name") %></td>
                        <td><%= member.getString("phone") %></td>
                        <td><%= member.getString("email") %></td>
                    </tr>
                    <% } %>
                </tbody>
                

            </table>
              </center> 
    </body>
</html>
