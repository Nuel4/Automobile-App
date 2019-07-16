<%-- 
    Document   : debtpay.jsp
    Created on : 31 Mar, 2019, 9:47:59 AM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
      
    <h1><a href='alternate.jsp' target="right">BACK</a></h1>
    
         <%!
Connection con;
Statement stmt;
ResultSet rs,rs1;
int tregno,f,totpay,pay, bal;

            %>
<%
    String pa =request.getParameter("paid");
    int paying =Integer.parseInt(pa);
    String bank =request.getParameter("ba");
    String bname =request.getParameter("name");
    String type =request.getParameter("typ");
    String card =request.getParameter("num1");
    String cvu =request.getParameter("num2");
    int cv = Integer.parseInt(cvu);
    String pwd =request.getParameter("pass");
    
   
    

tregno=Integer.parseInt(session.getAttribute("regno").toString());
 

%>


<%
try
{
//String vik = session.getAttribute("intal").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");

stmt=con.createStatement();
ResultSet r =stmt.executeQuery("select * from debtor where reg ='"+tregno+"'" );
if(r.next())
{
 String nam =r.getString(2);
 int prpaid =r.getInt(12);
 int bala =r.getInt(13);
 int total =r.getInt(11);
 totpay = prpaid + paying;
 bal = total - totpay;
 
stmt.execute("update  debtor set amtpaid='"+totpay+"' , balance= '"+bal+"' where reg="+tregno);
 out.print("<br><table> Thank you "+nam+" \n your payment of :"+paying+"  is confirmed .\n <br> ");

 out.print("<br>..........................................<br> First Payment : "+prpaid+"<br> Second Payment :"+paying+"<br> Outstanding Balance :"+bal+"");
}
else
{
    out.print("given id not found");  
}
}

catch(Exception e2)
{
out.println(e2.getMessage());
}

%>




    </body>
</html>
