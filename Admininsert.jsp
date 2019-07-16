<%-- 
    Document   : Admininsert.jsp
    Created on : 14 Mar, 2019, 2:45:21 PM
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
          <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">New Cars</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Pre-used</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Bike</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Customer Info</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Debtors</a></li>
       
    
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <form method="post" action="Adminproduct.jsp">
            <h3 align="center">PRODUCT DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg" ></td>
            </tr>
            <br>
            <tr>
                <td>TYPE</td><td>
            <select name="proSelected">
                
                <option value="new">New Car</option>
                 <option value="old">Pre Used</option>
                  <option value="bike">Bike</option>
                  
            </select>
                </td>
         
            </tr>
             
            <tr>
                <td> NAME</td><td><input type="text" name="na"></td>
            <br>
            </tr>
           
            <tr>
                <td>MODEL</td><td><input type="text" name="mod"></td>
            </tr>
            <tr>
                <td>YEAR</td><td><input type="text" name="yr"></td>
            </tr>
            <tr>
                <td>FEUL</td><td><input type="text" name="pt"></td>
            </tr>
            <tr>
                <td>SPEED</td><td><input type="text" name="sp"></td>
            </tr>
            <br>
              <tr>
                <td>MILEAGE</td><td><input type="text" name="mi"></td>
            </tr>
            <br>
            
              <tr>
                <td>QUANTITY</td><td><input type="text" name="qty"></td>
            </tr>
            <br>
             <tr>
                <td>PRICE</td><td><input type="text" name="pr"></td>
            </tr>
            <br>
            </table>
            <br>
            <br>
            
    <center> <input type="submit" name="submit" value="submit"></center>
          
            
           </form> 
                        
    </body>
    </body>
</html>
