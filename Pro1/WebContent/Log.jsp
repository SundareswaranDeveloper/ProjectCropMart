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
#header{
	margin-top: 150px ;
}
label{
	display: block;
}
a{
	text-decoration-color: #FFC107;
	text-decoration-thickness: 2px;
}
.contain{
	display: block;
	width: 500px;
	margin: 20px auto 0 auto;
	border : 2px solid #BDBDBD;
	border-radius: 50px;
	padding: 20px;
}
#head{
	text-align: center;
	color: #009933;	
}
#title{
	text-align: center;
	color: #333333;
}
#box{
	display: block;
	width: 220px;
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

}
.field-input {
	font-size: 23px;
	border: 2px solid green;
	border-radius: 20px;
	width: 250px;
	background-color: #E0E0E0;
}
#field-button{
	margin: 10px 0 10px 10px;
	color: darkgreen;
	border-radius: 20px;
	font-size: 20px;
	padding: 10px 40px;
	border : 2px solid skyblue;
	background-color: lawngreen;
	cursor: pointer;
	width: 252px;	
}
#field-button:hover{
	background-color:  #D1F7C4;
   	color: #1C1C1C;
}
.field-new{
	font-size: 18px;
	margin: 5px;
	padding: 5px;
}		
</style>
</head>
<body>
	<div id="header">
		<h1 id="head"> Crop Mart </h1>
	</div>
	<div class="contain">	
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