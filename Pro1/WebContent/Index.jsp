<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crop Mart Welcome Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Crop Mart</title>
<style type="text/css">
	body{
		margin: 0;
		background-color: #FAF3E0;
	}
	h2{
		color:  #2C3E50;
		text-align: center;
		font-size: 25px;
	}
	.hero {
	    background-color: #F5F1E3 ;
	    color: white;
	    text-align: center;
	    padding: 40px 20px;
	}
	.hero h1{
		font-size: 32px;
		color:limegreen;

	}
	.hero h2 {
	    font-size: 28px;
	    color:  #D1A054 ;
	}
	.hero button {
	    padding: 10px 20px;
	    background-color:#5FF1C9;
	    color: #228B22;
	    border: none;
	    font-size: 25px;
	    cursor: pointer;
	    margin-top: 20px;
	    border-radius: 20px;
	}

	.hero button:hover {
	    background-color:  #D1F7C4;
	    color: #1C1C1C;
	}
	.container{
		display: flex;
		flex-wrap: wrap;
		justify-content: space-around;
		gap: 10px;
	}
	.box{
		margin: 10px ;
		padding: 10px;
		border: 2px solid #DAA520 ;
		width: 25%;
		background-color:#F9D5D3;
		border-radius: 20px;
		flex-grow: 1;
	}
	.box h2{
		color: #2C6E49;
	}
	.box p{
		color: #0F4C75;
		font-size: 20px;
		padding: 2px;
	}
</style>
</head>
<body>
	<section class="hero">
		<h1>CROP MART</h1>
        <h2>" A e-commerce system for Farmers to sell their products and Customers to purchase their required products "</h2>
        <button onclick="log()">Get Started</button>
    </section>
    <h2>How to Start?</h2>
    <div class="container">
	    <div class="box">
			<h2> I'm Farmer</h2> 
			<p> Click the "Get Started" button.</p>
			<p> Click "Create ID for Farmer". </p>
			<p> Register your details and Create Cropmart ID.</p> 
			<p> Log in with your ID.</p> 
			<p> Explore Cropmart! </p> 
		</div>
		<div class="box">
			<h2> I'm Customer</h2> 
			<p> Click the "Get Started" button.</p>
			<p> Click "Create ID for Customer". </p>
			<p> Register your details and Create Cropmart ID. </p> 
			<p> Log in with your ID. </p> 
			<p> Explore Cropmart! </p> 
		</div>
	</div>
	<script>
	function log(){
		open("Log.jsp");
	}
	</script>
</body>
</html>