<%-- 
    Document   : loginhtml.jsp
    Created on : 7 Mar, 2019, 10:58:16 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>- Page</title>
        
     <style>
           .container{
                background-color: green;
           }
            
             body{
                
                font-family: Arial, Helvetica, sans-serif;
              
            }
    </style>
   
    </head>
    <body>
          
      
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html">Home</a></li>
        <li><a href="index.html">About Us</li>
        <li><a href="index.html">Contact Us</li>
        <li><a href="index.html"> Address</li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="alternate.jsp"  style="color:#000; text-decoration: none;">Login</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <form method="post" action="Admincheck.jsp">
            <tr>
                    <td> <a href="customerinfo.jsp" target="right">SING UP</a></td><br><br>
                </tr>
            <table>
                
                <tr>
                 <td>Existing Users<sers</td><br><br>
                </tr>
                <tr>
                    
                    <td> <input type="text" name="reg" placeholder="Registered No"></td><br>
                <td>  <input type="password" name="pas" placeholder="Password "></td>
                </tr>
                
            </table>
                <input type="submit" name="submit" value="ENTER">
           
        </form>
    </body>
</html>
