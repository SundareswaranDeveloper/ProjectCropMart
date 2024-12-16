<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		/* Basic Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    

    /* Navbar Styles */
    .navbar {
      display: flex;
     
      justify-content: space-between;
      align-items: center;
      background-color: lawngreen;
      padding: 10px 20px;
    }

    /* Logo styles */
    .navbar .logo img {
      height: 40px; /* Adjust the size of your logo */
    }


   #brand{
   	color: darkgreen;
   	font-size: 25px;
   }
   #cen{
    flex-basis: 60%;
    background-color: darkgreen;
    text-align: center;
   }
   #con{
   	width: fit-content;
   	padding: 10px;
   	font-size: 32px;
   	color: lawngreen;
   	
   	border-radius: 10%;
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
      width: 100%; /* Adjust according to your image aspect ratio */
      height: auto;
      max-height: 150px;
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
      color: lightgreen;
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
    background-color: beige;
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
    	<label id="con">Fill below details to Place Order</label>
    </div>

    <!-- User Image on the right -->
    <div class="user">
    	<h1>hii</h1>
      <i class="fa-solid fa-user"></i>
      <label id="hide">${crtid}</label>
    </div>
  </div>
  <form>
  <div class="sub"> Product Details</div>
  <div class="container"> 
    <div class="box">
      <img src="Vegeatables.png" alt="Image" >
      <label>Product Name : </label>
      <label>Product Id : </label>
      <label>Expiry Date : </label>
      <label>Quantity : </label>
      <label>Price : </label>

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
    <td><label> Tenkasi </label></td>
  </tr>
  <tr>
    <td colspan ="2"><input type="checkbox"> <label>Trust me, above given details are true  </label></td>
  </tr>
   <tr>
    <td><button type="submit" id="form-button">Place Order</button></td>
    <td><button type="submit" id="form-button">Cancel Order</button></td>
  </tr>

</table>

  
  
  <label style="visibility: hidden;" id="cm">${crtid}</label>
  
        

  
  </form>
  <script type="text/javascript">
	
	</script>
</body>
</html>