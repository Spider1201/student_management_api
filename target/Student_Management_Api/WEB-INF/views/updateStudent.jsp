<%--
  Created by IntelliJ IDEA.
  User: KRITEX
  Date: 6/20/2026
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="updateStudent" method="post">

    <input type="hidden"
           name="id"
           value="${student.id}">

    First Name:
    <input type="text"
           name="firstName"
           value="${student.firstName}">

    <br>

    Last Name:
    <input type="text"
           name="lastName"
           value="${student.lastName}">

    <br>

    Email:
    <input type="text"
           name="email"
           value="${student.email}">

    <br>

    Course:
    <input type="text"
           name="course"
           value="${student.course}">

    <br>

    Age:
    <input type="number"
           name="age"
           value="${student.age}">

    <br>

    <button type="submit">
        Update Student
    </button>

</form>
</body>
</html>
