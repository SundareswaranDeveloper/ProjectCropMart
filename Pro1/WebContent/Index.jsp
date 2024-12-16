<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Crop Mart</title>

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Old+Standard+TT&display=swap" rel="stylesheet">


<style>
	body{
		background:#32CD32;
	}
	a{
		color: #b0e892;
		text-decoration-color: skyblue;
		text-decoration-thickness: 2px;

	}
	p {
		color: #b0e892;
	}
	.container{
		display: flex;
		flex-wrap: wrap;
		
		justify-content: space-around;
		gap: 10px;
	}
	.b1 h1{
		display: block;
		width: 205px;
		margin: 20px auto 20px auto;
	 	font-family: "Old Standard TT", serif;
	  	font-weight: 800;
	 	font-style: normal;
	 	border: 2px solid #DAA520;
		border-radius: 20px;
		background-color:  #808000;
		padding: 20px 20px 20px 20px;

	}
	.b2 h2{
		color:  #8B4513;
	}
	.b1{
		margin: 20px 10px;
		width: 80%;
		
		
		color: #32CD32;
		flex-grow: 1;
	}
	.b2{
		margin: 10px ;
		padding: 10px;
		border: 2px solid #DAA520 ;
		width: 25%;
		color: #98FF98;
		background: #FF7F50 ;
		border-radius: 20px;
		flex-grow: 1;

	}
	/*.b3{
		width: 33%;

	}
	.b4{
		width: 33%;
	}*/
	.b5 p {
	display: inline;
	color: #8B4513;
	}
	.b5{
		text-align: center;
		width: 80%;
		flex-grow: 1;
	}
	.b6{
		text-align: center;
		width: 80%;
		flex-grow: 1;
	}
	#bc{
		color:#32CD32;
		background-color:  #808000;
		font-size: 20px;
		border: 1px solid #DAA520;
		border-radius: 20px;
		padding: 10px 5px;
	}
</style>
</head>
<body>
	<div class="container">
	<div class="b1"><div class="lo"> <h1>CROP MART</h1> </div></div>
	<div class="b2">
		
		<div> <h2>About us</h2> </div>
		<p> Crop Mart is the Platform for Farmers to Sell their Products to Customers. </p>
		<p> Crop Mart supports Customers to buy Fresh Products from Farmers. </p>
		<p> Crop Mart is the Idea to Digitalize the Farmer Product to World.</p>

	</div>
	<div class="b2">
		<div> <h2> I'm Farmer , How to use </h2> </div>
		<div><p> Welcome to Crop Cart, you are the Backbone for Us! </p></div>
		<div><p> Read and Agree Terms and Conditions then click Get Started </p></div>
		<div> <p> Create Farmer Account </p> </div>
		<div> <p> Post your Products  </p> </div>
		<div> <p> Check received Orders by click Show Customer Orders </p> </div>
		<div> <p> Enjoy the Crop Mart World </p> </div>
	</div>
	<div class="b2">
		<div> <h2> I'm Customer , How to use </h2> </div>
		<div> <p> Welcome to Crop Cart, Read and Agree Terms and Conditions then click Get Started </p> </div>
		<div> <p> Create New Account  </p> </div>
		<div> <p> Search your Product and Place an Order </p> </div>
		<div> <p> Enjoy the Crop Mart World </p> </div> 
	</div>
	<div class="b5">
		<div> <input type="checkbox" >  <p> I agree <a href="#">Terms and Conditions</a> </p></div>
	</div>
	<div class="b6">
		<div> <button onclick="log()" id="bc"> Get Started </button> </div>
	</div>
</div>
<div>


</div>
<script>
	function log(){
		open("Log.jsp");
	}
</script>
</body>
</html>