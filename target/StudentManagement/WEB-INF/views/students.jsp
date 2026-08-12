<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
</head>

<body>

<h1>Student Management System</h1>

<h2>Students</h2>

<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.course}</td>

            <td>
                <a href="${pageContext.request.contextPath}/edit/${student.id}">
                    Edit
                </a>

                |

                <a href="${pageContext.request.contextPath}/delete/${student.id}">
                    Delete
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<br>

<h2>Add Student</h2>

<form action="${pageContext.request.contextPath}/add" method="post">

    <label>Name:</label>
    <input type="text" name="name" required>

    <br><br>

    <label>Email:</label>
    <input type="email" name="email" required>

    <br><br>

    <label>Course:</label>
    <input type="text" name="course" required>

    <br><br>

    <button type="submit">Add Student</button>

</form>

</body>
</html>