<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    
        if(name.equals("global") && pass.equals("global")){
            
            response.sendRedirect("globalhome.jsp");
        }
%>