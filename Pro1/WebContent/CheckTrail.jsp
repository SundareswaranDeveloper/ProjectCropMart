<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Insert title here</title>

<style type="text/css">
#film{
color : red;
}
#contain1{
	background-color: red;
}
#contain2{
	background-color: orange;
}
/* Header Styles */
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
    color: white;
    background-color:  #333;
    border: 1px solid #333;
    text-decoration: none;
    font-weight: bold;
}

header nav ul li button:hover {
    text-decoration: underline;
}

	
	.products {
    padding: 20px;
    text-align: center;
}

.products h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.product-list {
    display: flex;
    justify-content: center;
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

.product-card button {
    padding: 8px 15px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
}

.product-card button:hover {
    background-color: #45a049;
}
.result{
    width: fit-content;
    margin: 20px auto;
}
.result label{
    display: inline;
    text-align: center;
    border: 1px solid lawngreen;
    border-radius: 20px;
    margin: 20px;
    padding: 10px 20px;
    font-size: 18px;
    color: darkgreen;
    background-color: skyblue;
   
}
.img-new{
	width: 100%;
}
	</style>
</head>
<body>

 <!-- Header Section -->
    <header>
        <div class="logo">
            <h1>CROP MART</h1>
        </div>
        <form action="SearchServlet" method="post">
            <label>Delivery Location :</label>
            <input type="hidden" id="sid" name="cid">
            <input type="text" name="cond1">
            <input type="text" name="cond2" value="Search Products ...">
            <input type="submit" value="Search">
        </form>
        <nav>
            <ul>
                <li><button>My Products </button></li>
                <li><button>My Cart</button></li>   
            </ul>
            
        </nav>
        <div>
        <i class="fa-solid fa-user"></i>
        <label id="hide">${crtid}</label>
    </div>
    </header>
    <div style="display: none;">
    <input id="check1" value="${total1}">
    <input id="check2" value="${total2 }">
    </div>
	<div class="result"> 
        <label> Showing Result for Search Product ${sproduct }</label>
        <label> Showing Result for Search Delivery Location ${slocation }</label>

    </div>
    <form action="CusOrderServlet" method="post">
<section class="products">
		<input type="hidden" id="idbuy" name="sellid">
		<input type="hidden" id="cusid" name="cmid">
		<input type="hidden" value="${slocation}" name="location">
        <h2>Products starts from Quantity 5 Kg</h2>
        <div class="product-list" id="parent">
        
        </div>  
    </section>
    
    <section class="products">
        <h2>Products starts from Quantity 50 Kg</h2>
        <div class="product-list" id="parent-head">
        
        </div>  
    </section>
    </form>
   
    <h1 id="sun" style="color: red;background-color: green;">llll</h1>
   

    <script>
    
        // Convert the Java array into a comma-separated string
        var name_ary = "<%= String.join(",", (String[]) request.getAttribute("productname")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        name_ary = name_ary.split(",");
        
        var id_ary = "<%= String.join(",", (String[]) request.getAttribute("productid")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        id_ary = id_ary.split(",");
        
        var qty_ary = "<%= String.join(",", (String[]) request.getAttribute("productqty")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        qty_ary = qty_ary.split(",");
        
        var price_ary = "<%= String.join(",", (String[]) request.getAttribute("productprice")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        price_ary = price_ary.split(",");
        
        var sales_ary = "<%= String.join(",", (String[]) request.getAttribute("productsales")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        sales_ary = sales_ary.split(",");
        
        var expiry_ary = "<%= String.join(",", (String[]) request.getAttribute("productexpiry")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        expiry_ary = expiry_ary.split(",");
        
        var img_ary = "<%= String.join(",", (String[]) request.getAttribute("productimg")) %>"; 
		document.write("value is " + img_ary);
        // Convert the comma-separated string into a JavaScript array
        img_ary = img_ary.split(",");
        document.write("value is changed to " + img_ary);
     // Convert the Java array into a comma-separated string
        var name_stock = "<%= String.join(",", (String[]) request.getAttribute("stockname")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        name_stock = name_stock.split(",");
        
        var id_stock = "<%= String.join(",", (String[]) request.getAttribute("stockid")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        id_stock = id_stock.split(",");
        
        var qty_stock = "<%= String.join(",", (String[]) request.getAttribute("stockqty")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        qty_stock = qty_stock.split(",");
        
        var price_stock = "<%= String.join(",", (String[]) request.getAttribute("stockprice")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        price_stock = price_stock.split(",");
        
        var sales_stock = "<%= String.join(",", (String[]) request.getAttribute("stocksales")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        sales_stock = sales_stock.split(",");
        
        var expiry_stock = "<%= String.join(",", (String[]) request.getAttribute("stockexpiry")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        expiry_stock = expiry_stock.split(",");
        
        var img_stock = "<%= String.join(",", (String[]) request.getAttribute("stockimg")) %>"; 

        // Convert the comma-separated string into a JavaScript array
        img_stock = img_stock.split(",");
       
        

    var cmid = document.getElementById("hide").textContent;
	document.getElementById("sid").innerText = cmid;
	document.getElementById("cusid").value = cmid;
	document.getElementById("sun").innerText =  "${sproduct}";
	
	var count = ${total1};
	document.write(count);
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
	pimage.src = img_ary[i]; 
	pimage.alt = "image is " + a;
	a++;
	pimage.classList.add("img-new");
	pname.textContent = name_ary[i]; 
	
	

	pprice.textContent = price_ary[i]; 
	
	
	pquantity.textContent = qty_ary[i]; 
	pexpiry.textContent = expiry_ary[i]; 
	
	
	psales.textContent = sales_ary[i]; 
	pbuy.textContent = "Buy"; 
	pbuy.id = find+a;
	pbuy.setAttribute('onclick','call(this)');

	
	padd.textContent = "Add to Cart"; 
	
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
		stockimage.src = img_stock[t]; 
		stockimage.alt = "image is " + b;
		b++;
		stockimage.classList.add("img-new");
		stockname.textContent = name_stock[t]; 
		
		

		stockprice.textContent = price_stock[t]; 
		
		
		stockquantity.textContent = qty_stock[t]; 
		stockexpiry.textContent = expiry_stock[t]; 
		
		
		stocksales.textContent = sales_stock[t]; 
		stockbuy.textContent = "Buy"; 
		stockbuy.id = find+b;
		stockbuy.setAttribute('onclick','call(this)');
		
		stockadd.textContent = "Add to Cart"; 
		
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
	   	
	</script>
 
</body>
</html>