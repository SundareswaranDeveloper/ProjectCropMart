<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Farmer/My Products</title>

  <style>
    <%@ include file="navCss.jsp" %>
    body{
		background-color: #FFE4C4 ;
    }
    #nav-two{
    	border-top : 2px solid #16A085;
		border-bottom : 2px solid #16A085;
	} 
    #title-product {
		text-align: center;
		margin: 20px;
      	font-size: 32px;
      	color : darkgreen;
    }
	.product-list {
		display: flex;
	    justify-content: space-around;
	    gap: 20px;
	    flex-wrap: wrap;
	}
	.product-card {
		background-color: #FFEBEE;
	    border-radius: 8px;
	    margin-bottom : 20px;
	    padding: 15px;
	    text-align: left;
	    line-height : 30px;
	    flex-basis: 30%;
	    
	}
	.product-card img {
		display : block;
	    width: 200px;
	    height: 200px;
	    margin : 3px auto;
	    border-radius: 8px;
	}
	  
	.product-id{
		font-size: 16px;
		color : red;
		text-align: center;	
		margin-bottom : 3px;
	} 
	.product-name{
		font-size: 24px;
		color : #6495ED;
		text-align : left;
		margin : 3px 0px 5px 20%;	
	} 
	.product-quantity{
		font-size: 18px;
		color : #9932CC;
		margin : 5px 0px 5px 20%;	
	} 
	.product-price{
		font-size: 22px;
		color : #FF8C00;
		margin : 5px 0px 5px 20%;			
	} 
	.product-sales{
		font-size: 18px;
		color : #4B0082;
		margin : 5px 0px 5px 20%;		
	} 
	.product-expiry{
		font-size: 20px;
		color : #32CD32;
		margin : 5px 0px 5px 20%;	
	} 
  </style>
  </head>
<body>
	<%@ include file="navbar.jsp" %>
	
	<h1 id="title-product">Published Products</h1> 
	<section class="product-list" id="parent">
        
    </section> 
  
	<script type="text/javascript">
	
	// Convert the Java array into a comma-separated string
    var name_ary = "<%= String.join(",", (String[]) request.getAttribute("productname")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    name_ary = name_ary.split(",");
    
 	// Convert the Java array into a comma-separated string
    var id_ary = "<%= String.join(",", (String[]) request.getAttribute("productid")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    id_ary = id_ary.split(",");

 	// Convert the Java array into a comma-separated string
    var qty_ary = "<%= String.join(",", (String[]) request.getAttribute("productqty")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    qty_ary = qty_ary.split(",");
    
 	// Convert the Java array into a comma-separated string    
    var price_ary = "<%= String.join(",", (String[]) request.getAttribute("productprice")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    price_ary = price_ary.split(",");
    
 	// Convert the Java array into a comma-separated string    
    var sales_ary = "<%= String.join(",", (String[]) request.getAttribute("productsales")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    sales_ary = sales_ary.split(",");
    
 	// Convert the Java array into a comma-separated string    
    var expiry_ary = "<%= String.join(",", (String[]) request.getAttribute("productexpiry")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    expiry_ary = expiry_ary.split(",");
    
 	// Convert the Java array into a comma-separated string    
    var img_ary = "<%= String.join(",", (String[]) request.getAttribute("productimg")) %>"; 
	
    // Convert the comma-separated string into a JavaScript array
    img_ary = img_ary.split(",");
    
    var total = ${count};
	var divlead  = document.getElementById("parent");
	for(var m = 0; m<=total-1;m++){
	var divmain = document.createElement("div");
	divmain.classList.add('product-card');
	
	divlead.appendChild(divmain);
	
	var pimage = document.createElement("img");
	var pname = document.createElement("h1");
	var pid = document.createElement("h4");
	var pprice = document.createElement("h2");
	var pquantity = document.createElement("h3");
	var pexpiry = document.createElement("h5");
	var psales = document.createElement("h6");
	
	pid.textContent = "Product id : " + id_ary[m];
	pid.classList.add("product-id");
	pimage.src = img_ary[m]; 
	pimage.alt = "image is " + m;
	pimage.classList.add("img-new");
	pname.textContent = "Product Name : " + name_ary[m]; 
	pname.classList.add("product-name");
	pprice.textContent = "Product Price : " + price_ary[m] + " INR"; 
	pprice.classList.add("product-price");
	pquantity.textContent = "Product Quantity : " + qty_ary[m] + " Kg"; 
	pquantity.classList.add("product-quantity");
	pexpiry.textContent = "Product Expiry Date : " + expiry_ary[m]; 
	pexpiry.classList.add("product-expiry");
	psales.textContent = "Product Sales End Date : " + sales_ary[m]; 
	psales.classList.add("product-sales");
	
	divmain.appendChild(pid);
	divmain.appendChild(pimage);
	divmain.appendChild(pname);
	divmain.appendChild(pprice);
	divmain.appendChild(pquantity);
	divmain.appendChild(pexpiry);
	divmain.appendChild(psales);
	
	}
	</script>
</body>
</html>