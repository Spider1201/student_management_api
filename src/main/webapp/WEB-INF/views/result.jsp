<jsp:useBean id="student" scope="request"
             type="com.spider.Student_Management_Api.model.Student"/>
<%--
  Created by IntelliJ IDEA.
  User: KRITEX
  Date: 6/19/2026
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student Result</title>
</head>
<body>
<h2>Student Details</h2>
<p>ID: ${student.id}</p>
<p>Name: ${student.firstName} ${student.lastName}</p>
<p>Email: ${student.email}</p>
<p>Course: ${student.course}</p>
<p>Age: ${student.age}</p>

<h3>Welcome Back ${student.firstName} ${student.lastName}</h3>

<form action="deleteStudent" method="post">
  <input type="hidden" name="id" value="${student.id}">
  <button type="submit">Delete Student</button>
</form>

<form action="showUpdateForm" method="get">
  <input type="hidden" name="id" value="${student.id}">
  <button type="submit">Update Student</button>
</form>
</body>
</html>
