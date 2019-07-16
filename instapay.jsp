<%-- 
    Document   : instapay.jsp
    Created on : 23 Mar, 2019, 9:08:00 PM
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
          <% 
        
         String pic = session.getAttribute("imm").toString();
         out.print("<img src ='" +pic+ "'>");
            %>
           
                
                   <%!
            
            int price, discount, finalpay;
            int prg,charges;
            
            int f=0,k=0;
            int pay,tax;
            %>
            <%
                Connection con;
                Statement stmt=null;
                ResultSet sr =null,sr1;
                %>
                <%
                  
                   prg = Integer.parseInt(session.getAttribute("regno").toString());
               
                    String vik = session.getAttribute("id").toString();
                    
                    %>
                <%
                    try
                        
{
String p =request.getParameter("dio");

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from bike where reg='"+vik+"'");
 String deb;
 if(sr.next())
 {
  f=1; 
  pay = sr.getInt(10);
  
  
      price = pay;
      charges = (price*10)/100;
      price =price+charges;
      tax=(price*15)/100;
       finalpay=price+tax;
       
       session.setAttribute("pr", pay);
        session.setAttribute("charg", charges);
         session.setAttribute("amount", price);
         session.setAttribute("tx", tax);
          session.setAttribute("fin", finalpay);
          
  }
  


 else
 {
     out.print("not found");
     
 } 
 
}
                    catch(Exception b)
                    {
                      b.printStackTrace();
                    }
                    %>
                    
                    
                    <%
                        if(f==1)
                        {
                         %>
   
                           <tr>
                          
               
            <h3 align="center">MOTORCYCLE  DETAILS</h3>
            <tr>
                <td>Reg No:</td><td><input type="text" name="rt" value=<%=sr.getString("reg")%> ></td>
            </tr>
            
            <tr>
                <td>BIKE NAME</td><td><input type="text" name="name" value=<%=sr.getString("name")%>></td>
            </tr>
             
            <tr>
                <td> MODEL</td><td><input type="text" name="wo" value=<%=sr.getString("model")%>></td>
            <br>
            </tr>
           
            <tr>
                <td>YEAR PRODUCED</td><td><input type="text" name="ad" value=<%=sr.getString("yearmade")%>></td>
            </tr>
            <tr>
                <td>FUEL</td><td><input type="text" name="oc" value=<%=sr.getString("fuel")%>></td>
            </tr>
            <tr>
                <td>SPEED</td><td><input type="text" name="em" value=<%=sr.getString("speed")%>></td>
            </tr>
            <tr>
                <td>MILEAGE</td><td><input type="text" name="ph" value=<%=sr.getString("mileage")%>></td>
            </tr>
            <br>
            <tr>
                <td>PRICE</td><td><input type="text" name="ph" value=<%=pay%>></td>
            </tr>
            <br>
            <tr>
                <td>10% CHARGES</td><td><input type="text" name="ph" value=<%=charges%>></td>
            </tr>
            <br>
          
            <br>
             <tr>
                <td>AMOUNT </td><td><input type="text" name="ph" value=<%=price%>></td>
            </tr>
            <br>
             <tr>
                <td>TAX</td><td><input type="text" name="ph" value=<%=tax%>></td>
            </tr>
            <br>
            <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="ph" placeholder value=<%=finalpay%>></td>
            </tr>
            <br>
              
                        
                       
            <center><h2 align="left">Make Payment <a href="bikeinstalpay.jsp" target="top">Continue </a></h2>
                         </table>
    </center>
           </form>  
           <%
               }
%>



       

    </body>
</html>
