<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="com.demo.model.Student"%>

<%
Student student = (Student) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>

<head>

<title>Edit Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-warning text-dark">

<h2>Edit Student</h2>

</div>

<div class="card-body">

<form action="${pageContext.request.contextPath}/update" method="post">

<input type="hidden" name="id" value="<%=student.getId()%>">

<div class="mb-3">

<label>Name</label>

<input type="text"
       class="form-control"
       name="name"
       value="<%=student.getName()%>"
       required>

</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
       class="form-control"
       name="email"
       value="<%=student.getEmail()%>"
       required>

</div>

<div class="mb-3">

<label>Course</label>

<input type="text"
       class="form-control"
       name="course"
       value="<%=student.getCourse()%>"
       required>

</div>

<button class="btn btn-success">

Update Student

</button>

<a href="${pageContext.request.contextPath}/students"
   class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</body>

</html>