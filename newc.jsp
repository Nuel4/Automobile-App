<%-- 
    Document   : newc.jsp
    Created on : 15 Mar, 2019, 1:14:45 AM
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
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
               
                font-family: Arial, Helvetica, sans-serif;
               background-image: url(images/ccca.jpg);
            }
            h3{
                color: green;
            }
    </style>
   
    </head>
    <body>
          
      
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
       
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">New Cars</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Pre-used</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Bike</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Customer Info</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Debtors</a></li>

        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <h3><b><i>search for a particular car </i></b></h3>
<form method=post action="Adminselect.jsp">
     <h1> <a href="Adminaccess.jsp" target="right">BACK</a></h1>
<table  align=center border="0">
    
<tr>
<center><td><b><i>Enter REG NO of the car<b>/</b>Used car no<b>/</b>Bike No<b>/</b>Customers' Details<b>/</b>Debtors<b>/</b>Bank Balance:</b></i></td>
</tr>
<tr>
    <td>Name<input type=text name=name size="20" /></td>
</tr>
<td>Reg.No<input type=text name=regno size="20" />
     </td>
</tr></center>
</table>
    <table>
    <tr>
<center>
    <b><i><input type=submit   value="search" size="10"></tr>
            </table>
    </body>
</html>
