<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

header {
    display: flex;
    justify-content: center;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7); /* Transparent dark header background */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5); /* Soft shadow for header */
    transition: background-color 0.3s ease-in-out;
}

a {
    text-decoration: none;
    color: #00f0ff; /* Light neon color for links */
    margin: 0 15px;
    font-size: 18px;
    position: relative;
    font-weight: bold;
    transition: color 0.3s ease-in-out;
}

/* Hover effect with underline appearing in red with spark */
a::before {
    content: '';
    position: absolute;
    width: 0;
    height: 2px;
    bottom: -5px;
    left: 0;
    background-color: red; /* Solid red underline */
    visibility: hidden;
    transition: all 0.4s ease-in-out;
}

a:hover::before {
    visibility: visible;
    width: 100%;
}

a:hover {
    color: #ff00ff; /* Color change to light pinkish on hover */
}

a:hover::before {
    animation: rocket 0.5s ease-in-out forwards;
}

/* Simple rocket-style animation with a red spark at the start */
@keyframes rocket {
    0% {
        width: 0;
        background-color: red;
        box-shadow: 0 0 10px 5px red; /* Red spark effect */
    }
    100% {
        width: 100%;
        background-color: red; /* Stays solid red */
        box-shadow: none; /* Spark fades out */
    }
}


</style>
</head>
<body>
	<header>
		<a href="/Le">Add</a>
		<a href="/Fe">Fetch</a>
		<a href="/LB">Leave Balance</a>
	</header>
</body>
</html>
