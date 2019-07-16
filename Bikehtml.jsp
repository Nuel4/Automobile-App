<%-- 
    Document   : Bikehtml.jsp
    Created on : 13 Mar, 2019, 10:30:46 AM
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
      
         <h1>NEWLY MANUFACTURED BIKES</h1>
        <form>
            <table>
            <tr>
           
           <a href="bike.jsp?idn=3011"> <img src="images/bike3011.jpg"> </a>
            <a href="bike.jsp?idn=3012"> <img src="images/bike3012.jpg"> </a>
            
             <a href="bike.jsp?idn=3015"> <img src="images/bike3015.jpg"> </a>
              <a href="bike.jsp?idn=3016"> <img src="images/bike3016.jpg"></a>
              <a href="bike.jsp?idn=3017"> <img src="images/bike3017.jpg"></a>
             
               <a href="bike.jsp?idn=3033"> <img src="images/bike3033.jpg"></a>
               <a href="bike.jsp?idn=3044"> <img src="images/bike3044.jpg"></a>
               <a href="bike.jsp?idn=3055"> <img src="images/bike3055.jpg"></a>
               <a href="bike.jsp?idn=3066"> <img src="images/bike3066.jpg"></a>
                <a href="bike.jsp?idn=3077"> <img src="images/bike3077.jpg"></a>
                
            </tr>
            </table>
         
        </form>
    </body>
</html>
