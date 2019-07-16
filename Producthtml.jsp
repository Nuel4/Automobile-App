<%-- 
    Document   : Product.html
    Created on : 12 Mar, 2019, 10:47:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
      
           img{
               margin-top: 0;
              
               
                padding: 20px;
                left: 20px;
                margin-left: 0px;
            }
            .container{
                background-color: green;
               width: 10px;
                padding: 10px;
               
            }
             body{
                
                font-family: Arial, Helvetica, sans-serif;
              
            }
            
            
            .backimg{
              
                
                height: 593px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
                
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
            #slider{
                border-bottom: 20px;
                
            }
            #fluid{
                margin-top: 100px;
                width: cover;
                 position: relative;
            }
            .blk{
               
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
                margin-top: 5px;
                
            }
            .dblock{
                margin-top: 158px;
                padding-left: 20px;
                padding-right: 20px;
            }
        </style>
        
    </head>
   
    <body>
         
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>  
    </head>
    <body>
       <!-- Navigation Bar -->
       <div id="im" class="gre">
       <div id="im">
      
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; padding:10px 2rem;">
    <div style="width:15%"><img src="images/carlo.png" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li><a href="index.html">Home</a></li>
        <li><a href="index.html">About Us</li>
        <li><a href="index.html">Contact Us</li>
        <li><a href="index.html"> Address</li>
        <li class="button" style="background: goldenrod; padding:3px 15px; border-radius:5px"><a href="alternate.jsp"  style="color:#000; text-decoration: none;">Login</a></li>
       
    </ul>
</div>
 <div class="backimg" style="position: relative">
      
        <div class="hero_text">
        <div class="container">
   
  </div>
</nav>
 </section>
 <!---slider--->
 <div id="slider">  
     <div id="headerslider" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#headerslider" data-slide-to="0" class="active"></li>
    <li data-target="#headerslider" data-slide-to="1"></li>
    <li data-target="#headerslider" data-slide-to="2"></li>
    
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <a href="Bikehtml.jsp"> <img src="images/bike3016.jpg" id="fluid"></a>
      <div class="carousel-caption">
          <h3>Made specially for your luxury </h3> 
      </div>
    </div>
      <div class="carousel-item">
        <a href="Carhtml.jsp"><img src="images/ccca.jpg" class="blk"></a>
      <div class="carousel-caption">
          <h3> The best and high quality for your comfort.</h3> 
      </div>
    </div>
    <div class="carousel-item">
        <a href="Carhtml.jsp"><img src="images/cccaa.png" class="dblock"></a>
      <div class="carousel-caption">
          <h3>Luxury at its peak</h3> 
      </div>
    </div>
      <div class="carousel-item">
          <a href="Carhtml.jsp"><img src="images/c1.webp" class="d-block img-fluid"></a>
      <div class="carousel-caption">
          <h3>Experience the world CAR</h3> 
      </div>
    </div>
     
    </div>
  </div>
  <a class="carousel-control-prev" href="#headerslider" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#headerslider" role="button" data-slide="next">
    <span class="carousel-control-next-icon"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
    
         
   
      </div>
    </div>
    </div>
  </div>
     </div>
   </div></div></div></div></a>
        <form>
            <h1> Please click on car image if you want cars or click on bike if you want bike </h1>
            <center> <table border="" margin>
           
            </table>
            </center>
        </form>
    </body>
</html>
