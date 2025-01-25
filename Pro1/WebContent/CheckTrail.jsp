<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Customer/Product Results</title>

<style type="text/css">
body{
	background-color: #FFF8E1;
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

	
.products {
    padding: 20px;
}

.product-head{
	text-align : center;
    font-size: 28px;
    margin-bottom: 20px;
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
.product-section{
	display : flex;
	flex-direction : row;
	gap:20px;
}
.product-button {
	color: #1A237;
	width : fit-content;
	outline : none;
    padding: 8px 15px;
    background-color: #827717;
    color: white;
    border : 2px solid #827717;
    border-radius: 20px;
    cursor: pointer;
    font-size: 20px;
    margin: 2px 50px 2px 50px;
}

.product-button:hover {
	color : red;
    background-color: skyblue;
}
.result{
	display : flex;
	flex-direction : row;
    width: fit-content;
   
}
.result-child{

    text-align: center;
    border: 1px solid lawngreen;
    border-radius: 20px;
    margin: 20px;
    padding: 10px 20px;
    font-size: 32px;
    color: darkgreen;
    background-color: skyblue;
    flex-basis : 30%;
    flex-grow : 1;
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
	        	<input type="hidden" name="secret" id="key-id">
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
	<div class="result"> 
        <label class="result-child"> Showing Result for Search Product ${sproduct }</label>
        <label class="result-child"> Showing Result for Search Delivery Location ${slocation }</label>

    </div>
    <form action="CusOrderServlet" method="post">
	<section class="products">
		<input type="hidden" id="idbuy" name="sellid">
		<input type="hidden" id="cusid" name="cmid">
		<input type="hidden" value="${slocation}" name="location">
        <h2 class="product-head">Products starts from Quantity 5 Kg</h2>
        <div class="product-list" id="parent">
        
        </div>  
    </section>
    
    <section class="products">
        <h2 class="product-head">Products starts from Quantity 50 Kg</h2>
        <div class="product-list" id="parent-head">
        
        </div>  
    </section>
    </form>
    <script>
    
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
   
    	 // Convert the Java array into a comma-separated string
        var name_stock = "<%= String.join(",", (String[]) request.getAttribute("stockname")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        name_stock = name_stock.split(",");
        
     	// Convert the Java array into a comma-separated string
        var id_stock = "<%= String.join(",", (String[]) request.getAttribute("stockid")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        id_stock = id_stock.split(",");
        
     	// Convert the Java array into a comma-separated string
        var qty_stock = "<%= String.join(",", (String[]) request.getAttribute("stockqty")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        qty_stock = qty_stock.split(",");
        
    	 // Convert the Java array into a comma-separated string
        var price_stock = "<%= String.join(",", (String[]) request.getAttribute("stockprice")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        price_stock = price_stock.split(",");
        
     	// Convert the Java array into a comma-separated string
        var sales_stock = "<%= String.join(",", (String[]) request.getAttribute("stocksales")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        sales_stock = sales_stock.split(",");
        
  	   // Convert the Java array into a comma-separated string
        var expiry_stock = "<%= String.join(",", (String[]) request.getAttribute("stockexpiry")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        expiry_stock = expiry_stock.split(",");
        
    	 // Convert the Java array into a comma-separated string
        var img_stock = "<%= String.join(",", (String[]) request.getAttribute("stockimg")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        img_stock = img_stock.split(",");
       
        

    var setid = document.getElementById("nav-cropmart").textContent;
	document.getElementById("sid").innerText = setid;
	document.getElementById("key-id").innerText = setid;
	document.getElementById("cusid").value = setid;
	
	var count = ${total1};
	var divlead  = document.getElementById("parent");
	var find = "sellId"
	var name = "contain";
	var a = 1;
	for(var i = 0; i<=count-1;i++){
	var divmain = document.createElement("div");
	divmain.id = name+a;
	divmain.classList.add('product-card');
	
	divlead.appendChild(divmain);
	
	var pimage = document.createElement("img");
	var pname = document.createElement("h1");
	var pid = document.createElement("h4");
	var pprice = document.createElement("h2");
	var pquantity = document.createElement("h3");
	var section = document.createElement("div");
	var padd = document.createElement("button");
	var pbuy = document.createElement("button");
	var pexpiry = document.createElement("h5");
	var psales = document.createElement("h6");
	
	pid.textContent = "Product id : " + id_ary[i];
	pid.classList.add("product-id");
	
	pimage.src = img_ary[i]; 
	pimage.alt = "image is " + a;
	a++;
	pimage.classList.add("img-new");
	
	pname.textContent = "Product Name : " + name_ary[i]; 
	pname.classList.add("product-name");
	
	pprice.textContent = "Product Price : " + price_ary[i] + "INR";
	pprice.classList.add("product-price");
	
	pquantity.textContent = "Product Quantity : " + qty_ary[i] + " Kg"; 
	pquantity.classList.add("product-quantity");
	
	pexpiry.textContent = "Product Expiry date : " + expiry_ary[i]; 
	pexpiry.classList.add("product-expiry");
	
	psales.textContent = "Product Sales end date : " + sales_ary[i]; 
	psales.classList.add("product-sales");
	
	section.classList.add("product-section");
	
	pbuy.textContent = "Buy Product"; 
	pbuy.id = find+a;
	pbuy.setAttribute('onclick','call(this)');
	pbuy.classList.add("product-button");
	
	padd.textContent = "Add to Cart"; 
	padd.classList.add("product-button");
	
	divmain.appendChild(pid);
	divmain.appendChild(pimage);
	divmain.appendChild(pname);
	divmain.appendChild(pprice);
	divmain.appendChild(pquantity);
	divmain.appendChild(pexpiry);
	divmain.appendChild(section);
	section.appendChild(padd);
	section.appendChild(pbuy);
	divmain.appendChild(psales);
	
	}
	var count_a = ${total2};
	var b = 1;
	var divhead  = document.getElementById("parent-head");
	for(var t = 0; t<=count_a-1;t++){
		var maindiv = document.createElement("div");
		maindiv.id = name+b;
		maindiv.classList.add('product-card');
		
		divhead.appendChild(maindiv);
		
		var stockimage = document.createElement("img");
		var stockname = document.createElement("h1");
		var stockid = document.createElement("h4");
		var stockprice = document.createElement("h2");
		var stockquantity = document.createElement("h3");
		var block = document.createElement("div");
		var stockadd = document.createElement("button");
		var stockbuy = document.createElement("button");
		var stockexpiry = document.createElement("h5");
		var stocksales = document.createElement("h6");
		
		stockid.textContent = "Product id : " + id_stock[t];
		stockid.classList.add("product-id");
		
		stockimage.src = img_stock[t]; 
		stockimage.alt = "image is " + b;
		b++;
		stockimage.classList.add("img-new");
		
		stockname.textContent = "Product Name : " + name_stock[t]; 
		stockname.classList.add("product-name");
		
		stockprice.textContent = "Product Price : " + price_stock[t] + " INR"; 
		stockprice.classList.add("product-price");
		
		stockquantity.textContent = "Product Quantity : " + qty_stock[t] + " Kg"; 
		stockquantity.classList.add("product-quantity");
		
		stockexpiry.textContent = "Product Expiry date : " + expiry_stock[t]; 
		stockexpiry.classList.add("product-expiry");
		
		stocksales.textContent = "Product Sales end date : " + sales_stock[t]; 
		stocksales.classList.add("product-sales");
		
		block.classList.add("product-section");
		
		stockbuy.classList.add("product-button");
		stockbuy.textContent = "Buy Product"; 
		stockbuy.id = find+b;
		stockbuy.setAttribute('onclick','call(this)');
		
		stockadd.textContent = "Add to Cart"; 
		stockadd.classList.add("product-button");
		
		maindiv.appendChild(stockid);
		maindiv.appendChild(stockimage);
		maindiv.appendChild(stockname);
		maindiv.appendChild(stockprice);
		maindiv.appendChild(stockquantity);
		maindiv.appendChild(stockexpiry);
		maindiv.appendChild(block);
		block.appendChild(stockadd);
		block.appendChild(stockbuy);
		maindiv.appendChild(stocksales);
		
		}
	function call(element){
	    	var parentDiv = element.parentElement;
	    	var headDiv = parentDiv.parentElement;
	    	var buyId = headDiv.querySelector("h4").textContent;
	    	document.getElementById("idbuy").value = buyId;  	
	    }
	var cluenav = 0;
	function keyvalue1(){
		cluenav = 6;
		document.getElementById("nav-key").innerText = cluenav;
	}function keyvalue2(){
		cluenav = 7;
		document.getElementById("nav-key").innerText = cluenav;
	}  	
	</script>
 
</body>
</html>