<%-- 
    Document   : oldcar.jsp
    Created on : 29 Apr, 2019, 1:15:28 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
               
                font-family: Arial, Helvetica, sans-serif;
              
            }
            h1{
                color: red;
          
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
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">logout</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
       <h1 align="center"> RECEIPT</h1
<br>
 <%!
int tregno ,k; 
ResultSet rs;
%>
<%
    String nam="",mdl="",yr="",pt="";
 tregno=Integer.parseInt(session.getAttribute("regno").toString());
    %>
<%

try
{

    String num =session.getAttribute("rg").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
Statement stmt=con.createStatement();
String tst;
rs=stmt.executeQuery("select * from preused where reg='"+num+"'");
if(rs.next())
{
    nam=rs.getString(3);
    mdl=rs.getString(4);
    yr=rs.getString(5);
    pt=rs.getString(6);
 

ResultSet rs=stmt.executeQuery("select  *  from customer where reg= "+tregno+"");

if(rs.next())
{
    String nm =rs.getString(2);
     String at =rs.getString(14);
  out.print("<h2>This is to confirm that product below has been paid for by '"+nm+"' The detail is given blow</h2>" );
  out.print("<table align=center id='fin'>");
  out.print("<br><span id='fin'>Date:</span>" +new java.util.Date());
  out.print("<br>Vehicle Owner's Name:"+nm);
  out.print("<br>Vehicle Name:"+nam);
  out.print("<br>Vehicle Model:"+mdl);
  out.print("<br>Year Produced:"+yr);
  out.print("<br>Fuel Type:"+pt);
  out.print("<br> Amout Paid:"+at);
  out.print("</table>");
}
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

   
    </body>
</html>
