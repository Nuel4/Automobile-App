<%-- 
    Document   : alternate.jsp
    Created on : 23 Apr, 2019, 7:20:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           img{
               margin-top: 0;
                width: 120px;
                background-color: #3f5b1b5;
            }
            #im{
                background-color: green;
            }
             body{
                
                font-family: Arial, Helvetica, sans-serif;
                 background-image: url(images/ccca.lpg);
            }
            
            
            .backimg{
              
                background-color: whitesmoke;
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
            .hero_text{
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                color: white;
            }
            #gr{
                color: goldenrod;
            }    




form{
  max-width:250px;
  margin:0 auto;
  text-align:left;
}
input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:goldenrod;
  color:white;
  transition:all .3s ease-in-out;
}
input[type="submit"]:hover{
  cursor:pointer;
  box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);
}

.nowrap {
  white-space: nowrap ;
}
.button1{white-space: nowrap ;}
.container1{margin-right:50px; }
        </style>
            
      
    
    </head>
    <body>
        <div id="im">
      
        <div class="container1" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html">Home</a></li>&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a href="index.html" class="nowrap">About Us</li>&nbsp;&nbsp;
        <li><a href="index.html" class="nowrap">Contact Us</li>&nbsp;&nbsp;
        <li><a href="index.html"> Address</li>&nbsp;&nbsp;
        <li class="button" style="background:goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
        <li class="button1" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="customerinfo.jsp" style="color:#000; text-decoration: none;">Sign up</a></li>
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <div class="hero_text">
       
        <form method="post" action="Admincheck.jsp">
           
            <table>
                
                <tr id="gr">
                 <td>Existing Users<sers</td><br><br>
                </tr>
                <tr>
                    
                    <td> <input type="text" name="reg" placeholder="Registered No"></td><br>
                <td>  <input type="password" name="pas" placeholder="Password "></td>
                </tr>
                
            </table>
                <input type="submit" name="submit" value="ENTER">
           
        </form>
        
      
         </div></div></div>
 
    

    </body>
</html>
