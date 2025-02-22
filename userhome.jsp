<!DOCTYPE html>
<html lang="en">

<head>
<!--<title>contacts</title>-->
<meta charset="utf-8">    
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name = "format-detection" content = "telephone=no" />
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css" >
<link rel="stylesheet" href="css/style.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script> 
<script src="js/forms.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>

<%
    String user = (String)session.getAttribute("v");
%>
</head>
<body>
<!--header-->
<section class="header indent">
    <div class="container">
        <header>
            <h1 class="navbar-brand navbar-brand_ logo"><a href="#">Discovery of Ranking Fraud for Mobile Apps</a></h1>
            <nav class="navbar navbar-default navbar-static-top my_navbar clearfix" role="navigation">
                <ul class="nav sf-menu clearfix">
                    <li class="active"><a href="userhome.jsp">Home</a><em></em></li>
                    <li><a href="myaccount.jsp">My Account</a><em></em></li>
                  <li><a href="products.jsp">Mobile Apps</a><em></em></li>
                  <li><a href="index.html">Logout</a><em></em></li>
                </ul>
            </nav>
            <em></em>
        </header>
    </div>
    
</section>
<div class="global">
    <div style="background-image: url('img/picture1.jpg');height: 680px;width: 1365px">
<!--        <figure><img src="img/picture1.jpg" alt=""></figure>-->
<div style="border: solid 1px;border-color: white;border-radius: 2px;height: 680px;width: 1365px;">
    <div style="margin-left: 50px;background-image: url('img/banner5.jpg');margin-top: 190px;border: solid;border-radius: 15px;border-color: gray;height: 380px;width: 1250px">
        <center><br><br>
            <h2 style="color: white">welcome&nbsp;&nbsp;&nbsp; <%=user%></p></h2><br>
           
        </center>
    </div>
</div>
    </div>
    <!--content-->
    
    
</div>
<!--footer-->
<footer hidden>
    <div class="container">
        <div class="row">
            <article class="col-lg-3 col-md-3 col-sm-3 col-lg-offset-1 col-md-offset-1 privacyBox">
                <p>Company Name &copy; 2015 </p>
				<p class="swty">Web Design: <a href="http://www.metamorphozis.com" class="bhfy">Free Website Templates</a></p>
            </article>
        </div>
    </div>
</footer>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>