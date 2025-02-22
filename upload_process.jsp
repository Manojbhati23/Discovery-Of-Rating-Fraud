<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="action.Database"%>
<%@page import="util.ContentExtractor"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileFilter" %>
<html>
    <head>
        <title>
        </title>
    </head>
    <body>
        <%
        Connection conn=null;
        PreparedStatement pstmt = null;  
        try {
            
            File f = null;
            DiskFileItemFactory diskFile = new DiskFileItemFactory();
            diskFile.setSizeThreshold(1 * 1024 * 1024 * 1024);
            diskFile.setRepository(f);
                        
            ServletFileUpload sfu = new ServletFileUpload(diskFile);
            List item = sfu.parseRequest(request);
            Iterator itr = item.iterator();
            FileItem items = (FileItem)itr.next();
            String str = ContentExtractor.getStringFromInputStream(items.getInputStream());
            InputStream input = items.getInputStream();
            int size=input.available();
            Path path = Paths.get(items.getName());
            Path fileName = path.getFileName();
            System.out.println("file name is " +fileName.toString());
                       
            conn = new Database().getConnection();
            pstmt = conn.prepareStatement("insert into global (file_name, size, file, image) values(?,?,?,?)");
//            pstmt = conn.prepareStatement("insert into local (file_name1, size1, file1, image1) values(?,?,?,?)");
            pstmt.setString(1, fileName.toString());
            pstmt.setInt(2, size);
            pstmt.setBinaryStream(3, items.getInputStream(),items.getInputStream().available());
            pstmt.setBinaryStream(4, items.getInputStream(),items.getInputStream().available());
            int i =   pstmt.executeUpdate();
            if(i!=0){
               response.sendRedirect("upload_apps.jsp?App_uploaded_successfully...");
            }
            else{
                response.sendRedirect("upload_apps.jsp?Uploading_failed...");
            }
        } catch(Exception ex){
             response.sendRedirect("upload_apps.jsp?Error");
            ex.printStackTrace();
        } finally {            
            conn.close();
        }
%>
    </body>
</html>