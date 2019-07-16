<%-- 
    Document   : cusinfo.jsp
    Created on : 11 Mar, 2019, 10:58:52 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
            h1{
                background-color: #3f5b1b5;
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
                background-color: yellow;
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
            String keep;
            int rgn;
            ResultSet rs,rs1;
        int f=0;
            %>
        <%
               try
            {
              String rgn = request.getParameter("rt");
               String nam = request.getParameter("name");
                String pwd = request.getParameter("pas");
               String wok = request.getParameter("wo");
               String add = request.getParameter("ad");
               String occp = request.getParameter("oc");
               String eml = request.getParameter("em");
               String phone = request.getParameter("ph");
               
               
               
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 Statement stmt=con.createStatement();
 if(f==0)
 {
String q ="insert into customer(reg,name,pass,wokid,addr,prof,email,phone) values ("+rgn+",'"+nam+"','"+pwd+"','"+wok+"','"+add+"','"+occp+"','"+eml+"','"+phone+"')";

stmt.executeUpdate(q);
//session.setAttribute("rgn", keep);
 out.print("<br><p> Thank you "+nam+" for registrating with us.Your id is:"+rgn+" We look forward to serving you better");
     
 }
 else
 {
     out.print("<h1 style='color:red'>Hello "+nam+" you registration is not successful.</h1>");
     
 }
            }
catch(Exception e)
        {
         out.print(e);
        }
            %>
            
            
            
    </body>
</html>
