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

</head>
<body>
<!--header-->
<section class="header indent">
    <div class="container">
        <header>
            <h1 class="navbar-brand navbar-brand_ logo"><a href="#">Discovery of Ranking Fraud for Mobile Apps</a></h1>
            <nav class="navbar navbar-default navbar-static-top my_navbar clearfix" role="navigation">
                <ul class="nav sf-menu clearfix">
                    <li><a href="index.html">Home</a><em></em></li>
              <li class="sub-menu"><a href="about.html">App Store<span></span></a><em></em>
<ul class="submenu">
                            <li><a href="globallogin.jsp">Global Anamoly</a></li>
                            <li><a href="locallogin.jsp">Local Anamoly</a></li>
                            </li>
                            <li class="triangle"></li>
                        </ul>
                  </li>
                  <li class="active"><a href="userlogin.jsp">User Login</a><em></em></li>
                  <li><a href="contacts.html">Register</a></li>
                </ul>
            </nav>
            <em></em>        </header>
    </div>
    
</section>
<div class="global">
    <div style="background-image: url('img/picture1.jpg');height: 680px;width: 1365px">
<!--        <figure><img src="img/picture1.jpg" alt=""></figure>-->
<div style="border: solid 1px;border-color: white;border-radius: 2px;height: 680px;width: 1365px;">
    <div style="margin-left: 260px;background-image: url('img/bground1.jpg');margin-top: 200px;border: solid;border-radius: 15px;border-color: gray;height: 400px;width: 800px">
        <center><br><br><br>
            <h2 style="color: white">User Account Login</h2><br>
            <form action="user_login_action.jsp" method="post">
                
                       <label style="font-size: 20px;color: white">Username</label>&nbsp;&nbsp;<input type="text" class="textbox1" style="margin-left: 11px" name="name" required=""/><br /><br />
                       <label style="font-size: 20px;color: white">Password</label>&nbsp;&nbsp;<input type="password" class="textbox1" style="margin-left: 12px" name="pass" required=""/><br /><br /><br>
                       <input style="background-image: url('img/button_1.png');height: 45px;width: 110px;border-radius: 8px;" type="submit" value="" name="submit">
        </form>
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