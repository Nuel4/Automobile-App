<%-- 
    Document   : Car1.jsp
    Created on : 13 Mar, 2019, 11:36:33 AM
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
            .backimg{
                margin-top: 5px;
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
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Previous</a></li>
    </ul>
</div>
 <div class="backimg" style="position: relative">
    
     <center> <table class="car" aling="center" border="">
             <body class="ca">
        <%
            String pic = request.getParameter("idd");
            int pik =Integer.parseInt(pic);
            %>
            <%
    if(pik==1101)
    {
       %>
             <tr class="ca">
        <td><img src="images/car1.jpeg"> </td>
       
</tr>
       <%
        }
           else 
           {
           if(pik==1102)
{
%>
<tr class="ca">
    <td><img src="images/car23.jpg"></td>
</tr>
 
<%
   }
else
{
if(pik==1103)
{
%>
<tr class="ca">
    <td> <img src="images/car3.jpg"></td>
    
</tr>
 
 <%
     }
else
{
if(pik==1104)
{
%>
<tr class="ca">
    <td><img src="images/car11.jpg"> </td>
</tr>
 
 <%
     }
else
{
if(pik==1105)
{
%>
<tr class="ca">
    <td> <img src="images/car6.png"> </td>
</tr>

 <%
     }
else
{
if(pik==1106)
{
%>
<tr class="ca">
    <td> <img src="images/car7.jpg"> </td>
</tr>
 <%
}

}
}
}
}
}
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
 sr = stmt.executeQuery("select * from newcars where reg='"+vid+"'");
 String deb;
 if(sr.next())
 {
  f=1; 
  pay = sr.getInt(10);
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
           session.setAttribute("car", vid);
           
  }
  else
  {
      if(p.equals("instal")) 
      {
    session.setAttribute("cid", pik);
          session.setAttribute("intal", vid);
          response.sendRedirect("vhpay.jsp");
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
                        if(f==1)
                        {
                         %>
   
                           <tr>
                          
               
            <h3 align="center">VEHICLE  DETAILS</h3>
            <tr>
                <td>Reg No:</td><td><input type="text" name="rt" value=<%=sr.getInt("reg")%> ></td>
            </tr>
            
            <tr>
                <td>VEHICLE NAME</td><td><input type="text" name="name" value=<%=sr.getString("name")%>></td>
            </tr>
             
            <tr>
                <td> MODEL</td><td><input type="text" name="wo" value=<%=sr.getString("model")%>></td>
            
            </tr>
           
            <tr>
                <td>YEAR PRODUCED</td><td><input type="text" name="ad" value=<%=sr.getString("year")%>></td>
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
           
            <tr>
                <td>PRICE</td><td><input type="text" name="ph" value=<%=pay%>></td>
            </tr>
            
            <tr>
                <td>DISCOUNT</td><td><input type="text" name="ph" value=<%=discount%>></td>
            </tr>
           
          
            <br>
             <tr>
                <td>AMOUNT </td><td><input type="text" name="ph" value=<%=price%>></td>
            </tr>
            
             <tr>
                <td>TAX</td><td><input type="text" name="ph" value=<%=tax%>></td>
            </tr>
            
            <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="ph" value=<%=finalpay%>></td>
            </tr>
            
              
                        
                       
            <center><h2 align="left">Make Payment <a href="newcarp.jsp" target="top">Continue </a></h2>
                         </table>
    </center>
           </form>  
           <%
               }
%>
                    
 
            
               
    </body>
</html>
