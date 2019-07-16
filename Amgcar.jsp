<%-- 
    Document   : Amgcar.jsp
    Created on : 13 Mar, 2019, 1:43:45 PM
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
      
    <body>
         <%!
            int prg;
            int f=0;
            %>
            <%
                Connection con;
                Statement stmt=null;
                ResultSet sr,sr1;
                %>
                <%
                    prg = Integer.parseInt((String) session.getAttribute(""));
                    %>
                <%
                    try
                        
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from product");
 String deb;
 if(sr.next())
 {
    if(sr.next())
    {
      f=1;
    }
    else
    {
        out.print("Not available at this point");
    }
 }
}
                    catch(Exception b)
                    {
                        
                    }
                    %>
                    <%
                        if(f==1)
                        {
                            %>
                            
                        <table align="center">
            <tr>
                <td></td>
            <h3 align="center">CUSTOMERS DETAILS</h3>
            <tr>
                <td>Reg No:</td><td><input type="text" name="rt" value="<%=num%>" ></td>
            </tr>
            <tr>
               <td>FULL NAME</td><td><input type="text" name="name"></td>
            </tr>
             
            <tr>
                <td> Work ID</td><td><input type="text" name="wo"></td>
            <br>
            </tr>
           
            <tr>
                <td>ADDRESS</td><td><input type="text" name="ad"></td>
            </tr>
            <tr>
                <td>OCCUPATION</td><td><input type="text" name="oc"></td>
            </tr>
            <tr>
                <td>EMAIL</td><td><input type="text" name="em"></td>
            </tr>
            <tr>
                <td>PHONE NO</td><td><input type="text" name="ph"></td>
            </tr>
            <br>
           
              <%
                  }
                        %>
                        
                        <form method="post" action="Option.jsp">
                            <h3>Select continue if you want to buy.No to go back</h3>
                Continue <input type="radio" name="ra" value="Continue"><br>
              NO  <input type="radio" name="ra" value="Back"><br>
              
    <center> <input type="submit" name="submit" value="submit"></center>
          
            
           </form> 
                        
    </body>
</html>
