<%-- 
    Document   : newcarp.jsp
    Created on : 4 Apr, 2019, 6:38:34 PM
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
             body{
              
                background-color: whitesmoke;
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
                 background-image: url(images/ccca.jpg);
            }
            #payin{
                  
                margin-top: 150px;
              
           
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
      
         <%
            String vall = session.getAttribute("fin").toString();
           
            
            %>
            <form method="post" action="newcarpay.jsp" id="tal">
            <table align="center" id="payin">
            <tr>
                <td> <input type="number" name="paid" placeholder=" TOTAL AMOUNT "></td>
            </tr>
            <tr>
            <tr>
                <td> <input type="text" name="ba" placeholder="Bank "></td>
            </tr>
            <tr>
                <td> <input type="text" name="name" placeholder="Account Name "></td>
            </tr>
            <tr>
                <td> <input type="text" name="typ" placeholder="Account type "></td>
            </tr>
            <tr>
                <td> <input type="text" name="num1" placeholder="Card Number "></td>
            </tr>
            <tr>
                <td> <input type="text" name="num2" placeholder="CVC "></td>
            </tr>
            <tr>
                <td> <input type="password" name="pass" placeholder="Password "></td>
                <tr>
            </table>
           
                <center> <td> <input type="submit" name="submit" value="PAY "></td></center>
           
        </form>
    </body>
</html>
