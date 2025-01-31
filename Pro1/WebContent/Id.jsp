<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ID Creation Page</title>
<style>
	body{
		background-color: beige;
	}
	#head{
		display: block;
		font-size: 40px;
		text-align: center;
		color: limegreen;
		font-weight: bold;
	}
	#title{
		display: block;
		font-size: 32px;
		text-align : center;
		margin : 10px;
		color : blue;
	}
	.case{
		display: block;
		margin: 20px auto 0 auto;
		width: 500px;
	}
	.box{
		display: flex;
		flex-direction: row;
		gap: 10px;
		margin: 15px 0;
	}
	.box label{
		font-size: 25px;
		padding: 10px;
		width: 45%;
		color: brown;
		font-weight: bold;
	}
	.box input{
		border-radius: 10px;
		font-size: 23px;
		margin: 5px;
		padding: 10px;
		border: 1px solid blue;
		width: 50%;
	}
	.token1{
		color : darkgreen;
		background-color: #A5D6A7;
		font-size: 23px;
		text-align: center;
		border-radius: 20px;
	}
	.token2{
		background-color: skyblue;
		color : darkgreen;
		font-size: 23px;
		text-align: center;
		border-radius: 20px;
	}
	#cmid{
		color : indigo;
		background-color: lightpink;
		font-size: 23px;
		text-align: center;
		border-radius: 20px;
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
</style>
</head>
<body>
	<div class="case">
		<form action="NewUser" method="post">
			<input type="hidden" name="key" value="${map}">
			<label id="head"> CROP MART </label>
			<label id="title"> ID Creation</label>
			<div class="box"> 
				<label> Account Type  </label>   
				<label id="user">${account}</label> 
			</div>
			<div class="box">
				<label> Crop Mart ID </label>
				<label id="cmid">${unique}</label>
			</div>
			<div class="box">
				<label> Password </label>
				<input type="Password" name="pcheck" >
			</div>
			<div class="box">
				<label> Reenter Password </label>
				<input type="Password" name="checkp" > 
			</div>
			<button id="form-button" type="submit">Next</button>
			<input type="hidden" name="account" id="cropmart">
			<input type="hidden" name="u_id" id="cropmartid">
		</form>
	</div>
<script type="text/javascript">
	var usertype = document.getElementById("user").textContent;
	document.getElementById("cropmart").innerText = usertype;
	var change = document.getElementById("user");
	if(usertype == "Farmer"){
		change.classList.add("token1");
	}else{
		change.classList.add("token2");
	}
	var find = document.getElementById("cmid").textContent;
	document.getElementById("cropmartid").innerText = find;
</script>
</body>
</html>