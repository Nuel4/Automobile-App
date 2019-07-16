<%-- 
    Document   : productinsert.jsp
    Created on : 14 Mar, 2019, 3:16:51 PM
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
            String tst;
            int totalamt;
           int f;
           Connection con;
           Statement stmt;
           ResultSet rs,rs1,rs2;
            %>
            
                
       <%
try{
    String reg = request.getParameter("reg");
    String typ= request.getParameter("proSelected");
    String nam = request.getParameter("na");
    String mod = request.getParameter("mod");
    String yer = request.getParameter("yr");
    String pet = request.getParameter("pt");
    String sped = request.getParameter("sp");
    String mile = request.getParameter("mi");
    String qnty = request.getParameter("qty");
    int qty = Integer.parseInt(qnty);
    String pri = request.getParameter("pr");
    int total = Integer.parseInt(pri);
    
   int totalamt = (qty * total);
   
   
  String kap;  
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");

Statement stmt=con.createStatement();

if(typ.equals("new"))
{
    
tst="insert into newcars values("+ reg+",'"+typ+"','"+nam+"','"+mod+"','"+yer+"','"+pet+"','"+sped+"','"+mile+"','"+qty+"',"+total+","+totalamt+")";
stmt.executeUpdate(tst);
  out.println("successfully submitted ");
}

else 
{
        if(typ.equals("old"))
{
tst="insert into preused values("+ reg+",'"+typ+"','"+nam+"','"+mod+"','"+yer+"','"+pet+"','"+sped+"','"+mile+"','"+qty+"',"+total+","+totalamt+")";
stmt.executeUpdate(tst);
  out.println("successfully submitted ");
  }
        


else 
{
        if(typ.equals("bike"))
{


tst="insert into bike values("+ reg+",'"+typ+"','"+nam+"','"+mod+"','"+yer+"','"+pet+"','"+sped+"','"+mile+"','"+qty+"',"+total+","+totalamt+")";
stmt.executeUpdate(tst);
  out.println("successfully submitted ");
  }
         
        else
        {
             out.print("wrong selection");
             
                }
}
}
}
catch(Exception e)
{
 e.printStackTrace();
}
out.println("</body>");
%>

      
    </body>
</html>
