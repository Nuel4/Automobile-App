<%-- 
    Document   : Admincheck.jsp
    Created on : 7 Mar, 2019, 11:07:11 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
              
            }
            
            
            .backimg{
              
                background-color: whitesmoke;
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
                 background-image: url(images/ccca.jpg);
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
                color: yellow;
            }    
            .row{
               color: greenyellow;
            }
            h1{
                background-color: darkgoldenrod;
            }



        </style>
    </head>
    <body>
         <div id="im" class="gre">
       <div id="im">
      
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
      
        <div class="hero_text">
        <div class="container">
        
        <%!
String tlname,tlpwd;
%>

<%
tlname=request.getParameter("reg");
tlpwd=request.getParameter("pas");
%>

<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
Statement stmt=con.createStatement();

if( tlname.equals("admin")  && tlpwd.equals("admin"))
{
response.sendRedirect("Adminaccess.jsp");
}
else{
ResultSet rs=stmt.executeQuery("select  *  from customer where reg= "+tlname+" and pass='"+tlpwd+"'");

if (rs.next())
{
session.setAttribute("regno",tlname);
response.sendRedirect("custlink.jsp");
}
else
out.println("<b><h1 'style=color:greenyellow'>Wrong Registered number or password</h1></b>");
}
}
catch(Exception e)
{
    e.printStackTrace();
out.println("<b>Login Failed</b>");
}

%>
    </body>
</html>
