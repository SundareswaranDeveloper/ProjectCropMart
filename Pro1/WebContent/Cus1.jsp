<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login Page</title>
	<style>
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
		/*body{
			background-image: url("CusImg.jpg");
			background-size: cover;
		}*/
		.box{
			display: block;
			margin: 20px auto 0 auto;
			width: 500px ;
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
<body>
	<div class="box">
		<form action="Customer" method="post">
			<label id="head">Crop Mart</label>
			<label id="tit"> Customer Sign Up Page </label> 
			<div class="input-group"> <label> Name </label> 
			<input type="text" name="cname"> </div>
			<div class="input-group"> <label> Phone Number </label> 
		 	<input type="number" name="mobile"></div>
			<div class="input-group"> <label> Address</label>
		 	<input type="text" name="cadd" > </div>
			<div><button id="form-button" > Submit </button> </div>
		</form>
	</div>
	<script>
	function main(){
		open("file:///C:/Users/Mani/OneDrive/Desktop/Project/Id.html");
	}
</script>
</body>
</html>