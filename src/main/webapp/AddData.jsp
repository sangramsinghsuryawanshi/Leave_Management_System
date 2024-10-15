<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
/* Level 3 - Futuristic and modern design */
body {
    font-family: Arial, sans-serif;
    background:white; /* Light gradient background */
    color: #fff;
    height: 100vh;
}

form {
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent dark form background */
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5); /* Soft shadow */
    max-width: 400px;
    width: 100%;
    justify-content: center;
    align-items: center;
    text-align: center;
    margin-top: 5%;
    margin-left: 35%;
    
}

h2 {
    color: #00f0ff; /* Neon blue heading */
    font-size: 24px;
    margin-bottom: 20px;
}
h3 {
    color: white;
    background-color:black;
    width:100%; 
    font-size: 24px;
    text-align:center;
    border-radius:20px;
    margin-bottom: 20px;
}
label {
    font-size: 16px;
    color: #ff00ff; /* Light pinkish color */
    display: block;
    margin-bottom: 10px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    margin-bottom: 20px;
    background-color: #1e1e1e; /* Dark background for inputs */
    color: #fff; /* Light text */
    box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.5); /* Inner shadow for depth */
    transition: box-shadow 0.3s ease-in-out;
}

/* Hover effect on inputs */
input[type="text"]:hover,
input[type="number"]:hover {
    box-shadow: inset 0 4px 8px rgba(0, 0, 0, 0.7); /* Deeper shadow on hover */
}

button {
    background-color: #00f0ff; /* Neon blue background */
    border: none;
    padding: 12px 25px;
    border-radius: 5px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    box-shadow: 0 5px 15px rgba(0, 240, 255, 0.4); /* Soft glow effect */
}

/* Button hover effect */
button:hover {
    background-color: #ff00ff; /* Neon pink hover */
    box-shadow: 0 8px 20px rgba(255, 0, 255, 0.6); /* Stronger glow on hover */
}

</style>
</head>
<%@include file="Header.jsp" %>
<body>
	<form action="/Ad" method="post">
		<h2>Add details</h2>
		<label>Enter Name:</label>
		<input type="text" name="name" placeholder="Enter your name" required="required"><br><br>
		<label>total_leaves:</label>
		<input type="number" name="total_leaves" placeholder="Enter your total_leaves" required="required"><br><br>
		<label>leaves_taken:</label>
		<input type="number" name="leaves_taken" placeholder="Enter your leaves_taken" required="required"><br><br>
		<button type="submit">Submit</button>
	</form>
	<h3>${m}</h3>
</body>
</html>