<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Account Registration Page</title>
<style type="text/css">
	body{
		background-color: #A2D9CE;
	}
	.contain{
		display: block;
		margin: 20px auto 0 auto;
		width: 500px ;
	}
	#head{
		display: block;
		font-size: 36px;
		text-align: center;
		color: forestgreen;
		font-weight: bold;
	}
	#title{
		margin : 5px;
		padding : 5px;
		display: block;
		font-size: 32px;
		text-align: center;
		color: blue;
	}
	#form-button{
		background-color: #792099;
		color: lawngreen;
		border: 1px solid #792099;
		border-radius: 10px;
		margin: 20px 0px;
		padding: 10px;
		cursor: pointer;
		font-size: 32px;
		width: 100%;
	}
	#form-button:hover{
		color : red;
	    background-color: #A5D6A7;
	    font-weight: bold;
	}
	.input-group{
		display: flex;
		flex-direction: column;
		margin-bottom: 15px;
	}
	.input-group label{
		font-size: 25px;
		color: brown;
	}
	.input-group input{
		border-radius: 10px;
		font-size: 23px;
		margin-top: 5px;
		padding: 10px;
		border: 1px solid blue;
	}	
</style>
</head>
<body>
	<div class="contain">
		<form action="LogServlet" id="form" method="post">
		
			<label id="head">CROP MART</label>
			<label id="title"> Farmer Account Registration </label>
			<div class="input-group">
				<label  >Name</label>
				<input type="text" name="name">
			</div>
			<div class="input-group">
				<label>Phone Number</label>
				<input type="number" name="mobile">
			</div>
			<div class="input-group">
				<label>Land Document Number</label>
				<input type="text" name="landno">
			</div>
			<div class="input-group">
				<label>Land Address</label>
				<input type="text" name="landadd">
			</div>
			<div class="input-group">
				<label>Land District</label>
				<input type="text" name="landDist">
			</div>
			<div class="input-group">
				<label>House Address</label>
				<input type="text" name="add">
			</div>
			<button type="submit" id="form-button" >Register</button>

		</form>
	</div>
</body>
</html>