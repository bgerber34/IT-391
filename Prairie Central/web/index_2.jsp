<%-- 
    Document   : index_2
    Created on : Mar 24, 2018, 11:02:31 AM
    Author     : Bgerb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Search</title>
         <body bgcolor=" #77856b " >
    
   
    
        <h1>Search Member</h1>
        <form name="memberSearch" action="dispaly.jsp" method="POST">
            <table border="1">
                
                
                    <tr>
                        <td>Enter Members Name :</td>
                        
                        <td><input type="text" name="name" value=" " size="50" /></td>
                    </tr>
                
            </table>
             
             <input type="reset" value="Clear"  />
            <input type="submit" value="Submit" name="submit" />
            <a href="edit.xhtml"><input type = button value =" Back" </a> 
            <a href="home.xhtml"><input type = button value =" Home" </a>
            
        </form>
        
        
       
        
    </body>
</html>
