<%@page import="pack.DbUpdator"%>
<%@page import="action.Database"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%
    try {
        Blob blob = null;
        String str = null;
        String dec = null;
        String filenm = request.getQueryString();
        System.out.println("Filename : "+filenm);
        Connection con1 = new Database().getConnection();
        Statement st1 = con1.createStatement();
        String select = "select * from global where file_name ='" + filenm + "'";
        ResultSet rs1 = st1.executeQuery(select);
        if (rs1.next()) {
            blob = rs1.getBlob("file");

        }
        if (blob != null) {
            DbUpdator.updator(filenm);
            String filename = filenm;
//            byte a[] = blob.getBytes(1, (int) str.length());
            byte a[] = blob.getBytes(1, (int) blob.length());
//            byte a[] = dec.getBytes();
            response.setContentType("text/plain");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
            OutputStream os = response.getOutputStream();
            os.write(a);
            os.close();
            a = null;
            System.out.println("File Downloded");
            response.sendRedirect("products.jsp?File_Successfully_downloaded");
        } else {
            System.out.println("error here");
            System.out.println("filenm " + filenm);
            response.sendRedirect("products.jsp?error");
        }
    } catch (SQLException ex) {
        response.sendRedirect("products.jsp?error");
        ex.printStackTrace();
    }
%>