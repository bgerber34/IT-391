 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
<%-- 

    Document   : dispaly.jsp
    Created on : Mar 24, 2018, 12:16:49 PM
    Author     : Bgerb
--%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.List" %>

<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Member Search </title>
        <body bgcolor=" #77856b " onClick="displayResults()">
    
        <h1>Member Search </h1>
        <%!
            public class MemberSearch {

                String URL = "jdbc:mysql://localhost:3306/sportsclub";
                String username = "root";
                String password = "admin";

                Connection connection = null;
                PreparedStatement selectMember = null;
                ResultSet resultset = null;
//Constructor
                public MemberSearch() {


                    try {
                        connection = DriverManager.getConnection(URL, username, password);

                        selectMember = connection.prepareStatement(
                                "SELECT * from member where name = ? ");

                    } catch (SQLException e) {
                        e.printStackTrace();

                    }
                

}
                public ResultSet getMembers(String name) {
                    try {
                        
                        selectMember.setString(1, name.trim());
                        
                        resultset = selectMember.executeQuery();

                    } catch (SQLException e) {
                        e.printStackTrace();

                    }
                    return resultset;


                }
               
            }

        %>
        
        <%
            
            String name = "";
           

            if (request.getParameter("name") != null) {
                name = request.getParameter("name");
                
                }
     
            MemberSearch membersearch = new MemberSearch();
            ResultSet members = membersearch.getMembers(name);
            


        %>
            
        
        <table border="8">
           
             
            
               <% while (members.next()) {%>
               
            <tr>
           
                <td>Name: </td>


                <td><%= members.getString("name")%></td>

            </tr>
            <tr>
                <td>Address: </td>
                <td><%= members.getString("address")%></td>

            </tr>
            <tr>
                <td>City: </td>
                <td><%= members.getString("city")%></td>
                <td>State: </td>
                <td><%= members.getString("state")%></td>
                <td>Zipcode: </td>
                <td><%= members.getString("zipcode")%></td>
            </tr>
            <tr>
                <td>Data Of Birth: </td>
                <td><%= members.getString("dob")%></td>
                <td>Phone: </td>
                <td><%= members.getString("phone")%></td>
                <td>Email: </td>
                <td><%= members.getString("email")%></td>
            </tr>
            <tr>
                <td>Foid Card: </td>
                <td><%= members.getString("foidCard")%></td>
                <td>Expires: </td>
                <td><%= members.getString("expires")%></td>

            </tr>
            <tr>
                <td>Spouse: </td>
                <td><%= members.getString("spouse")%></td>
                <td>Date Of Birth: </td>
                <td><%= members.getString("spouseDob")%></td>
            </tr>
            <tr>
                <td>Child: </td>
                <td><%= members.getString("child_1")%></td>
                <td>Date Of Birth: </td>
                <td><%= members.getString("child_1_dob")%></td>

            </tr>
            <tr>
                <td>Child: </td>
                <td> <%= members.getString("child_2")%></td>
                <td>Date Of Birth: </td>
                <td><%= members.getString("child_2_dob")%></td>
            </tr>
            <tr>
                <td>Child: </td>
                <td> <%= members.getString("child_3")%></td>
                <td>Date Of Birth: </td>
                <td><%= members.getString("child_3_dob")%></td>
                
            </tr>
            
             <tr>
                        <td>Shooting Interests: </td>
                        <td>Trap: </td>
                        <td><%= members.getString("trap")%></td>
                        <td>Hand Gun: </td>
                        <td><%= members.getString("handGun")%></td>
                        <td>Rifle: </td> 
                        <td><%= members.getString("rifle")%></td>
                        <td>Archery: </td> 
                        <td><%= members.getString("archery")%></td>
                        <td>Self Defense/CCF: </td> 
                        <td><%= members.getString("selfDefense")%></td>
                    </tr>
                    <tr>
                        <td>Certified: </td> 
                        <td>Range Officer: </td>
                        <td><%= members.getString("rangeOfficer")%></td>
                        <td>Rifle/Pistol/ShotGun Instructor: </td>
                        <td><%= members.getString("instructor")%></td>
                        <td>Hunter Safety Instructor: </td>
                        <td><%= members.getString("hunterSafety")%></td>


                    </tr> 
                    
                       <tr>    
                        <td>Volunteer: </td>  
                        <td>Turkey Shoot: </td>
                        <td><%= members.getString("turkeyShoot")%></td>

                        <td>Youth Shoot: </td>
                        <td><%= members.getString("youthShoot")%></td>
                        <td>Splatter Board Shoot: </td>
                        <td><%= members.getString("splatBoardShoot")%></td>
                        <td>Raffles: </td>
                        <td><%= members.getString("raffles")%></td>
                        <td>Weekly Trap Leagues: </td>
                        <td><%= members.getString("trapLeague")%></td>
                        <td>Other Activities: </td>
                        <td><%= members.getString("other")%></td>

                    </tr>
            
            <% } %>
               
     
               </table>                     
                            <input type="hidden" name="hidden" value="<%= name %>" />      
                           <a href="home.xhtml"><input type = button value =" Home" </a>    
                           <a href="index_2.jsp"><input type = button value =" Back" </a>  
            

 
            
</form>
 <SCRIPT LANGAUGE = "JavaScript">
            function displayResults() {
                if (document.memberSearch.hidden.value != name) {
                    alert(" Member Don't Exsist ");
                }

            }               
            </script>               
                    </body> 
            
</html>

