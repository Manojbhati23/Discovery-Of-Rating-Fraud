<%@page import="action.Database"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
try {
            String fileName = request.getParameter("filename");
            String rating = request.getParameter("ratingstatus");
            Connection conn = new Database().getConnection();
            Statement smt = conn.createStatement();
            
            smt.executeUpdate("update global set localrating = '"+rating+"' where file_name='"+fileName+"' ");
              System.out.println("in dowload update");
              response.sendRedirect("products1.jsp?sucessfully_rated");
        }catch (SQLException ex) {
            ex.printStackTrace();
        }
%>