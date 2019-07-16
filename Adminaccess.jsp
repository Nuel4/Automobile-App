<%-- 
    Document   : Adminaccess.jsp
    Created on : 15 Mar, 2019, 12:52:12 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            .gd{margin-right: 20px;}
    </style>
   
    </head>
    <body>
          
      
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <div class="gd" >
    <ul class="gd" style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="Admininsert.jsp"  style="color:#000; text-decoration: none;">Product</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">New Cars</a></li>&nbsp;&nbsp;
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Pre-used</a></li>&nbsp;&nbsp;
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Bike</a></li>&nbsp;&nbsp;
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Customer Info</a></li>&nbsp;&nbsp;
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Debtors</a></li>&nbsp;&nbsp;
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html" style="color:#000; text-decoration: none;">Logout</a></li>&nbsp;&nbsp;
       
    </ul>
    </div></div>
 <div class="backimg" style="position: relative">
      
        <h1> <a href="Adminaccess.jsp" target="right">BACK</a></h1>
        <%--<form method="" action="">
            <H1>MANAGER'S ACCESS ONLY</h1>
            <table>
                <tr>
                    <td><a href="newc.jsp"> NEW CAR</a></td>
                </tr>
                 <tr>
                    <td><a href="newc.jsp">PRE USED</a></td>
                </tr>
                <tr>
                    <td><a href="newc.jsp">BIKE</a></td>
                </tr>
                <tr>
                    <td><a href="newc.jsp">CUSTOMER INFO</a></td>
                </tr>
                <tr>
                    <td><a href="newc.jsp">DEBTORS</a></td>
                </tr>
               
            </table>
        </form>--%>
    </body>
</html>
