<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Feb 25, 2018, 12:03:28 PM
    Author     : Bgerb
--%>
<%@page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <Head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Prairie Central Sportsman’s Club </title>
    </head>
    <body bgcolor=" #77856b " onLoad="displayResults()">


        <h1> Add Member </h1>

        <%!
            public class Member {

                String URL = "jdbc:mysql://localhost:3306/sportsclub";
                String username = "root";
                String password = "admin";

                Connection connection = null;
                PreparedStatement insertMember = null;
                ResultSet resultset = null;

                public Member() {

                    try {
                        connection = DriverManager.getConnection(URL, username, password);

                        insertMember = connection.prepareStatement(
                                "INSERT INTO member (name, address, city, state, zipcode, dob, phone, email, foidCard, expires, paymentCode, memberfee, spouse, spouseDob, child_1, child_1_dob, child_2, child_2_dob, child_3, child_3_dob, trap, handGun, rifle, archery, selfDefense, rangeOfficer, instructor, hunterSafety,turkeyShoot, youthShoot, splatBoardShoot, raffles, trapLeague, other  ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public int setMember(String name, String address, String city, String state, String zipcode, String dob, String phone, String email, String foidCard, String expires, String paymentCode, String memberfee, String spouse, String spouseDob, String child_1, String child_1_dob, String child_2, String child_2_dob, String child_3, String child_3_dob, String trap, String handGun, String rifle, String archery, String selfDefense, String rangeOfficer, String instructor, String hunterSafety, String turkeyShoot, String youthShoot, String SplatBoardShoot, String raffles, String trapLeague, String other) {

                    int result = 0;

                    try {

                        insertMember.setString(1, name);
                        insertMember.setString(2, address);
                        insertMember.setString(3, city);
                        insertMember.setString(4, state);
                        insertMember.setString(5, zipcode);
                        insertMember.setString(6, dob);
                        insertMember.setString(7, phone);
                        insertMember.setString(8, email);
                        insertMember.setString(9, foidCard);
                        insertMember.setString(10, expires);
                        insertMember.setString(11, paymentCode);
                        insertMember.setString(12, memberfee);
                        insertMember.setString(13, spouse);
                        insertMember.setString(14, spouseDob);
                        insertMember.setString(15, child_1);
                        insertMember.setString(16, child_1_dob);
                        insertMember.setString(17, child_2);
                        insertMember.setString(18, child_2_dob);
                        insertMember.setString(19, child_3);
                        insertMember.setString(20, child_3_dob);
                        insertMember.setString(21, trap);
                        insertMember.setString(22, handGun);
                        insertMember.setString(23, rifle);
                        insertMember.setString(24, archery);
                        insertMember.setString(25, selfDefense);
                        insertMember.setString(26, rangeOfficer);
                        insertMember.setString(27, instructor);
                        insertMember.setString(28, hunterSafety);

                        insertMember.setString(29, turkeyShoot);
                        insertMember.setString(30, youthShoot);
                        insertMember.setString(31, SplatBoardShoot);
                        insertMember.setString(32, raffles);
                        insertMember.setString(33, trapLeague);
                        insertMember.setString(34, other);
                        result = insertMember.executeUpdate();

                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return result;
                }
            }
        %>
        <%
            int result = 0;
            if (request.getParameter("submit") != null) {
                String name = new String();
                String address = new String();
                String city = new String();
                String state = new String();
                String zipcode = new String();
                String dob = new String();
                String phone = new String();
                String email = new String();
                String foidCard = new String();
                String expires = new String();
               String paymentCode = new String();
                String memberfee = new String();
                String spouse = new String();
                String spouseDob = new String();
                String child_1 = new String();
                String child_1_dob = new String();
                String child_2 = new String();
                String child_2_dob = new String();
                String child_3 = new String();
                String child_3_dob = new String();
                String trap = new String();
                String handGun = new String();
                String rifle = new String();
                String archery = new String();
                String selfDefense = new String();
                String rangeOfficer = new String();
                String instructor = new String();
                String hunterSafety = new String();

                String turkeyShoot = new String();
                String youthShoot = new String();
                String splatBoardShoot = new String();
                String raffles = new String();
                String trapLeague = new String();
                String other = new String();

                if (request.getParameter("name") != null) {
                    name = request.getParameter("name");
                }
                if (request.getParameter("address") != null) {
                    address = request.getParameter("address");
                }
                if (request.getParameter("city") != null) {
                    city = request.getParameter("city");
                }
                if (request.getParameter("state") != null) {
                    state = request.getParameter("state");
                }
                if (request.getParameter("zipcode") != null) {
                    zipcode = request.getParameter("zipcode");
                }
                if (request.getParameter("dob") != null) {
                    dob = request.getParameter("dob");
                }
                if (request.getParameter("phone") != null) {
                    phone = request.getParameter("phone");
                }
                if (request.getParameter("email") != null) {
                    email = request.getParameter("email");
                }
                if (request.getParameter("foidCard") != null) {
                    foidCard = request.getParameter("foidCard");
                }
                if (request.getParameter("expires") != null) {
                    expires = request.getParameter("expires");
                    
                }
                if (request.getParameter("paymentCode") != null) {
                    paymentCode = request.getParameter("paymentCode");
                }
                
                 
                if (request.getParameter("memberfee") != null) {
                    memberfee = request.getParameter("memberfee");
                }  
                if (request.getParameter("spouse") != null) {
                    spouse = request.getParameter("spouse");
                }
                if (request.getParameter("spouseDob") != null) {
                    spouseDob = request.getParameter("spouseDob");
                }
                if (request.getParameter("child_1") != null) {
                    child_1 = request.getParameter("child_1");
                }
                if (request.getParameter("child_1_dob") != null) {
                    child_1_dob = request.getParameter("child_1_dob");
                }
                if (request.getParameter("child_2") != null) {
                    child_2 = request.getParameter("child_2");
                }
                if (request.getParameter("child_2_dob") != null) {
                    child_2_dob = request.getParameter("child_2_dob");
                }

                if (request.getParameter("child_3") != null) {
                    child_3 = request.getParameter("child_3");
                }
                if (request.getParameter("child_3_dob") != null) {
                    child_3_dob = request.getParameter("child_3_dob");
                }

                if (request.getParameter("trap") != null) {
                    trap = request.getParameter("trap");
                }

                if (request.getParameter("handGun") != null) {
                    handGun = request.getParameter("handGun");
                }

                if (request.getParameter("rifle") != null) {
                    rifle = request.getParameter("rifle");
                }

                if (request.getParameter("archery") != null) {
                    archery = request.getParameter("archery");
                }

                if (request.getParameter("selfDefense") != null) {
                    selfDefense = request.getParameter("selfDefense");
                }

                if (request.getParameter("rangeOfficer") != null) {
                    rangeOfficer = request.getParameter("rangeOfficer");
                }

                if (request.getParameter("instructor") != null) {
                    instructor = request.getParameter("instructor");
                }

                if (request.getParameter("hunterSafety") != null) {
                    hunterSafety = request.getParameter("hunterSafety");
                }

                if (request.getParameter("turkeyShoot") != null) {
                    turkeyShoot = request.getParameter("turkeyShoot");
                }

                if (request.getParameter("youthShoot") != null) {
                    youthShoot = request.getParameter("youthShoot");
                }

                if (request.getParameter("splatBoardShoot") != null) {
                    splatBoardShoot = request.getParameter("splatBoardShoot");
                }

                if (request.getParameter("raffles") != null) {
                    raffles = request.getParameter("raffles");
                }

                if (request.getParameter("trapLeague") != null) {
                    trapLeague = request.getParameter("trapLeague");
                }

                if (request.getParameter("other") != null) {
                    other = request.getParameter("other");
                }

                Member member = new Member();
                result = member.setMember(name, address, city, state, zipcode, dob, phone, email, foidCard, expires, paymentCode, memberfee, spouse, spouseDob, child_1, child_1_dob, child_2, child_2_dob, child_3, child_3_dob, trap, handGun, rifle, archery, selfDefense, rangeOfficer, instructor, hunterSafety, turkeyShoot, youthShoot, splatBoardShoot, raffles, trapLeague, other);

            }

        %>



        <form name= "memberForm" action="index.jsp" method="POST">
            <table border="1">

                <tbody>
                    <tr>
                        <td>Name</td>


                        <td><input type="text" name="name" value="" size="50" /></td>

                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" size="50" /></td>

                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="" size="50" /></td>
                        <td>State </td>
                        <td><input type="text" name="state" value="" size="2" /></td>
                        <td>Zipcode </td>
                        <td><input type="text" name="zipcode" value="" size="5" /></td>
                    </tr>
                    <tr>
                        <td>Data Of Birth</td>
                        <td><input type="text" name="dob" value="MM/DD/YYYY" size="12" /></td>
                        <td>Phone</td>
                        <td><input type="text" name="phone" value="" size="15" /></td>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" size="32" /></td>
                    </tr>
                    <tr>
                        <td>Foid Card</td>
                        <td><input type="text" name="foidCard" value="" size="32" /></td>
                        <td>Expires</td>
                        <td><input type="text" name="expires" value="MM/DD/YYYY" size="12" /></td>
                        <td> Payment Code</td>
                        <td> <select name="paymentCode">
                    <option> 1</option>
                    <option> 2</option>
                    <option> 3</option>
                    <option> 4</option>
                    <option> 5</option>
                    <option> 6</option>
                    <option> 7</option>
                    <option> 8</option>
                    <option> 9</option>
                    <option> 10</option>
                    <option> 11</option>
                    <option> 12</option>
                            </select></td>
                            <td> Payment Due </td>
                            <td> <select name="memberfee">
                    <option>JAN </option>
                    <option>FEB </option>
                    <option>MAR </option>
                    <option>APR </option>
                    <option>MAY </option>
                    <option>JUN </option>
                    <option>JUL </option>
                    <option>AUG </option>
                    <option>SEP </option>
                    <option>OCT </option>
                    <option>NOV </option>
                    <option>DEC </option>
                                </select></td>
                </tr>
                <tr>
                    <td>Spouse</td>
                    <td><input type="text" name="spouse" value="" size="50" /></td>
                    <td>Date Of Birth</td>
                    <td><input type="text" name="spouseDob" value="DD/MM/YYYY" size="12" /></td>
                </tr>
                <tr>
                    <td>Child 1</td>
                    <td><input type="text" name="child_1" value="" size="50" /></td>
                    <td>Date Of Birth</td>
                    <td><input type="text" name="child_1_dob" value="MM/DD/YYYY" size="12" /></td>

                </tr>
                <tr>
                    <td>Child 2</td>
                    <td><input type="text" name="child_2" value="" size="50"/> </td>
                    <td>Date Of Birth</td>
                    <td><input type="text" name="child_2_dob" value="MM/DD/YYYY" size="12" /></td>
                </tr>
                <tr>
                    <td>Child 3</td>
                    <td><input type="text" name="child_3" value="" size="50"/> </td>
                    <td>Date Of Birth</td>
                    <td><input type="text" name="child_3_dob" value="MM/DD/YYYY" size="12" /></td>
                </tr>
                <tr>
                    <td>Shooting Interests</td>
                    <td>Trap</td>
                    <td><select name="trap">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Hand Gun</td>
                    <td><select name="handGun">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Rifle</td> 
                    <td><select name="rifle">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Archery</td> 
                    <td><select name="archery">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Self Defense/CCF_</td> 
                    <td><select name="selfDefense">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Certified</td> 
                    <td>Range Officer</td>
                    <td><select name="rangeOfficer">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Rifle/Pistol/ShotGun Instructor</td>
                    <td><select name="instructor">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Hunter Safety Instructor</td>
                    <td><select name="hunterSafety">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>


                </tr> 


                <tr>    
                    <td>Volunteer</td>  
                    <td>Turkey Shoot</td>
                    <td><select name="turkeyShoot">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>

                    <td>Youth Shoot</td>
                    <td><select name="youthShoot">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Splatter Board Shoot</td>
                    <td><select name="splatBoardShoot">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Raffles</td>
                    <td><select name="raffles">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Weekly Trap Leagues</td>
                    <td><select name="trapLeague">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>
                    <td>Other Activities</td>
                    <td><select name="other">
                            <option>Yes</option>
                            <option>No</option>
                        </select></td>

                </tr>
                </tbody>
            </table>


            <input type="hidden" name="hidden" value="<%= result%>" />
            <input type="reset" value="Clear"  />
            <input type="submit" value="Submit" name="submit" />
            <a href="edit.xhtml"><input type = button value =" Back" </a> 
            <a href="home.xhtml"> <input type = button value =" Home" </a>

        </form>
        <SCRIPT LANGAUGE = "JavaScript">




            function displayResults() {
                if (document.memberForm.hidden.value == 1) {
                    alert(" Member Added ");
                }

            }


        </SCRIPT>      



    </body>
</html>
