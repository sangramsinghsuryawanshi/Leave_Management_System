<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* Global Styles */

h2 {
    color: #00f0ff; /* Neon blue */
    text-align: center;
    margin-bottom: 20px;
}
h3 
{
	 color: white;
    background-color:black;
    width:100%; 
    font-size: 24px;
    text-align:center;
    border-radius:20px;
    margin-bottom: 20px;
    margin-top: 20px;
}
form {
    background-color: rgba(255, 255, 255, 0.1); /* Transparent form background */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 240, 255, 0.5); /* Neon blue glow */
    width: 400px;
    max-width: 100%;
       justify-content: center;
    align-items: center;
    text-align: center;
    margin-top: 5%;
    margin-left: 35%;
     background-color: #1b1b1b;
}

/* Form labels */
label {
    font-size: 18px;
    color: #ff00ff; /* Light purple for label text */
}

/* Input fields */
input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    background-color: rgba(255, 255, 255, 0.2);
    color: #fff;
    font-size: 16px;
    box-shadow: 0 0 10px rgba(0, 240, 255, 0.2); /* Neon shadow */
    outline: none;
    transition: background-color 0.3s ease-in-out;
}

/* Input hover and focus effect */
input[type="text"]:hover, input[type="text"]:focus {
    background-color: rgba(255, 255, 255, 0.3);
    box-shadow: 0 0 15px rgba(0, 240, 255, 0.5);
}

/* Submit button */
button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #00f0ff;
    color: #000;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
}

/* Button hover effect */
button:hover {
    background-color: #ff00ff; /* Pink hover */
    transform: scale(1.05); /* Slight zoom on hover */
    box-shadow: 0 0 10px #ff00ff, 0 0 20px #00f0ff;
}

/* Responsive Design */
@media (max-width: 600px) {
    form {
        width: 90%;
    }

    label, input, button {
        font-size: 14px;
    }
}

</style>
</head>
<%@include file="Header.jsp" %>
<body>	
	<form action="/find" method="post">
		<h2>Check Leave Balance</h2>
		<label>Enter Name:</label>
		<input type="text" name="name" placeholder="Enter your name" required="required"><br><br>
		<button type="submit">Submit</button>
	</form>
	<h3>${count}</h3>
</body>
</html>