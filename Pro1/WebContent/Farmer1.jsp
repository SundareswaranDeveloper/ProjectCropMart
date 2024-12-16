<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Sign in</title>
<style type="text/css">
		.contain{
			display: block;
			margin: 20px auto 0 auto;
			width: 500px ;
		}
		#head{
			display: block;
			font-size: 32px;
			text-align: center;
			color: #009933;
		}
		#tit{
			display: block;
			font-size: 25px;
			text-align: center;
			color: darkgreen;
		}
		#form-button{
			background-color: #792099;
			color: lawngreen;
			border: 1px solid #792099;
			border-radius: 10px;
			margin: 20px 0px;
			padding: 10px;
			cursor: pointer;
			font-size: 20px;
			width: 100%;

		}
		.input-group{
			display: flex;
			flex-direction: column;
			margin-bottom: 15px;


		}
		.input-group label{
			font-size: 18px;
		}
		.input-group input{
			border-radius: 10px;
			font-size: 20px;
			margin-top: 5px;
			padding: 10px;
			border: 1px solid blue;
		}	

	</style>
</head>



	
	<div class="contain">
		<form action="LogServlet" id="form" method="post">
			<label id="head">Crop Mart</label>
			<label id="tit"> Farmer SignUp Page </label>
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