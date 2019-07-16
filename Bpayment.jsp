<%-- 
    Document   : Bpayment.jsp
    Created on : 25 Mar, 2019, 7:53:22 AM
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
    String pa =request.getParameter("paid");
    int paying =Integer.parseInt(pa);
    String bank =request.getParameter("ba");
    String bname =request.getParameter("name");
    String type =request.getParameter("typ");
    String card =request.getParameter("num1");
    String cvu =request.getParameter("num2");
    int cv = Integer.parseInt(cvu);
    String pwd =request.getParameter("pass");
    
     String pla =request.getParameter("plan");
    

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
String vik = session.getAttribute("intal").toString();

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");

stmt=con.createStatement();
ResultSet r =stmt.executeQuery("select * from newcars where reg ='"+vik+"'" );
if(r.next())
{
ResultSet rt =stmt.executeQuery("select * from customer where reg ='"+tregno+"'" );
if(rt.next())
{ 
int bal = pay - paying;
 String nam =rt.getString(2);
 String wid =rt.getString(4);
 String add =rt.getString(5);
 String pro =rt.getString(6);
 
    String typ ="new car";

stmt.execute("update  customer set product='"+typ+"', price='"+pri+"' , discount='"+disc+"',  amount='"+cha+"' , tax ='"+tax+"', amtpaid='"+paying+"', totalamount ='"+pay+"' where reg="+tregno);

stmt.execute("insert into paydetails values ('"+tregno+"','"+paying+"','"+bank+"','"+bname+"','"+type+"','"+card+"','"+cvu+"','"+pwd+"' )");
stmt.execute("insert into debtor values ('"+tregno+"','"+nam+"','"+wid+"','"+pro+"','"+add+"',protype='CAR','"+pla+"','"+pri+"','"+cha+"','"+tax+"','"+pay+"','"+paying+"','"+bal+"')");


rs=stmt.executeQuery("select * from customer where reg ="+tregno );
String name;
if (rs.next())
{
    name = rs.getString(2);
    int amt =rs.getInt(15);
 out.print("<br><table> Thank you "+name+" ,your payment of "+amt+" for SUV "+typ+" is confirmed .\n Please click Below to print your receipt. ");

 out.print("<a href='debtinvoice.jsp'>Print your Invoice</a> ");
}
else
{
    out.print("given id not found");  
}
}

else
{
out.println("<b>Page Not Found.</b>");
}
}

}
catch(Exception e2)
{
e2.printStackTrace();
}

%>


<%
try
{
String vid = session.getAttribute("rg").toString();

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");

stmt=con.createStatement();
ResultSet r =stmt.executeQuery("select * from preused where reg ='"+vid+"'" );
if(r.next())
{
ResultSet rt =stmt.executeQuery("select * from customer where reg ='"+tregno+"'" );
if(rt.next())
{ 
int bal = pay - paying;
 String nam =rt.getString(2);
 String wid =rt.getString(4);
 String add =rt.getString(5);
 String pro =rt.getString(6);
    
 String typp ="PREUSED";
stmt.execute("update  customer set product='"+typp+"', price='"+pri+"' , discount='"+disc+"',  amount='"+cha+"' , tax ='"+tax+"', totalamount ='"+pay+"',amtpaid='"+paying+"' where reg="+tregno);

stmt.execute("insert into paydetails values ('"+tregno+"','"+paying+"','"+bank+"','"+bname+"','"+type+"','"+card+"','"+cvu+"','"+pwd+"' )");
stmt.execute("insert into debtor values ('"+tregno+"','"+nam+"','"+wid+"','"+pro+"','"+add+"', protype='PREUSED','"+pla+"','"+pri+"','"+cha+"','"+tax+"','"+pay+"','"+paying+"','"+bal+"')");
rs=stmt.executeQuery("select * from customer where reg ="+tregno );
String name;
if (rs.next())
{
    name = rs.getString(2);
    int amt =rs.getInt(15);
 out.print("<br><table> Thank you "+name+" ,your payment of "+amt+" for "+typp+" is confirmed .\n Please click Below to print your receipt. ");

 out.print("<a href='debtinvoice.jsp'>Print your Invoice</a> ");
}
else
{
    out.print("given id not found");  
}
}

else
{
out.println("<b>Page Not Found.</b>");
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
