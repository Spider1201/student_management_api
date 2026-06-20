<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>title</title>
</head>
<body>
Welcome, Fill the form below to apply
<form action="addStudent">
    Enter Id : <input type="number" name="id"><br>
    Enter Your First Name : <input type="text" name="firstName"><br>
    Enter Your Last Name : <input type="text" name="lastName"><br>
    Enter Your Email : <input type="email" name="email"><br>
    Enter Your Course : <input type="text" name="course"><br>
    Enter Your Age : <input type="number" name="age"><br>

    <button type="submit">Submit</button>
</form>
<hr>
<form action="getStudent" method="get">
    Enter Student Id : <input type="number" name="id"><br>
    <button type="submit">Find</button>
</form>
</body>
</html>