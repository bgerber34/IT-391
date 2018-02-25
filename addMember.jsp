<%-- 
    Document   : index
    Created on : Feb 25, 2018, 12:03:28 PM
    Author     : Bgerb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Prairie Central Sportsman’s Club </title>
    
        <body bgcolor=" #77856b ">
    <body>
    
        <h1> Add Member </h1>
        <form name="memberForm" action="display.jsp" method="POST">
            <table border="1">

                
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
                        <td><input type="text" name="foid card" value="" size="32" /></td>
                        <td>Expires</td>
                        <td><input type="text" name="expires" value="MM/DD/YYYY" size="12" /></td>
                        
                    </tr>
                    <tr>
                        <td>Spouse</td>
                        <td><input type="text" name="spouseName" value="" size="50" /></td>
                        <td>Date Of Birth</td>
                        <td><input type="text" name="dob" value="DD/MM/YYYY" size="12" /></td>
                    </tr>
                    <tr>
                        <td>Child 1</td>
                        <td><input type="text" name="childName1" value="" size="50" /></td>
                        <td>Date Of Birth</td>
                        <td><input type="text" name="dob" value="MM/DD/YYYY" size="12" /></td>

                    </tr>
                    <tr>
                        <td>Child 2</td>
                        <td><input type="text" name="childName2" value="" size="50"/> </td>
                        <td>Date Of Birth</td>
                        <td><input type="text" name="dob" value="MM/DD/YYYY" size="12" /></td>
                    </tr>
                    <tr>
                        <td>Child 3</td>
                        <td><input type="text" name="childName3" value="" size="50"/> </td>
                        <td>Date Of Birth</td>
                        <td><input type="text" name="dob" value="MM/DD/YYYY" size="12" /></td>
                    </tr>
                    <tr>
                        <td>Shooting Interests</td>
                        <td>Trap</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Hand Gun</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Rifle</td> 
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Archery</td> 
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Self Defense/CCF_</td> 
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                    </tr>
                    <tr>
                        <td>Certified</td> 
                        <td>Range Officer</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Rifle/Pistol/ShotGun Instructor</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Hunter Safety Instructor</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>


                    </tr> 
                    
                    
                    <tr>    
                        <td>Volunteer</td>  
                        <td>Turkey Shoot</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>

                            <td>Youth Shoot</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Splatter Board Shoot</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Raffles</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Weekly Trap Leagues</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                        <td>Other Activities</td>
                        <td><select name="dropList">
                                <option>Yes</option>
                                <option>No</option>
                            </select></td>
                    
                    </tr>
                
            </table>


        </form>
