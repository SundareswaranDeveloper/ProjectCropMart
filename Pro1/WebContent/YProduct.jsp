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
		background-color:  #FFEBEE;
    }
    #nav-two{
    	border-top : 2px solid #16A085;
		border-bottom : 2px solid #16A085;
	}
    h1 {
		text-align: center;
		margin-top: 20px;
      	font-size: 32px;
    }
	.product-list {
		display: flex;
	    justify-content: space-around;
	    gap: 20px;
	    flex-wrap: wrap;
	}
	.product-card {
		background-color: white;
	    border-radius: 8px;
	    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	    width: 250px;
	    padding: 15px;
	    text-align: center;
	}
	.product-card img {
	    width: 100%;
	    height: auto;
	    border-radius: 8px;
	}
	.product-card h3 {
	    margin: 10px 0;
	}
	.product-card p {
	    color: #888;
	}   
  </style>
  </head>
<body>
	<%@ include file="navbar.jsp" %>
	
	<h1>Published Products</h1> 
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
	pimage.src = img_ary[m]; 
	pimage.alt = "image is " + m;
	pimage.classList.add("img-new");
	pname.textContent = "Product Name : " + name_ary[m]; 
	pprice.textContent = "Product Price : " + price_ary[m]; 
	pquantity.textContent = "Product Quantity : " + qty_ary[m]; 
	pexpiry.textContent = "Product Expiry Date : " + expiry_ary[m]; 
	psales.textContent = "Product Sales End Date : " + sales_ary[m]; 
	
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