<%-- 
    Document   : newpayement.jsp
    Created on : 29 Mar, 2019, 10:56:46 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
      
         <%!
       
Connection con;
Statement stmt;
ResultSet rs,rs1;
int tregno,f,pri,disc,cha,tax,pay;
            %>
<%
   
    String bank =request.getParameter("ba");
    String bname =request.getParameter("name");
    String type =request.getParameter("typ");
    String card =request.getParameter("num1");
    String cvu =request.getParameter("num2");
    int cv = Integer.parseInt(cvu);
    String pwd =request.getParameter("pass");
     String pa =request.getParameter("paid");
    int paying =Integer.parseInt(pa);
     String pla =request.getParameter("plan");
    
String vid = session.getAttribute("id").toString();
tregno=Integer.parseInt(session.getAttribute("regno").toString());

 pri=Integer.parseInt( session.getAttribute("pr").toString());
 disc = Integer.parseInt( session.getAttribute("charg").toString());
 cha = Integer.parseInt( session.getAttribute("amount").toString());
  tax = Integer.parseInt( session.getAttribute("tx").toString());
   pay = Integer.parseInt( session.getAttribute("fin").toString());
%>


<%
try
{
    
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from newcars where reg='"+vid+"'");
    if(rs.next())
    {
      f=1;
    
if(paying < pay)
{
    out.print(" Insufficient Amount.Please pay the full amount.");
}
else
{
stmt.execute("update  customer set product='CAR', price='"+pri+"' , discount='"+disc+"',  amount='"+cha+"' , tax ='"+tax+"', totalamount ='"+pay+"' where reg="+tregno);

stmt.execute("insert into paydetails values ("+tregno+",'"+paying+"','"+bank+"','"+bname+"','"+type+"','"+card+"','"+cvu+"','"+pwd+"' )");
rs=stmt.executeQuery("select * from customer where reg ="+tregno );
String name;
if (rs.next())
{
    name = rs.getString(2);
    String ty =rs.getString(9);
    int amt =rs.getInt(14);
 out.print("<br><table> Thank you "+name+" ,your payment of "+amt+"  for SUV "+ty+" is confirmed .\n Please click Below to print your receipt. ");
//session.setAttribute("ego", tregno);
}

else
{
out.println("<b>Page Not Found.</b>");
}
}
}
}
catch(Exception e2)
{
out.println(e2.getMessage());
}
%>
<a href="Invoice.jsp">Print your Invoice</a>
    </body>
</html>
