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
		.header{
			margin-top: 150px ;
		}
		.contain{
			display: flex;
			flex-wrap: wrap;
			gap: 5px;
			justify-content: center;
			align-items: center;
		}
		.h{
			text-align: center;
			color: #009933;
			
		}
		.f1{
			flex-basis: 25%;
			flex-grow: 1;
			
			width: 500px;
			height: 300px;
			border-radius: 20px;
		}
		.box{
			flex-basis: 25%;
			flex-grow: 1;
			display: flex;
			flex-wrap: wrap;
			flex-direction: row;
			justify-content: center ;
			align-items: center;
			text-align: center;
			width: 500px;
			height: 300px;
			
			background: ;
			border: 2px solid #223634;
			border-radius: 20px;
			
		}
		.b1{
			flex-basis: 60%;
			flex-grow: 1;
		}
		.b2{
			flex-basis: 60%;
			flex-grow: 1;
			
		}
		
		.b3{
			flex-basis: 60%;
			flex-grow: 1;
		}
		.g1{
			flex-basis: 60%;
			flex-grow: 1;	
		}
		#pt{
			font-size: 32px;
		}
		#m{
			color: darkgreen;
			border-radius: 15px;
			font-size: 15px;
			padding: 10px 40px;
			border : 2px solid skyblue;
			background-color: lawngreen;
			cursor: pointer;
			

			
		}
	</style>
</head>
<body>
	<div class="header">
		<div class="h"><h1> Crop Mart </h1></div>
	<div class="contain">	
		<div class="f1"></div>
		<div class="box">
			<form action="EntryServlet" method="post">
			<div class="b2" ><label id="pt">Log In </label></div>
			<div class="g1">
			<div><label>Crop Mart Id</label></div>
			<div><input type="text" name="userid"></div></div>
			<div class="g1">
			<div ><label>Password</label></div>
			<div ><input type="Password" name="password" ></div></div>
			<div class="b3"> <button id="m"> Submit </button> </div>
			<div class="b3"><label>Didn't have Id, New User?</label></div>
			<div class="b3">
				<label><a href="Farmer1.jsp"> Create </a> Id for Farmers</label></br>
			<label> <a href="Cus1.jsp"> Create </a> Id for Customer </label>
			</div>
			</form>
		</div>
		<div class="f1"></div>
	</div>
</div>

</body>
</html>