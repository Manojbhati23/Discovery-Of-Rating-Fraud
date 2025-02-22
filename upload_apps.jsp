<%@page import="action.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                    <li><a href="globalhome.jsp">Home</a><em></em></li>
                    <li><a href="user_details.jsp">User Deatail</a><em></em></li>
                    <li class="active"><a href="upload_apps.jsp">Upload Apps</a><em></em></li>
                    <li><a href="globallogin.jsp">Logout</a><em></em></li>
                </ul>
            </nav>
            <em></em></header>
    </div>
    
</section>
<div class="global">
    <div style="background-image: url('img/picture1.jpg');height: 850px;width: 1360px">
<!--        <figure><img src="img/picture1.jpg" alt=""></figure>-->
<div style="height: 680px;width: 1360px;">
    <center>
            <br><br><br><br><br><br><h1 style="color: white;font-weight: bold">Upload Apps Here</p></h1><br>
        </center>
    <center>
                <form action="upload_process.jsp" method="post" enctype="multipart/form-data">
                <label style="margin-left: -250px;font-weight: bold;font-size: large; color: blue">Locate App : </label><input type="file" name="upload" style="margin-left: 200px; margin-top: -30px"><br />
                <label style="margin-left: -250px;font-weight: bold;font-size: large; color: blue">Locate Image : </label><input type="file" name="uploadimg" style="margin-left: 200px; margin-top: -25px"><br />
                <input type="submit" value="" style="border-radius: 6px;background-image: url('img/button5.png');height: 50px;width: 160px">
                </form>
        </center>
    <div style="margin-left: 120px;background-image: url('img/banner1.png');margin-top: 50px;border: solid;border-radius: 15px;border-color: gray;height: 400px;width: 1100px">
        
        
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