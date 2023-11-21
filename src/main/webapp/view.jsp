<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.crud_jsp.BoardDAO, com.example.crud_jsp.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Form</title>
</head>
<body>

<%
  BoardDAO boardDAO = new BoardDAO();
  String id = request.getParameter("id");
  BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View Form</h1>
<table>
  <tr><td>Title:</td><td><%= u.getTitle() %></td></tr>
  <tr><td>Writer:</td><td><%= u.getWriter() %></td></tr>
  <tr><td>Content:</td><td><%= u.getContent() %></td></tr>
  <!-- Add more fields as needed -->
  <tr><td><a href="posts.jsp">View All Records</a></td></tr>
</table>

</body>
</html>
