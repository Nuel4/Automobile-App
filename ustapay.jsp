<%-- 
    Document   : ustapay.jsp
    Created on : 29 Mar, 2019, 2:32:02 AM
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
ResultSet sr;
int prg;
%>
         <%
         String pikk = session.getAttribute("imp").toString();
         out.print("<img src ='" +pikk+ "'>" );
         %>
         
          <%!
            
            int pric, discoun, finapay;
            int charge;
            
            int ff=0,kk=0;
            int py,tx;
            %>
                <%
                    try
                        
{
     prg = Integer.parseInt(session.getAttribute("regno").toString());
     
//String p =request.getParameter("dio");
String vik = session.getAttribute("intal").toString();
Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from preused where reg='"+vik+"'");
 String deb;
 if(sr.next())
 {
  ff=1; 
  py = sr.getInt(10);
  
  
      pric = py;
      charge = (pric*10)/100;
      pric =pric+charge;
      tx=(pric*15)/100;
       finapay=pric+tx;
       
       session.setAttribute("pr", py);
        session.setAttribute("charg", charge);
         session.setAttribute("amount", pric);
         session.setAttribute("tx", tx);
          session.setAttribute("fin", finapay);
          session.setAttribute("rg", vik);
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
                        if(ff==1)
                        {
                         %>
   
                           <tr>
                          
               
            <h3 align="">PRE-USED CAR  DETAILS</h3>
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
                <td>PRICE</td><td><input type="text" name="ph" value=<%=py%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>10% CHARGES</td><td><input type="text" name="ph" value=<%=charge%>></td>
            </tr>
            </div>
          
            <div>
             <tr>
                <td>AMOUNT </td><td><input type="text" name="ph" value=<%=pric%>></td>
            </tr>
            </div>
            <div>
             <tr>
                <td>TAX</td><td><input type="text" name="ph" value=<%=tx%>></td>
            </tr>
            </div>
            <div>
            <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="ph" placeholder value=<%=finapay%>></td>
            </tr>
            </div>
              
                        
                       
            <center><h2 align="left">Make Payment <a href="instpayment.jsp" target="top">Continue </a></h2>
                         </table>
    </center>
           </form>  
           <%
               }
%>
    </body>
</html>
