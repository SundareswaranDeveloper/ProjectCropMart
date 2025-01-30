<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in Page</title>
<style>
body{
	background: linear-gradient(skyblue,pink,skyblue);
	background-attachment: fixed;
}

label{
	display: block;
}
a{
	text-decoration-color: #FFC107;
	text-decoration-thickness: 2px;
}
.contain{
	
	width : 500px;
	border : 2px solid #BDBDBD;
	border-radius: 50px;
	padding: 20px;
	margin : 75px auto 10px auto;
	
}
#head{
	margin : 20px; 
	text-align: center;
	color: #FF8C00;
	font-size : 40px;	
}
#title{
	text-align: center;
	color: #1560BD;
	font-size: 32px;
}
#box{
	display: block;
	width: 250px;
	margin: 0 auto ;
}
.field {
	display: flex;
	flex-direction: column;
	gap: 5px;
}
.field-label {
	font-size: 25px;
	padding: 5px;
	color : #8B0000;
}
.field-input {
	font-size: 23px;
	border: 2px solid green;
	border-radius: 20px;
	width: 100%;
	background-color: #E0E0E0;
}
#field-button{
	width: 100%;
	margin: 10px auto;
	color: #39FF14;
	border-radius: 20px;
	font-size: 20px;
	padding: 10px 5px;
	border : 2px solid skyblue;
	background-color: #0047AB;
	cursor: pointer;	
}
#field-button:hover{
	background-color: #00FF00;
   	color: #800080;
}
.field-new{
	font-size: 18px;
	margin: 5px;
	padding: 5px;
}		
</style>
</head>
<body>
	
	<div class="contain">	
		<div>
			<h1 id="head"> CROP MART </h1>
		</div>
		<form action="EntryServlet" method="post">
			<h2 id="title">Log In </h2>
			<div id="box">
				<div class="field">
					<label class="field-label">Enter Crop Mart ID </label>
					<input class="field-input" type="text" name="userid">
				</div>	
				<div class="field">
					<label class="field-label">Enter Password </label>
					<input class="field-input" type="Password" name="password" >
				</div>	
				<button id="field-button"> Submit </button> 
				<label class="field-new">Didn't have ID, New User?</label>
				<label class="field-new"><a href="Farmer1.jsp"> Create </a> ID for Farmer</label>
				<label class="field-new"> <a href="Cus1.jsp"> Create </a> ID for Customer </label>
			</div>
		</form>
	</div>
</body>
</html>