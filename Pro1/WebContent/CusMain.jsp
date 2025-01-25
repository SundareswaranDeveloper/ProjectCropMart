<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Customer Home Page</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: #f4f4f4;
}
header {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
header .logo h1 {
    margin: 0;
    font-size: 32px;
    color: limegreen;
    padding: 5px;
}
form label{
	color : lightgreen;
	font-weight: bold;
	font-size : 25px;
	padding : 5px;
}
form input{
	font-size: 22px;
	border-radius:20px;
	color : darkgreen;
	padding: 5px;
}
#search-button{
	 padding: 10px 20px;
	 background-color:#5FF1C9;
	 color: #228B22;
	 border: none;
	 font-size: 25px;
	 cursor: pointer;
	 border-radius: 20px;
}
#search-button:hover{
	 background-color:  #D1F7C4;
	 color: #1C1C1C;
}
.user{
	font-size : 25px;
	color : blue;
	letter-spacing : 2px;
}
header nav ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
}
header nav ul li {
    margin-left: 20px;
}
header nav ul li button {
    color: gold;
    font-size : 25px;
    background-color: #333;
    border: 1px solid #333;
    text-decoration: none;
    font-weight: bold;
}
header nav ul li button:hover {
    text-decoration: underline;
}
#head{
    text-align: center;
	background-color: lawngreen;
	display: flex;
	align-items: center;
	flex-direction: row;
	padding: 20px;
}
.child{
    flex-basis: 40%;
    flex-grow: 1;
}
#cover{
	border-radius: 20%;
    height: 450px;
}
#head img{
	border-radius: 20%;
	height: 450px;
}
.image-container {
	position: relative;
	display: inline-block;
}
.image {
     display: block;  
}
.text {
     position: absolute;
     width: 70%;
     top: 60%;
     left: 50%;
     transform: translate(-50%, -50%);
     color: white; 
     font-size: 20px; 
     font-weight: bold; 
     text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); 
}
.extra{
     top:50%;
     color: beige;
     font-weight: bold;
     letter-spacing: 1px;
}
.categories {
    padding: 20px;
    text-align: center;
    background-color: #fff;
}
.categories h2 {
    font-size: 32px;
    margin-bottom: 30px;
}
.category-list {
    display: flex;
    justify-content: space-around;
}
.category-card {
    text-align: center;
    flex-basis: 28%;
    flex-grow: 1;
    padding: 10px;
}
.category-card label{
    display: block;
    font-size: 25px;
    padding: 5px;
}
.category-card img {
    width: 300px;
    height: 300px;
    border-radius: 10px;

}
#features-list{
    text-align: center;
    margin: 10px;
    padding: 10px;
}
#features-list h1{
    color: lawngreen;
    font-size: 32px;
}
#features-list h2{
    margin: 5px;
    padding: 10px 5px;
    color: blue;
    font-size: 22px;
    background-color: beige;
    border-radius: 20px;

}
</style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>CROP MART</h1>
        </div>
        <form action="SearchServlet" method="post">
            <input type="hidden" id="sid" name="cid">
            <label>Buy Products here</label>
            <input type="text" name="cond2" value="ex: Apple">
            <label>Delivery District :</label>
            <input type="text" name="cond1" value="ex: Tenkasi">
            <input type="submit" id="search-button" value="Search" >
        </form>
        <nav>
        	<form action="FarmContol" method="post">
        	<input type="hidden" name="secret" id="nav-cmid">
      		<input type="hidden" name="avalue" id="nav-key">
            <ul>
                <li><button type="submit" onclick="keyvalue1()">My Products </button></li>
                <li><button type="submit" onclick="keyvalue2()">My Cart</button></li>         
            </ul> 
            </form>  
        </nav>
        <div class="user">
        	<i class="fa-solid fa-user" id="nav-cropmart">${crtid}</i>
    	</div>
    </header>
    <div id="head">
		<div class="child"><img src="C:\Users\Mani\OneDrive\Desktop\Project\Cover.png" ></div>
		<div id="cover" class="image-container child">
            <div><img src="C:\Users\Mani\OneDrive\Desktop\Project\cover2.jpg" class="image" ></div>
        <h1 class="text extra">Crop Mart</h1>
		<h2 class="text">" A destination to buy Organic products from Farmers and delivered to your door steps "</h2></div>
	</div>
    <section class="categories">
        <h2>Product Categories</h2>
        <div class="category-list">
            <div class="category-card">
                <img src="C:\Users\Mani\OneDrive\Desktop\Project\Vegeatables.png" alt="Category 1">
                <label>Vegeatables</label>
            </div>
            <div class="category-card">
                <img src="C:\Users\Mani\OneDrive\Desktop\Project\Fruits.jpeg" alt="Category 2">
                <label>Fruits</label>
            </div>
            <div class="category-card">
                <img src="C:\Users\Mani\OneDrive\Desktop\Project\Crops.png" alt="Category 3">
                <label>Crops</label>
            </div>
        </div>
    </section>
    <section id="features-list">
        <h1>Features</h1>
        <h2>You can purchase the product from a minimum quantity of 5 kg if your delivery district is the same as the product farmer's district.</h2>
        <h2>You can purchase the product from a minimum quantity of 50 kg if your delivery district is different from the product farmer's district.</h2>
    </section>
   <script type="text/javascript">
    var cmid = document.getElementById("nav-cropmart").textContent;
	document.getElementById("sid").innerText = cmid;
	document.getElementById("nav-cmid").innerText = cmid;
	var a = 0;
	function keyvalue1(){
		a = 6;
		document.getElementById("nav-key").innerText = a;
	}function keyvalue2(){
		a = 7;
		document.getElementById("nav-key").innerText = a;
	}
   </script>
</body>
</html>