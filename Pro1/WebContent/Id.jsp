<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Id creation Page</title>
	<style>
		#head{
			display: block;
			font-size: 32px;
			text-align: center;
			color: #009933;
		}
		.case{
				display: block;
			margin: 20px auto 0 auto;
			width: 500px ;
		}
		.same label{
			width: 40%;
		}
		.same{
			display: flex;
			flex-direction: row;
			gap: 10px;
			margin-top: 15px;
			margin-bottom: 15px;
		}
		.group{
			display: flex;
			flex-direction: column;
			margin-bottom: 15px;
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
		
	</style>
</head>
<body>
	<div class="case">
		<form action="NewUser" method="post">
		<input type="hidden" name="key" value="${map}">
		<label id="head"> Crop Mart </label>
		<div class="same"> <label> Account Type  </label>   
		<label  id="hide">${account}</label> </div>
		<div class="same"> <label> Crop Mart Id </label>
		<label id="dis">${unique}</label> </div>
		<div class="group"><label> Password </label>
		<input type="Password" name="pcheck" > </div>
		<div class="group"><label> Reenter Password </label>
		<input type="Password" name="checkp" > </div>
		<button id="form-button">Next</button>
		<input type="hidden" name="account" id="hidden">
		<input type="hidden" name="u_id" id="id_hide">
	</form>
	</div>
<script type="text/javascript">
	var uft = document.getElementById("hide").textContent;
	document.getElementById("hidden").innerText = uft;
	
	var find = document.getElementById("dis").textContent;
	document.getElementById("id_hide").innerText = find;
</script>
</body>
</html>