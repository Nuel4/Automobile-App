<%-- 
    Document   : customerinfo.jsp
    Created on : 11 Mar, 2019, 8:23:00 AM
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
        <title>Registration page</title>
        <style>
      
           img{
               margin-top: 0;
                width: 120px;
                background-color: #3f5b1b5;
            }
            #im{
                background-color: green;
            }
             body{
                
                font-family: Arial, Helvetica, sans-serif;
              
            }
            
            
            .backimg{
              
                background-color: whitesmoke;
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
                 background-image: url(images/ccca.jpg);
            }
            .hero_text{
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                color: white;
            }
            #gr{
                color: yellow;
            }    
            .row{
               color: greenyellow;
            }
            h1{
                background-color: darkgoldenrod;
            }


form{
  max-width:250px;
  margin:0 auto;
  text-align:left;
}
input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:goldenrod;
  color:white;
  transition:all .3s ease-in-out;
}
input[type="submit"]:hover{
  cursor:pointer;
  box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);
}
.container1{margin-right:50px; }
.nowrap {
  white-space: nowrap ;
}
.button1{white-space: nowrap ;}

        </style>
            
</head>
<body>

 



    
        
        <%!
        int rgn;
          int num;
          String na="";
            %>
            <%
                try
                {
                  Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashaproject","root","root");
 Statement stmt=con.createStatement();
String q ="select max(reg) from customer";
ResultSet ss =stmt.executeQuery(q);
 if(ss.next()) 
 {
    
     num = ss.getInt(1)+1;
     //na=""+num;
 }
 else
 {
     num=1;
     
 }
                }
                catch(Exception e)
                {
                 num=1;
                }
                %>
        
                
                <div id="im" class="gre">
       <div id="im">
      
        <div class="container1" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:10%"><img src="images/carlo.png" style="width:100%"></div>
    <ul class="nowrap" style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html">Home</a></li>&nbsp;&nbsp;
        <li><a href="index.html">About Us</li>&nbsp;&nbsp;
        <li><a href="index.html">Contact Us</li>&nbsp;&nbsp;
        <li><a href="index.html"> Address</li>&nbsp;&nbsp;
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:#000; text-decoration: none;">Logout</a></li>
        <li class="button1" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="customerinfo.jsp" style="color:#000; text-decoration: none;">Sign up</a></li>
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <div class="hero_text">
        <div class="container">
     
  
         <h1 align="center">CUSTOMERS DETAILS</h1> 
       
        
        <center> <div style="width:30%; float: none;">
             <form method="post" action="cusinfo.jsp">    
                 <div class="row">
            <tr>
           
            <tr>
                <td>Reg No:</td><td><input type="text" name="rt" value="<%=num%>" ></td>
            </tr>
            <tr>
               <td>FULL NAME</td><td><input type="text" name="name"></td>
            </tr>
            <br>
            <div>
              <tr>
               <td>PASSWORD</td><td><input type="password" size="25" name="pas"></td>
            </tr>
            </div>
            <br>
            <tr>
                <td> Work ID</td><td><input type="text" name="wo"></td>
           
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
            <tr>
                <td></td>
                &nbsp;&nbsp;<td> <input type="SUBMIT" name="SUBMIT" value="SUBMIT"></td>
                
              </tr>
                 </tr>
                 </div>
           
        </form>
        
            </div>
        </center>
        </div>
        </div></div>
       </div></div>
    </body>
</html>
