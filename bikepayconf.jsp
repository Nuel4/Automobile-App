<%-- 
    Document   : bikepayconf.jsp
    Created on : 4 Apr, 2019, 10:08:36 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
       
Connection con;
Statement stmt;
ResultSet rs,rs1,rs2;
int tregno,f,pri,disc,cha,tax,pay;
            %>
<%
    String pa =request.getParameter("paid");
    int paying = Integer.parseInt(pa);
    String bank =request.getParameter("ba");
    String bname =request.getParameter("name");
    String type =request.getParameter("typ");
    String card =request.getParameter("num1");
    String cvu =request.getParameter("num2");
    int cv = Integer.parseInt(cvu);
    String pwd =request.getParameter("pass");
    
    
    
f=0;

   // String num =session.getAttribute("vid").toString();
    


 pri=Integer.parseInt( session.getAttribute("pr").toString());
 disc = Integer.parseInt( session.getAttribute("dis").toString());
 cha = Integer.parseInt( session.getAttribute("amount").toString());
  tax = Integer.parseInt( session.getAttribute("tx").toString());
   pay = Integer.parseInt( session.getAttribute("fin").toString());
   

%>
        <%
    
try
{
    tregno=Integer.parseInt(session.getAttribute("regno").toString());
String num =session.getAttribute("nom").toString();   

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
stmt=con.createStatement();
String b="BIKE";
/*rs=stmt.executeQuery("select * from bike where reg='"+num+"'");
    if(rs.next())
    {*/
       if(paying < pay)
{
    out.print(" Insufficient Amount.Please pay the full amount.");
}
        else
        {
           
stmt.execute("update  customer set product='BIKE', price='"+pri+"' , discount='"+disc+"',  amount='"+cha+"' , tax ='"+tax+"', totalamount ='"+pay+"' where reg="+tregno);

stmt.execute("insert into paydetails values ("+tregno+",'"+paying+"','"+bank+"','"+bname+"','"+type+"','"+card+"','"+cvu+"','"+pwd+"' )");
 

rs2=stmt.executeQuery("select * from customer where reg ="+tregno);
        
String name;
if (rs2.next())
{
    
    session.setAttribute("id", num);
    name = rs2.getString(2);
    String ty =rs2.getString(9);
    
    int amt =rs2.getInt(14);
    rs2=stmt.executeQuery("select * from bike where reg='"+num+"'");
    if(rs2.next())
    {
         String qtt=rs2.getString(9);
       
        
       int reduce =Integer.parseInt(qtt);
  
  reduce-=1;
  
  String pric =rs2.getString(10);
  
  int uniprice =Integer.parseInt(pric);
 
   String total =rs2.getString(11);
  int totprice =Integer.parseInt(total);
  
  int newprice = totprice-uniprice;
  
  
 
        
      out.print("<br><table> Thank you "+name+" ,your payment of "+amt+"  for SUV "+ty+" is confirmed .\n Please click Below to print your receipt. ");
 out.print("<a href='bikeinvoice.jsp'>Print your Invoice</a> ");  
 stmt.execute("update  bike set qantity="+reduce+" , total="+newprice+"  where reg='"+num+"'");

    }
}
        
    else
    {
        out.print("Not found");
    }
}
}
catch(Exception e2)
{
e2.printStackTrace();
}

%>


    </body>
</html>
