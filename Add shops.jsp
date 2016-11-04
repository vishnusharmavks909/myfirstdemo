<%@page  import="java.sql.*;" %>
<% 
    String str="msg";
    System.out.println("msg");
%>
<title></title>
 <link rel="stylesheet" href="tables.css">

<form action="upload shops.jsp">
     <div class="scrollable">
<table>
    <tr> 
        <th>Id</th>
        <th>For</th>
        <th>Shop Name</th>
        <th>Address</th>
        
    </tr>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myweb","root","");
ResultSet rs= con.createStatement().executeQuery("select * from shops");
while(rs.next())
    {
%><tr><td><%
out.println(rs.getString(1));%>
</td>
<td><%
out.println(rs.getString(2));%>
</td>
<td><%
out.println(rs.getString(3));%>
</td>
<td><%
out.println(rs.getString(4));%>
</td>
</tr>
<%
  }
}catch(Exception e)
        {
out.println(e);
}
%>
<tr>
    <td>Edit Here</td>
    <td><input type="text" name="nm1" required /> </td>
    <td><input type="text" name="nm2" required /></td>
    <td><input type="text" name="nm3" required /></td>
    <td><input type="text" name="nm4" required /></td>
    <td><input type="submit" value="Enter"/> </td>
</tr>
</table>
 </div>
</form>