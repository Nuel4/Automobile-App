<%-- 
    Document   : Carproducthtml.jsp
    Created on : 13 Mar, 2019, 10:29:03 AM
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
      
        
        
        <h1 align="center">NEWLY MANUFACTURED CARS</h1>
        <form>
            
           <table>
               
               <br><br>
             <a href="Nmethod.jsp?idd=1101"> <img src="images/car1.jpeg"> </a>
             <a href="Nmethod.jsp?idd=1102"> <img src="images/car23.jpg"></a>
             
              <a href="Nmethod.jsp?idd=1103"> <img src="images/car3.jpg"></a>
                  
             <a href="Nmethod.jsp?idd=1104"> <img src="images/car11.jpg"></a>
                
              <a href="Nmethod.jsp?idd=1105"> <img src="images/car6.png"></a>
              
              <a href="Nmethod.jsp?idd=1106"> <img src="images/car7.jpg"></a>
           
            </table>
            <table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1 align="center">PRE USED CARS</h1>
                 <table>
            <a href="Umethod.jsp?idd=2011"> <img src="images/ucar2011.jpg"></a>
             <a href="Umethod.jsp?idd=2022"> <img src="images/ucar2022.jpg"> </a>
             <a href="Umethod.jsp?idd=2033"> <img src="images/ucar2033.jpg"></a>
              <a href="Umethod.jsp?idd=2044"> <img src="images/ucar2044.jpg"></a>
             <a href="Umethod.jsp?idd=2055"> <img src="images/ucar2055.jpg"></a>
             <a href="Umethod.jsp?idd=2066"> <img src="images/ucar2066.jpg"></a><br>
          
            </table>
        </form> 
    </body>
</html>
