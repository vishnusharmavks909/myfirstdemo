
<%@page  import="java.sql.*" %>
<%
String nm1=request.getParameter("nm1");
String nm2=request.getParameter("nm2");
String nm3=request.getParameter("nm3");
String nm4=request.getParameter("nm4");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myweb","root","");
int i=con.createStatement().executeUpdate("insert into shops values (null,'"+nm1+"','"+nm2+"','"+nm3+"') ");
if(i>0)
    {
 response.sendRedirect("shops.jsp?msg=Record Inserted");
 }
else
    {
response.sendRedirect("upload shops.jsp?msg=Record Not Inserted");
}
}catch(Exception e)
        {
out.println(e);
}
%>