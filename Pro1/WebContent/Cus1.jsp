<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account Registration Page</title>
<style>
	body{
		background-color: lavender;
	}
	.box{
		display: block;
		margin: 20px auto 0 auto;
		width: 500px ;
	}
	#head{
		margin: 10px;
		display: block;
		font-size: 40px;
		text-align: center;
		color: limegreen;
		font-weight: bold;
	}
	#title{
		margin: 10px;
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
		color : brown;
		font-weight: bold;
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
	<div class="box">
		<form action="Customer" method="post">
			<label id="head">CROP MART</label>
			<label id="title"> Customer Account Registration </label> 
			<div class="input-group"> 
				<label> Name </label> 
				<input type="text" name="cname"> 
			</div>
			<div class="input-group"> 
				<label> Phone Number </label> 
		 		<input type="number" name="mobile">
		 	</div>
			<div class="input-group"> 
				<label> Address</label>
		 		<input type="text" name="cadd" > 
		 	</div>
			<button id="form-button" type="submit" > Register </button>
		</form>
	</div>
</body>
</html>