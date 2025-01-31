<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Farmer/Sell Product</title>
<style type="text/css">
	<%@ include file="navCss.jsp" %>
	
		body{
			background-color: #ECEFF1 ;
			
		}
		#nav-one{
			border-top : 2px solid #16A085;
			border-bottom : 2px solid #16A085;
		}

		.contain{
			display: block;
			margin: 20px auto 0 auto;
			width: 650px ;
		}
		
		#title-head{
			display: block;
			font-size: 32px;
			text-align: center;
			color:  #c71585 ;
			margin : 5px;
			padding : 5px;
			
		}
		#form-button{
			background-color: #792099;
			color: lawngreen;
			border: 1px solid #792099;
			border-radius: 20px;
			margin: 20px 0px;
			padding: 20px 10px;
			cursor: pointer;
			font-size: 32px;
			width: 100%;
		}
		#form-button:hover{
			color : #388e3c;
			background-color: #c8e6c9;
		}
		.input-group{
			display: flex;
			flex-direction: row;
			margin-bottom: 15px;
			gap: 10px;


		}
		.input-group label{
			font-size: 25px;
			width: 40%;
			padding: 10px;
			color: #388E3C;
		}
		.input-group input{
			border-radius: 10px;
			font-size: 23px;
			margin-top: 5px;
			padding: 10px;
			border: 1px solid blue;
			width: 50%;
		}	
	</style>
</head>
<body>

	<%@ include file="navbar.jsp" %>
	<div class="contain">
	<form action="SellServlet" id="form" method="post">
			
			<label id="title-head"> Fill below Details to publish your Product </label>
			<div class="input-group">
				<label >Product Name</label>
				<input type="text" name="product">
			</div>
			<div class="input-group">
				<label>Quantity (in kgs)</label>
				<input type="number" name="quantity">
			</div>
			<div class="input-group">
				<label>Price (in Rupees)</label>
				<input type="number" name="price">
			</div>
			<div class="input-group">
				<label>Product Sales End Date</label>
				<input type="Date" name="sales_end">
			</div>
			<div class="input-group">
				<label>Product Expiry Date</label>
				<input type="Date" name="expiry">
			</div>
			<div class="input-group">
				<label>Product Image</label>
				<input type="file" name="image"  >
			</div>
			<label style="display: none;" id="cm">${crtid}</label>
			<input type="hidden" id="store" name="mart" >
			
			<button type="submit" id="form-button">Sell Product</button>
			

		
	</form>
	</div>
	
	<script type="text/javascript">
		var abc = document.getElementById("cm").textContent;
		document.getElementById("store").innerText = abc;
	</script>
</body>
</html>