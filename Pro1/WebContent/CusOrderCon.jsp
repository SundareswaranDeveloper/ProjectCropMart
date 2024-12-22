<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Insert title here</title>
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
	#title{
	 display : block;
	 text-align : center;
	 background-color:#F3E5F5; 
  	 color: #1E3A8A; 
	 font-size: 32px;
	
	}
    /* Navbar Styles */
    .navbar {
      display: flex;
     
      justify-content: space-between;
      align-items: center;
      background-color: #009688;
      padding: 10px 20px;
    }

    /* Logo styles */
    .navbar .logo img {
      height: 40px; /* Adjust the size of your logo */
    }


   #brand{
   	color: #32CD32;
   	font-size: 32px;
   }
   #cen{
    flex-basis: 60%;
    background-color: #388E3C;
    text-align: center;
    border-radius: 20px;
   }
   #con{
   	width: fit-content;
   	padding: 10px;
   	font-size: 32px;
   	color: lawngreen;
   
   }
    .navbar .user {
     align-items: center;

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
      width: 100%; 
      height: auto;
      margin-bottom: 15px;
      border-radius: 5px;
    }

    /* Label styles inside the div */
    .box label {
      display: block;
      margin: 5px 0;
      font-size: 20px;
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
<div class="navbar">
    <!-- Logo on the left -->
    <div class="logo">
      <img src="C:\Users\Mani\Downloads\CMLogo.jpeg"  alt="Logo">
      <label id="brand">Crop Mart</label>
    </div>

    <div id="cen" >
    	<label id="con">Order Confirmation Section</label>
    </div>

    <!-- User Image on the right -->
    <div class="user">
      <i class="fa-solid fa-user"></i>
      <label id="hide">${crtid}</label>
    </div>
  </div>
  <form>
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
    <td><input type="text" name="product"></td>
  </tr>
   <tr>
    <td><label>Phone Number</label></td>
    <td><input type="number" name="number"></td>
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
    <td><input type="text" name="mark"></td>
  </tr>
   <tr>
    <td><label> District Name</label> </td>
    <td><label>${location}</label></td>
  </tr>
  <tr>
    <td colspan ="2"><input type="checkbox"> <label>Trust me, above given details are true  </label></td>
  </tr>
   <tr>
    <td><button type="submit" id="form-button">Place Order</button></td>
    <td><button type="submit" id="form-button">Cancel Order</button></td>
  </tr>

</table>
  <input type="hidden" value="${crtid}" name="cmid">
  </form>
  <script type="text/javascript">
//Convert the Java array into a comma-separated string
  var product_ary = "<%= String.join(",", (String[]) request.getAttribute("data")) %>";
  product_ary = product_ary.split(",");
  document.getElementById("product_name").textContent = "Name : " + product_ary[0];
  document.getElementById("product_id").textContent = "Id : " + product_ary[1];
  document.getElementById("product_quantity").textContent = "Quantity : " +  product_ary[2];
  document.getElementById("product_price").textContent = "Price : " +  product_ary[3];
  document.getElementById("product_expiry").textContent = "Expiry Date : " +  product_ary[4];
  document.getElementById("product_image").src = product_ary[5];
  </script>
</body>
</html>