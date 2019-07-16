<%-- 
    Document   : cuscare.jsp
    Created on : 26 Apr, 2019, 6:24:54 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
      
         <%!
            String keep;
            //int rgn;
            ResultSet rs,rs1;
        int f=0;
            %>
        <%
               try
            {
              String name= request.getParameter("nm");
               String num = request.getParameter("no");
                String email = request.getParameter("mail");
               String msg = request.getParameter("mes");
              
               
               
               
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 Statement stmt=con.createStatement();
 if(f==0)
 {
String q ="insert into care(name,number,mail,message) values ("+name+",'"+num+"','"+email+"','"+msg+"')";

stmt.executeUpdate(q);
//session.setAttribute("rgn", keep);
 out.print("<br><h1 style='color:red'> Thank you "+name+",this is an auto generated message,acknowleging your message.</h1>");
     
 }
 else
 {
     out.print("Hello "+name+" your was not delivered .");
     
 }
            }
catch(Exception e)
        {
         out.print(e);
        }
            %>
            
            
            
    </body>
    </body>
</html>
