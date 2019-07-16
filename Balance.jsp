<%-- 
    Document   : Balance.jsp
    Created on : 12 Mar, 2019, 10:20:48 PM
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
            .ts{margin-top: 30px;color: green;}
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
 <div class="backimg" style="position: relative">
      
    
        <%
            
            int prg;
            int f=0;
            %>
            <%
                Connection con;
                Statement stmt=null;
                ResultSet sr=null;
                %>
                <%
                    prg = Integer.parseInt( session.getAttribute("regno").toString());
                    %>
                <%
                    try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from debtor where reg = "+prg);
 String deb;
 if(sr.next())
 {
     f=1;
 
   out.print("<h3 class='ts' align='center'>Transaction Details</h3>");
 }
 else
 {
     out.print("<h3 class='ts' align='center'>number not found</h3>");
     
 }
 }
                    catch(Exception e)
                    {
                      e.printStackTrace();
                    }
            %>
            <%
                if(f==1)
                {
                %>
               <body  bgcolor="aaccda">
<font face="Times New Roman" color=#330033 size=3>

<form method=post action="">
    <center><table border="0">
            <div>
            <td><b><i> Reg Number:</b></i></td>
<td><input type=text name=hrg size="10"    value=<%=sr.getString("reg") %> ></td>
            

</tr>
            </div>
<div>
<tr>
<td><b><i> Name:</b></i></td>
<td><input type=text name=hrg size="10"    value="<%=sr.getString("name")%>" ></td>
</tr>
</div>
<div>
<tr>
<td><b><i>Work Id:</b></i></td>
<td><input type=text name=work size="20"  value=<%= sr.getString("workid") %>></td>
</tr>
</div>
<div>
<tr>
<td><b><i> Profession:</b></i></td>
<td><input type=text name=hosp size="20"  value=<%= sr.getString("profes") %>></td>
</tr>
</div>
<div>
<tr>
<td><b><i>Address :</b></i></td>
<td><input type=text name=doctor size="20"  value=<%= sr.getString("addr") %>></td>
</tr>
</div>
<div>
<tr>
<td><b><i>Product Type:</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("protype") %>></td>
</tr>
</div>
</table>
<table border="0" width="500">
    <div>
<tr>
<td><b><i>Method Of Payment</b></i></td>
<td><input type=text name=heam size="15"  value=<%= sr.getString("method") %>></td>
            </tr>
    </div>
            <div><tr>
<td>Original Amount</td>
<td><input type=text  name=healtyear  value=<%= sr.getString("amt") %>></td>
</tr>
            </div>
<div>
<tr>
<td><b><i>Charges :</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("charges") %>></td>
</tr></div>
<div>
    <tr>
<td><b><i>Tax :</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("tax") %>></td>
    </tr></div>
    <div>
        <tr>
<td><b><i>Total Amount :</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("totalamt") %>></td>
        </tr></div>
        <div>
            <tr>
<td><b><i>Amount Paid :</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("amtpaid") %>></td>
            </tr></div>
            <div>
                <tr>
<td><b><i>Balance :</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("balance") %>></td>
</tr>
            </div>
</TABLE>
To offset your debt <a href="debtpayment.jsp">Proceed to make payment   </a>
</center>
</form>
<%
}
%>
    </body>
</html>
