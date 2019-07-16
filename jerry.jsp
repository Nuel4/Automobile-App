<%-- 
    Document   : paymentmethod.jsp
    Created on : 13 Mar, 2019, 2:27:08 PM
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
    </head>
    <body>
        
         <%
             
             
         String a=request.getParameter("idd");
         int num = Integer.parseInt(a);
         //out.print(a);
          %> 
          <% 
      
          
          int id;
            %>
            <%
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 Statement stmt=con.createStatement();
String q ="select * from newcars where idnum ='"+num+"'";
ResultSet ss =stmt.executeQuery(q);

 if(ss.next()) 
 {
    id =ss.getInt(1);
    String s = "images/car" + id + ".jpg";
    out.println("<img src='" + s + "'>");
 }
 %>
 <%
 
                }
                catch(Exception e)
                {
                   e.printStackTrace();
                }
                %>
        
       
       
         <h1>METHOD OF PAYMENT</h1>
        
        <form method="post" action="Car1.jsp">
            <input type="hidden" name="idd"   value="<%=a%>" >
                <table border="1" col="1">
                    <th></th>
                    <th>Vehicle Id</th>
                    <th>Discount</th>
                    <th>Charges</th>
                    
                    
                    <tr>
                        <td>VEHICLE ID</td>
                        
                        <td><input type="text" name="veh" value="<%=a%>"></td></td>
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