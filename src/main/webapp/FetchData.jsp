<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

table {
    width: 80%;
    border-collapse: collapse;
    margin: 20px 0;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5); /* Shadow around table */
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black */
    border-radius: 10px;
    overflow: hidden;
    justify-content: center;
    align-items: center;
    text-align: center;
    margin-top: 5%;
    margin-left: 12%;
}

/* Header Row */
table tr:first-child {
    background-color: #111; /* Darker header background */
}

table tr:first-child td {
    font-size: 18px;
    color: #00f0ff; /* Neon blue for header text */
    padding: 15px;
    text-align: center;
    font-weight: bold;
    border-bottom: 2px solid #00f0ff;
}

/* Table Data Rows */
table tr td {
    padding: 12px;
    font-size: 16px;
    text-align: center;
    color: #fff; /* White text for table rows */
    border-bottom: 1px solid rgba(255, 255, 255, 0.2); /* Subtle border */
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

/* Hover effect for rows */
table tr:hover td {
    background-color: #00f0ff; /* Neon blue row highlight */
    color: #000; /* Dark text on hover */
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

/* Table Rows Animations */
table tr {
    animation: fadeIn 0.8s ease-in-out;
}

/* Smooth fade-in effect */
@keyframes fadeIn {
    0% {
        opacity: 0;
        transform: translateY(-10px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Hover effect for row borders */
table tr td {
    position: relative;
}

table tr:hover td::before {
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: linear-gradient(90deg, #ff00ff, #00f0ff); /* Gradient border */
    opacity: 0.3;
    z-index: -1; /* Behind the text */
    border-radius: 5px;
}

/* Responsive Design */
@media (max-width: 768px) {
    table {
        width: 100%; /* Full width on small screens */
    }

    table tr:first-child td {
        font-size: 16px;
    }

    table tr td {
        font-size: 14px;
    }
}

</style>
</head>
<%@include file="Header.jsp" %>
<body>
	<table border="2">
		<tr>
			<td>Name:</td>
			<td>Total Leaves:</td>
			<td>Taken Leaves:</td>
			<td>Delete:</td>
		</tr>
		<c:forEach var="d" items="${l}">
			<tr>
				<td>${d.name}</td>
				<td>${d.total_leaves}</td>
				<td>${d.leaves_taken}</td>
				<td><a href="/${d.emp_id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>