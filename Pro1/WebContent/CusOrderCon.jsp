<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Customer/Place Order</title>
<style type="text/css">
		/* Basic Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body{
    background-color:  #FAF3E0;
    }
    #title-order{
    	font-size : 36px;
    	text-align : center;
  	 	color: darkgreen; 
  	 	margin : 10px;
  	 	padding: 5px;
    }
	#title{
	 display : block;
	 text-align : center;
	 background-color:#F3E5F5; 
  	 color: #1E3A8A; 
	 font-size: 32px;
	
	}

	header {
	    background-color: #333;
	    color: white;
	    padding: 10px 20px;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	}
	header .logo img {
	    height: 40px; 
	    border-radius : 50%;
	    }
	header .logo h1 {
		display : inline;
	    font-size : 32px;
	    margin : 3px;
	    padding : 10px;
	    color : limegreen;
	    text-align: center;    
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
	    margin : 5px;
    	padding : 5px;
	}
	header nav ul li button:hover {
	    border-bottom : 2px solid limegreen; 
	}
	#logout{
		text-decoration : none;
		color : red;
		margin : 3px;
		padding : 10px;
		border : 3px solid inherit;
		font-weight : bolder;
		background-color: #80E27E;
		border-radius : 20px;
	}
	#logout:hover{
		border-radius : 20px;
		background-color: #A2D9CE;
		color : #2C6B3F;
		border : 3px solid limegreen;
	}
    .container {
      display: flex;
      justify-content: center;
      padding: 20px;
      margin-top: 10px; 
    }

    /* Individual div inside the container */
    .box {
      width: 30%;
      text-align: center;
      padding: 15px;
      border: 1px solid #ccc;
      border-radius: 8px;
      background-color: #f9f9f9;
    }

    /* Image styles */
    .box img {
   	  display : block;
      width: 250px; 
      height: 250px;
      margin: 15px auto;
      border-radius: 5px;
    }

    /* Label styles inside the div */
    .box label {
      display: block;
      margin: 5px 0;
      font-size: 20px;
      color : blue;
      padding-left: 20%;
      text-align: left; 
    }
    .input-group{
      display: flex;
      flex-direction: row;
      margin-bottom: 15px;    
      justify-content: center;
      align-items: center;
    }
    table button{
      color: darkgreen;
      padding: 10px;
      background-color: bisque;
      font-size: 25px;
      text-align: center;
      width: fit-content;
    }
    table label{
      font-size: 20px;
      width: fit-content;
      padding: 10px;
      color:  #9E2A2F;
    }
    table input{
      border-radius: 10px;
      font-size: 20px;
      margin-top: 5px;
      padding: 10px;
      border: 1px solid blue;
    } 
	 .sub{
    text-align: center;
    font-size: 32px;
    color: springgreen;
    background-color:  #0288D1;
   }
   #tab{
    width: fit-content;
    margin : 10px auto;
   }
	</style>
</head>
<body>
	<header>
        <div class="logo">
        	<img src="C:\Users\Mani\Downloads\CMLogo.jpeg"  alt="Logo">
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
	        	<input type="hidden" name="secret" id="key-id">
	      		<input type="hidden" name="avalue" id="nav-key">
            <ul>
                <li><button type="submit" onclick="keyvalue1()">My Orders</button></li>
                <li><button type="submit" onclick="keyvalue2()">My Cart</button></li>         
            </ul> 
            </form>  
        </nav>
        <div class="user">
        	<i class="fa-solid fa-user" id="nav-cropmart">${crtid}</i>
        	<a id="logout" href="Log.jsp">Log Out</a>
    	</div>
    </header>
    <h1 id="title-order">Order Confirmation Section</h1>
	<form action="ConfirmCustomerOrder" method="post">
    <input type="hidden" value="${crtid}" name="cropmart_id">
    <input type="hidden" id="reference_id" name="p_id">
    <input type="hidden" id="reference_button" name="ref_condition">
    <label id="title"> Fill below details to Place Order</label>
    <div class="sub"> Product Details</div>
    <div class="container"> 
	    <div class="box">
	      <img id="product_image" alt="Image" >
	      <label id="product_name"></label>
	      <label id="product_id"></label>
	      <label id="product_expiry"></label>
	      <label id="product_quantity"></label>
	      <label id="product_price"></label>
	
	    </div> 
	</div>
	<div class="sub"> Custommer Details</div>
<table id="tab">
  <tr>
    <td><label>Customer Name</label>  </td>
    <td><input type="text" name="customer_name"></td>
  </tr>
   <tr>
    <td><label>Phone Number</label></td>
    <td><input type="number" name="mobile_number"></td>
  </tr>
   <tr>
    <td><label >Address</label></td>
    <td><input type="text" name="address"></td>
  </tr>
   <tr>
    <td><label> Pincode</label> </td>
    <td><input type="text" name="Pincode"></td>
  </tr>
   <tr>
    <td><label>Landmark </label> </td>
    <td><input type="text" name="landmark"></td>
  </tr>
   <tr>
    <td><label> District Name</label> </td>
    <td><label id="district"></label></td>
  </tr>
  <tr>
    <td colspan ="2"><input type="checkbox"> <label>Trust me, above given details are true  </label></td>
  </tr>
   <tr>
    <td><button type="submit" onclick="call(this)" id="form-button">Place Order</button></td>
    <td><button type="submit" onclick="call(this)" id="form-button">Cancel Order</button></td>
  </tr>

</table>
  <input type="hidden" value="${crtid}" name="cmid">
  </form>
 <script type="text/javascript">
  	var setid = document.getElementById("nav-cropmart").textContent;
	document.getElementById("sid").innerText = setid;
	document.getElementById("key-id").innerText = setid;
	var cluenav = 0;
	function keyvalue1(){
		cluenav = 6;
		document.getElementById("nav-key").innerText = cluenav;
	}function keyvalue2(){
		cluenav = 7;
		document.getElementById("nav-key").innerText = cluenav;
	}  	
	function call(element){
		if(element.textContent == "Place Order"){
    		document.getElementById("reference_button").value = "1";
    		alert("Order Request sent successfully");
    	} 
	}
//Convert the Java array into a comma-separated string
  var product_ary = "<%= String.join(",", (String[]) request.getAttribute("data")) %>";
  product_ary = product_ary.split(",");
  document.getElementById("product_name").textContent = "Name : " + product_ary[0];
  document.getElementById("product_id").textContent = "ID : " + product_ary[1];
  document.getElementById("reference_id").value = product_ary[1];
  document.getElementById("product_quantity").textContent = "Quantity : " +  product_ary[2] +" Kg";
  document.getElementById("product_price").textContent = "Price : " +  product_ary[3] + " INR";
  document.getElementById("product_expiry").textContent = "Expiry Date : " +  product_ary[4];
  document.getElementById("product_image").src = product_ary[5];
  document.getElementById("district").textContent = product_ary[6];
</script>
</body>
</html>