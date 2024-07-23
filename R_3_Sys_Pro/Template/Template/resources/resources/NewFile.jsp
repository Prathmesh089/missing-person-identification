<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="com.mybank.dbconnect.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
      <%
                                          
                                          try
                                          {
                                          Connection conn=ConnectDB.getConnect();
                                          Statement statement=conn.createStatement();
                                          ResultSet resultSet = statement.executeQuery("select * from accounts");
                                          while(resultSet.next())
                                          {
                                          
                                          %>
                                          <tbody>
                                                   <tr>
                                                   <td> <%= resultSet.getString(1) %> </td>
                                                   <td> <%= resultSet.getString(2) %> </td>
                                                   <td><%=resultSet.getString(3) %></td>
                                                   <td><%=resultSet.getInt(4) %></td>                                                   </tr>
                                          </tbody>
                                                   <%
                                                   }
                                                   //connection.close();
                                                   } catch (Exception e) {
                                                   e.printStackTrace();
                                                   }
                                                   %>
								          
										</thead>
				 </table>
  <tr>
    <td>Magazzini Alimentari Riuniti</td>
    <td>Giovanni Rovelli</td>
    <td>Italy</td>
  </tr>
</body>
</html>