<%-- 
    Document   : Adminselect.jsp
    Created on : 14 Mar, 2019, 10:51:43 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
               
                font-family: Arial, Helvetica, sans-serif;
                background-image: url(images/ccca.jpg);
            }
            h3{
                color: green;
            }
    </style>
   
    </head>
    <body>
          
      
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">New Cars</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Pre-used</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Bike</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Customer Info</a></li>
         <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="newc.jsp"  style="color:#000; text-decoration: none;">Debtors</a></li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
    <h1> <a href="Adminaccess.jsp" target="right">BACK</a></h1>
   
         <%!
           int passwd;
         %>  
           <%
           try
           {
               String name = request.getParameter("name");
               String pss = request.getParameter("regno");
               passwd = Integer.parseInt(pss);
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from newcars where name='"+name+"' and reg ="+passwd+"");
               
               if(rs.next())
               {       
           %>
             <h3 align="center">PRODUCT DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg"  value="<%=rs.getInt("reg")%>" ></td>
            </tr>
            <br>
            <tr>
                <td>TYPE</td><td><input type="text" name="ty" value="<%=rs.getString("type")%>" ></td>
            </tr>
             
            <tr>
                <td> NAME</td><td><input type="text" name="na" value="<%=rs.getString("name")%>"></td>
            <br>
            </tr>
           
            <tr>
                <td>MODEL</td><td><input type="text" name="mod" value="<%=rs.getString("model")%>"></td>
            </tr>
            <tr>
                <td>YEAR</td><td><input type="text" name="yr" value="<%=rs.getString("year")%>" ></td>
            </tr>
            <tr>
                <td>QUANTITY</td><td><input type="text" name="pt" value="<%=rs.getInt("qty")%>" ></td>
            </tr>
            <tr>
                <td>UNIT PRICE</td><td><input type="text" name="sp" value="<%=rs.getInt("price")%>" ></td>
            </tr>
            <br>
              <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="mi" value="<%=rs.getInt("totalamount")%>"></td>
            </tr>
            
            <br>
            </table>
            <br>
            <br>
           
           <br>
           <%
               }
         else
{
 

}
           }
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
        
         <%!
           
         %>  
           <%
           try
           {
               String name = request.getParameter("name");
               String pss = request.getParameter("regno");
               passwd = Integer.parseInt(pss);
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from preused where name='"+name+"' and reg ="+passwd+"");
               
               if(rs.next())
               {       
           %>
             <h3 align="center">PRODUCT DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg"  value="<%=rs.getInt("reg")%>" ></td>
            </tr>
            <br>
            <tr>
                <td>TYPE</td><td><input type="text" name="ty" value="<%=rs.getString("type")%>" ></td>
            </tr>
             
            <tr>
                <td> NAME</td><td><input type="text" name="na" value="<%=rs.getString("name")%>" ></td>
            <br>
            </tr>
           
            <tr>
                <td>MODEL</td><td><input type="text" name="mod" value="<%=rs.getString("model")%>" ></td>
            </tr>
            <tr>
                <td>YEAR</td><td><input type="text" name="yr" value="<%=rs.getString("yearmade")%>" ></td>
            </tr>
            <tr>
                <td>QUANTITY</td><td><input type="text" name="pt" value="<%=rs.getInt("quantity")%>" ></td>
            </tr>
            <tr>
                <td>UNIT PRICE</td><td><input type="text" name="sp" value="<%=rs.getInt("price")%>"></td>
            </tr>
            <br>
              <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="mi" value="<%=rs.getInt("total")%>"></td>
            </tr>
            
            <br>
            </table>
        
           
           <br>
           <%
               }
         
            } 
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
        
              <%!
          
         %>  
           <%
           try
           {
               String name = request.getParameter("name");
               String pss = request.getParameter("regno");
               passwd = Integer.parseInt(pss);
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from bike where name='"+name+"' and reg ="+passwd+"");
               
               if(rs.next())
               {       
           %>
             <h3 align="center">PRODUCT DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg"  value="<%=rs.getInt("reg")%>" ></td>
            </tr>
            <br>
            <tr>
                <td>TYPE</td><td><input type="text" name="ty" value="<%=rs.getString("type")%>" ></td>
            </tr>
             
            <tr>
                <td> NAME</td><td><input type="text" name="na" value="<%=rs.getString("name")%>" ></td>
            <br>
            </tr>
           
            <tr>
                <td>MODEL</td><td><input type="text" name="mod" value="<%=rs.getString("model")%>" ></td>
            </tr>
            <tr>
                <td>YEAR</td><td><input type="text" name="yr" value="<%=rs.getString("yearmade")%>" ></td>
            </tr>
            <tr>
                <td>QUANTITY</td><td><input type="text" name="pt" value="<%=rs.getInt("qantity")%>" ></td>
            </tr>
            <tr>
                <td>UNIT PRICE</td><td><input type="text" name="sp" value="<%=rs.getInt("price")%>"></td>
            </tr>
            <br>
              <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="mi" value="<%=rs.getInt("total")%>" ></td>
            </tr>
            
            <br>
            </table>
            <br>
            <br>
           
           <br>
           <%
               }
        
           }
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
        
             <%!
           
         %>  
           <%
           try
           {
               String name = request.getParameter("name");
               String pss = request.getParameter("regno");
               passwd = Integer.parseInt(pss);
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from customer where name='"+name+"' and reg ="+passwd+"");
               
               if(rs.next())
               {       
           %>
             <h3 align="center">CUSTOMER DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg"  value="<%=rs.getInt("reg")%>" ></td>
            </tr>
            
            <tr>
                <td>Name</td><td><input type="text" name="ty" value="<%=rs.getString("name")%>"></td>
            </tr>
             
            <tr>
                <td> Work Id</td><td><input type="text" name="na" value="<%=rs.getString("wokid")%>"></td>
            
            </tr>
           <tr>
                <td>Address</td><td><input type="text" name="yr" value="<%=rs.getString("addr")%>" ></td>
            </tr>
            <tr>
                <td>Profession</td><td><input type="text" name="mod" value="<%=rs.getString("prof")%>" ></td>
            </tr>
           
            <tr>
                <td>Email</td><td><input type="text" name="pt" value="<%=rs.getString("email")%>" ></td>
            </tr>
            <tr>
                <td>Phone Number</td><td><input type="text" name="sp" value="<%=rs.getString("phone")%>"></td>
            </tr>
           
              <tr>
                <td>Product Purchased</td><td><input type="text" name="mi" value="<%=rs.getString("product")%>"></td>
            </tr>
            <tr>
                <td>Total Price </td><td><input type="text" name="mi" value="<%=rs.getString("totalamount")%>"></td>
            </tr>
            
            <br>
            </table>
            <br>
            
           
          
           <%
               }
         
           }
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
            
             <%!
          
         %>  
           <%
           try
           {
               String name = request.getParameter("name");
               String pss = request.getParameter("regno");
               passwd = Integer.parseInt(pss);
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject", "root", "root");
               Statement stat = con.createStatement();
              ResultSet rs=stat.executeQuery("select  *  from debtor where name='"+name+"' and reg ="+passwd+"");
               
               if(rs.next())
               {       
           %>
             <h3 align="center">DEBTOR'S  DETAILS</h3>
            <table align="center" border="" col="2">
            <tr>
                <td>Reg No:</td><td><input type="number" name="reg"  value="<%=rs.getInt("reg")%>" ></td>
            </tr>
            <br>
            <tr>
                <td>NAME</td><td><input type="text" name="ty" value="<%=rs.getString("name")%>"></td>
            </tr>
             
            <tr>
                <td> WORK ID</td><td><input type="text" name="na" value="<%=rs.getString("workid")%>" ></td>
           
            </tr>
           
            <tr>
                <td>PROFESSION</td><td><input type="text" name="mod" value="<%=rs.getString("profes")%>"</td>
            </tr>
            <tr>
                <td>ADDRESS</td><td><input type="text" name="yr" value="<%=rs.getString("addr")%>" ></td>
            </tr>
            <tr>
                <td>PAYMENT PLAN</td><td><input type="text" name="pt" value="<%=rs.getString("method")%>" ></td>
            </tr>
            
              <tr>
                <td>TOTAL AMOUNT</td><td><input type="text" name="mi" value="<%=rs.getString("totalamt")%>"></td>
            </tr>
            <tr>
                <td>AMOUNT PAID</td><td><input type="text" name="sp" value="<%=rs.getString("amtpaid")%>" ></td>
            </tr>
            <tr>
                <td>OUTSTANDING DEBT</td><td><input type="text" name="sp" value="<%=rs.getString("balance")%>" ></td>
            </tr>
            
            </table>
            
           <%
               }
         
           }
           catch(Exception ee)
           {
              out.print(ee);
ee.printStackTrace();
           }
        %>
                
                       
                
            
    </body>
</html>
