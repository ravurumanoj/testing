<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zoho Bank</title>
<style>
	body{
		background-color:#f0f0f0;
	}
	input{
		padding:10px;
		margin:5px;
	}
	input:focus{
		border: 2px solid #e92b2b;
		outline:none;
	}
	input[type=submit]{
		padding:10px 80px;
		margin:5px;
		cursor:pointer;
		background-color:#159aff;
		font-size:15px;
		color:white;
		border:none;
	}
	form{
		position:absolute;
		margin: 0% 30% 0% 34%;
		/* padding:40px 30px 40px 30px; */
		padding:4% 3%;
		background-color:white;
	}
</style>
</head>
<body>
	<div style="text-align:center">
		<div class="h"><h1><span style="color:#e83b3a">Z</span><span style="color:#26a149">O</span><span style="color:#0378b8">H</span><span style="color:#fede0a">O</span> Online Banking</h1></div>
		<form action="Login" method="post" >
		<table>
		<tr><td>Enter Username: </td><td><input type="text" name="username" placeholder="Enter your Username" required></td></tr>
		<tr><td>Enter Password: </td><td><input type="password" name="password" placeholder="Enter your Password" required></td></tr>
		<tr><td></td><td><input type="submit" value="Login"></td></tr>
		<%
		if(request.getAttribute("loginResult") != null && "true".equals(request.getAttribute("loginResult").toString())) {
			%>
            	<p style="color: red">Either user name or password is wrong.</p> 
            <%
           }
        %>
		<tr><td colspan=2>Don't have an account</td></tr>
		<tr><td colspan=2><a href="SignUp.jsp">Sign Up</a></td></tr>
		</table>
		<%-- <b>${error}</b> --%>
		</form>
	</div>
</body>
</html>