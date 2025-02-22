<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="action.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--<title>Products</title>-->
<meta charset="utf-8">    
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
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
<script src="js/jquery.equalheights.js"></script> 
<script src="js/jquery.ui.totop.js"></script>
</head>
<body>
<!--header-->
<section class="header indent">
    <div class="container">
        <header>
            <h1 class="navbar-brand navbar-brand_ logo"><a href="#">Discovery of Ranking Fraud for Mobile Apps</a></h1>
            <nav class="navbar navbar-default navbar-static-top my_navbar clearfix" role="navigation">
                <ul class="nav sf-menu clearfix">
                    <li><a href="userhome.jsp">Home</a><em></em></li>
                  <li><a href="myaccount.jsp">My Account</a><em></em></li>
                  <li class="active"><a href="products.jsp">Mobile Apps</a><em></em></li>
                  <li><a href="userlogin.jsp">Logout</a></li>
                </ul>
            </nav>
            <em></em></header>
    </div>
</section>
<div class="global">
    <div class="picBox">
        <figure><img src="img/picture1.jpg" alt=""></figure>
    </div>
    <!--content-->
    <div class="container">
        <div class="row">
            <section class="col-lg-8 col-md-8 col-sm-8">
                <div class="row">
<!--                    <div style="border: solid 1px;border-color: white;border-radius: 2px;height: 680px;width: 1365px;">-->
    <div style="margin-left: -80px;background-image: url('img/banner7.jpg');margin-top: -60px;border: solid;border-radius: 10px;border-color: gray;height: 680px;width: 1358px">
        <table   style="margin-left: 20px">
                    <tr>&nbsp;&nbsp;&nbsp;
                        <%
                            InputStream n1 = null;
                            String logo = null;
                            String fname = null;
                            int i = 1;
//                            String sname = request.getParameter("focus");
//                            session.setAttribute("n2", sname);
//                            System.out.println("Search " + sname);
                            Connection con = Database.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from global");
                            while (rs.next()) {
                                fname = rs.getString("file_name");
                                String len = rs.getString("image");
                                int len1 = len.length();
                                byte[] b1 = new byte[len1];
                                n1 = rs.getBinaryStream("image");
                                int index = n1.read(b1, 0, len1);
                                System.out.println("Index is printing here : "+index);
                                String putFile = request.getRealPath(request.getContextPath()).substring(0, request.getRealPath(request.getContextPath()).lastIndexOf(File.separator) + 1) + "img" + File.separator;
                                File file = new File(putFile + rs.getString("file_name"));
                                logo = rs.getString("file_name");
                                if (file.exists()) {
                                    file.delete();
                                } else {
                                    OutputStream out1 = new FileOutputStream(file);
                                    while (index != -1) {
                                        out1.write(b1, 0, index);
                                        index = n1.read(b1, 0, len1);
                                    }
                                    out1.close();
                                    i++;
                                }
                        %>
                        <td  padding="0px"style="border: 0px;">
                    <center>
                        <img src="img/<%=fname%>.jpg" alt="fine" style="width: 150px;height: 150px;margin-left: 150px"></img><br /><br />
                            <h3 style="margin-left: 140px;color: white">Name : <%=rs.getString("file_name")%></h3><br>
                            <h3 style="margin-left: 140px;color: white">Size : <%=rs.getString("size")%> KB</h3><br>
                            <h3 style="margin-left: 140px;color: white">Ranking : <%=rs.getString("localrating")%></h3><br>
                            <h3 style="margin-left: 140px;color: white">Download Rating : <%=rs.getString("download")%></h3><br>
                            <h2><a href="compare.jsp?<%=fname%>" style="height: 180px;border-radius: 3px;width: 450px;color: white;margin-left: 140px;background-image: url('img/button.jpg')">Global Review</a></h2>
                            <h3><a href="download.jsp?<%=fname%>" style="color: white;margin-left: 140px">Download Now</a></h3><br />
                            <form action="user_rate.jsp" method="post">
                                <input type="hidden" value="<%=fname%>" name="filename">
                                <select style="width: 100px;margin-left: 140px;height: 30px;border-radius: 5px;font-size: 18px" name="ratingstatus">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <option selected="">Rank it</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            </select><br /><br /><br />
                            <input type="submit" value="Provide Rank" style="margin-left: 140px;border-radius: 5px"><br /><br /><br />
                            </form>
                    </center>
                        </td>  
                        <%
                            }
                        %>
                    </tr>
                </table> 
</div>
                </div>
            </section>
            
        </div>
    </div>
    
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