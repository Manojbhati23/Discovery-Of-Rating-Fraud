<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
<%
    String uname = null;
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    Connection con = Database.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from user where name='" + name + "'");
    if (rs.next()) {
        uname = rs.getString("name");
        if (rs.getString("name").equals(name) && (rs.getString("pass").equals(pass))) {
            session.setAttribute("n1", uname);
            System.out.println(uname);
            session.setAttribute("v", name);
            System.out.println(name);
            System.out.println("Success");
            response.sendRedirect("userhome.jsp?msg=Login Successfully");
        } else {
            System.out.println("Failed");
            response.sendRedirect("userlogin.jsp?msgg=Incorrect Username or Password");
        }
    } else {
        System.out.println("Not Enter");
        response.sendRedirect("userlogin.jsp?err=User does not exist");
    }
%>