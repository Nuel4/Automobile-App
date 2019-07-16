<%-- 
    Document   : ucardetails.jsp
    Created on : 29 Mar, 2019, 1:38:09 AM
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
      
        <%
         String pikk = session.getAttribute("imp").toString();
         out.print("<img src ='" +pikk+ "'>" );
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
                    try
                        
{
     prg = Integer.parseInt(session.getAttribute("regno").toString());
    
                    String vid = request.getParameter("idd");
                    
String p =request.getParameter("dio");

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from preused where reg='"+vid+"'");
 String deb;
 if(sr.next())
 {
  k=1; 
  pay = sr.getInt(10);
 // out.print("p is"+p);
  if(p.equals("cash") || p.equals("online") || p.equals("cheque"))
  {
      price = pay;
      discount = (price*10)/100;
      price =price-discount;
      tax=(price*15)/100;
       finalpay=price+tax;
       
       session.setAttribute("pr", pay);
        session.setAttribute("dis", discount);
         session.setAttribute("amount", price);
         session.setAttribute("tx", tax);
          session.setAttribute("fin", finalpay);
          session.setAttribute("intal", vid);
  }
  else
  {
     if(p.equals("instal")) 
     {
           session.setAttribute("cid", pikk);
          session.setAttribute("intal", vid);
          response.sendRedirect("ustapay.jsp");
          
  }
  }
 }

}
                    catch(Exception b)
                    {
                      b.printStackTrace();
                    }
                    %>
                    
                    <%

                        if(k==1)
                        {
                         %>
   
                           <tr>
                          
               
            <h3 align="left"> PRE-USED VEHICLE  DETAILS</h3>
            <div>
            <tr>
                <td>Reg No:</td><td><input type="text" name="rt" value=<%=sr.getInt("reg")%> ></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>VEHICLE NAME</td><td><input type="text" name="name" value=<%=sr.getString("name")%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td> MODEL</td><td><input type="text" name="wo" value=<%=sr.getString("model")%>></td>
            
            </tr>
            </div>
                <div>
            <tr>
                <td>YEAR PRODUCED</td><td><input type="text" name="ad" value=<%=sr.getString("yearmade")%>></td>
            </tr>
                </div>
            <div>
            <tr>
                <td>FUEL</td><td><input type="text" name="oc" value=<%=sr.getString("fuel")%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>SPEED</td><td><input type="text" name="em" value=<%=sr.getString("speed")%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>MILEAGE</td><td><input type="text" name="ph" value=<%=sr.getString("mileage")%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>PRICE</td><td><input type="text" name="ph" value=<%=pay%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>DISCOUNT</td><td><input type="text" name="ph" value=<%=discount%>></td>
            </tr>
            </div>
          
            <div>
             <tr>
                <td>AMOUNT </td><td><input type="text" name="ph" value=<%=price%>></td>
            </tr>
            </div>
            <div>
             <tr>
                <td>TAX</td><td><input type="text" name="ph" value=<%=tax%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="ph" value=<%=finalpay%>></td>
            </tr>
            </div>
              
                        
                       
            <center><h2 align="left">Make Payment <a href="paymentinfo.jsp" target="top">Continue </a></h2>
                         </table>
                         
    </center>
           </form> 
          
                        <%   
                        }

                        %>
    </body>
</html>
