<%-- 
    Document   : bike.html
    Created on : 24 Mar, 2019, 9:46:58 AM
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
      
        
         <%  
         String bk=request.getParameter("idn");
         //int num = Integer.parseInt(a);
          int  prg;
          String id;
            %>
            <%
                try
                {
                     prg = Integer.parseInt(session.getAttribute("regno").toString());
                    
                  Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 Statement stmt=con.createStatement();
String q ="select * from bike where reg='"+bk+"'";
ResultSet ss =stmt.executeQuery(q);

 if(ss.next()) 
 {
     id = ss.getString(1);
     
     String num="images/bike" +id+ ".jpg";
     out.print("<img src='" +num+ "'>");
   
   session.setAttribute("imm", num);
 }
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
                
                <h1>METHOD OF PAYMENT</h1>
        
        <form method="post" action="bikeprocess.jsp">
            <input type="hidden" name="idn"   value="<%=bk%>" >
                <table border="1" col="1">
                    <th></th>
                    <th>Vehicle Id</th>
                    <th>Discount</th>
                    <th>Charges</th>
                    
                    
                    <tr>
                        <td>VEHICLE ID</td>
                        
                        <td><input type="text" name="veh" value="<%=bk%>"></td></td>
                        
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>Cash<input type="radio" name="dio" value="cash"></td>
                        <td></td>
                        <td>10%</td><td></td>
                        
                    </tr>
                    <tr>
                 <td>ONLINE TRANSFER<input type="radio" name="dio" value="online"></td>
                 <td></td>
                 <td>10%</td><td></td>
                    </tr>
                    <tr>
                        <td>CHEQUE<input type="radio" name="dio" value="cheque"></td>
                        <td></td> <td>10%</td><td></td>
                        
                    </tr>
                    <tr>
                        <td>INSTALMENT PAYMENT<input type="radio" name="dio" value="instal"></td>
                        <td></td><td></td> <td>10%</td>
                        
                    </tr>
                </table>
                    <input type="submit" name="submit" value="OK"></td>
                      
               
            </form>
        
         <form>
             
         </form>
                
    </body>
</html>
