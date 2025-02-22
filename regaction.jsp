<%@page import="java.sql.Statement"%>
<%@page import="action.Database"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
    System.out.println("Name " + name);
    String email = request.getParameter("email");
    System.out.println("Email " + email);
    String pass = request.getParameter("pass");
    System.out.println("Pass " + pass);
    String cno = request.getParameter("cno");
    System.out.println("Cno " + cno);
    String loc = request.getParameter("loc");
    System.out.println("loc " + loc);
    Connection con = Database.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into user (name, email, pass, contactno, location) values('"+name+"','"+email+"','"+pass+"','"+cno+"','"+loc+"')");
    if(i!=0)
    {
        response.sendRedirect("contacts.html?msg=Registration_Success");
    }
    else
    {
        response.sendRedirect("contacts.html?msg=Registration Failed");
    }
%>