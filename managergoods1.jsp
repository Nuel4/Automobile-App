<%-- 
    Document   : managergoods1.jsp
    Created on : 7 Mar, 2019, 11:14:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
      
        <form>
            <table>
                <h1>LIST OF ITEMS IN THE SUPERMARKET</h1>
                  <tr>
       <td>2<input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
                 <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
                 <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
                 <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
                 <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
                 <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr> <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr> <tr>
                    <td> <input type="text" name="user" placeholder="Username"></td><br>
                <td>  <input type="password" name="pass" placeholder="Password"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
