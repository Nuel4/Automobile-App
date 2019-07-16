<%-- 
    Document   : instalpa.jsp
    Created on : 27 Mar, 2019, 4:28:47 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
       
    </ul>
</div>
        <h1 align="center"> RECEIPT</h1
 <div class="backimg" style="position: relative">
      
 <center><h2 align="left"> <a href="index.html" target="top">BACK </a></h2>
            
       
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

    String num =session.getAttribute("intal").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
Statement stmt=con.createStatement();
String tst;
rs=stmt.executeQuery("select * from newcars where reg='"+num+"'");
if(rs.next())
{
    nam=rs.getString(3);
    mdl=rs.getString(4);
    
 

ResultSet rs=stmt.executeQuery("select  *  from debtor where reg= "+tregno+"");

if(rs.next())
{
    int rg =rs.getInt(1);
    String nm =rs.getString(2);
    String mt =rs.getString(7);
    String tol =rs.getString(11);
    String pad =rs.getString(12);
     String bal =rs.getString(13);
  out.print("This is to confirm that product below has been paid for by "+nm+" The detail is given blow<br>" );
  out.print("</table>");
  out.print("<br>-------------------------------------------------:<br>");
  out.print("<br>Number Id:"+rg);
  out.print("<br>Date:" +new java.util.Date());
  out.print("<br>Vehicle Owner's Name:"+nm);
  out.print("<br>Vehicle Name:"+nam);
  out.print("<br>Vehicle Model:"+mdl);
  out.print("<br>Total Price:"+tol);
  out.print("<br>First Payment:"+pad);
  out.print("<br>Balance:"+bal);
  out.print("<br>Instamental Payment:"+mt);
  out.print("</table>");
}
}
}
catch(Exception e)
{
e.printStackTrace();
}
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
    
 

ResultSet rs=stmt.executeQuery("select  *  from debtor where reg= "+tregno+"");

if(rs.next())
{
    int rg =rs.getInt(1);
    String nm =rs.getString(2);
    String mt =rs.getString(7);
    String tol =rs.getString(11);
    String pad =rs.getString(12);
     String bal =rs.getString(13);
  out.print("This is to confirm that product below has been paid for by "+nm+" The detail is given blow<br>" );
  out.print("</table>");
  out.print("<br>-------------------------------------------------:<br>");
  out.print("<br>Number Id:   "+rg);
  out.print("<br>Date:    " +new java.util.Date());
  out.print("<br>Vehicle Owner's Name:    "+nm);
  out.print("<br>Vehicle Name:    "+nam);
  out.print("<br>Vehicle Model:  "+mdl);
  out.print("<br>Total Price:  "+tol);
  out.print("<br>First Payment:  "+pad);
  out.print("<br>Balance:   "+bal);
  out.print("<br>Instamental Payment: "+mt);
  out.print("</table>");
}
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

                    
    <%
try
{

    String num =session.getAttribute("id").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
Statement stmt=con.createStatement();
String tst;
rs=stmt.executeQuery("select * from bike where reg='"+num+"'");
if(rs.next())
{
    nam=rs.getString(3);
    mdl=rs.getString(4);
    
 

ResultSet rs=stmt.executeQuery("select  *  from debtor where reg= "+tregno+"");

if(rs.next())
{
    int rg =rs.getInt(1);
    String nm =rs.getString(2);
    String mt =rs.getString(7);
    String tol =rs.getString(11);
    String pad =rs.getString(12);
     String bal =rs.getString(13);
  out.print("This is to confirm that product below has been paid for by "+nm+" The detail is given blow<br>" );
  out.print("</table>");
  out.print("<br>-------------------------------------------------:<br>");
  out.print("<br>Number Id:"+rg);
  out.print("<br>Date:" +new java.util.Date());
  out.print("<br>Vehicle Owner's Name:"+nm);
  out.print("<br>Vehicle Name:"+nam);
  out.print("<br>Vehicle Model:"+mdl);
  out.print("<br>Total Price:"+tol);
  out.print("<br>First Payment:"+pad);
  out.print("<br>Balance:"+bal);
  out.print("<br>Instamental Payment:"+mt);
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
