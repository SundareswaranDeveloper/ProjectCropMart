<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Farmer/Customer Orders</title>
<style type="text/css">
	<%@ include file="navCss.jsp" %>
	body{
	background-color: #F7CAC9;
	}
	#nav-six{
   		border-top : 2px solid #16A085;
		border-bottom : 2px solid #16A085;
	}
	#title{
	text-align : center;
	margin: 10px;
	padding : 5px;
	font-size: 40px;
	background-color: beige;
	}
	.product{
	    margin: 10px;
	    background-color: burlywood;
	    display: flex;
	    flex-direction: row;
	    border: 2px solid lightgreen;
	    border-radius: 20px;
	}
	.product-card{
	    height: 500px;
	    flex-basis: 27%;
	    flex-grow: 1;
	    background-color: beige;
	    margin: 20px;
	    padding: 20px;
	}
	.customer-card{
	    height: 500px;
	    flex-basis: 27%;
	    flex-grow: 1;
	    background-color: salmon;
	    margin: 20px;
	    padding: 20px;
	}
	.order-status{
	    height: 500px;
	    flex-basis: 27%;
	    flex-grow: 1;
	    background-color: lightskyblue;
	    margin: 20px;
	    padding: 20px;
	}
	#order label {
	    display: block;
	    text-align: center;
	    font-size: 32px;
	}
	.product-image{
	   	display: block;
	    width: 200px;
	    height: 200px;
	    margin: 5px auto 5px auto;
	}
	.disable-button{
		pointer-events : none;
	}
	.order-button{
		display: block;
		width: fit-content;
		margin : 5px auto 5px auto;
		padding: 10px 20px;
		background-color:#5FF1C9;
		color: #228B22;
		border: none;
		font-size: 25px;
		cursor: pointer;
		border-radius: 20px;
	}
	.order-button:hover{
		 background-color:  #D1F7C4;
		 color: #1C1C1C;
	}
	.field-input {
	display: block;
	font-size: 23px;
	border: 2px solid green;
	border-radius: 20px;
	margin : 5px auto 5px auto;
	width: 200px;
	background-color: #E0E0E0;
	}
	.order-guide{
	background-color: lightgrey;
	}
	.display-hide{
	display : none;	}
</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	 <h2 id="title"> My Orders </h2>
    <section id="order">
        
    </section>
	<script type="text/javascript">
	
	// Convert the Java array into a comma-separated string
    var product_name = "<%= String.join(",", (String[]) request.getAttribute("productname")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_name = product_name.split(",");
	
 	// Convert the Java array into a comma-separated string
    var product_id = "<%= String.join(",", (String[]) request.getAttribute("productid")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_id = product_id.split(",");
    
 	// Convert the Java array into a comma-separated string
    var product_qty = "<%= String.join(",", (String[]) request.getAttribute("productqty")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_qty = product_qty.split(",");
	
 	// Convert the Java array into a comma-separated string
    var product_price = "<%= String.join(",", (String[]) request.getAttribute("productprice")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_price = product_price.split(",");
	
 	// Convert the Java array into a comma-separated string
    var product_expiry = "<%= String.join(",", (String[]) request.getAttribute("productexpiry")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_expiry = product_expiry.split(",");
    
 	// Convert the Java array into a comma-separated string
    var product_image = "<%= String.join(",", (String[]) request.getAttribute("productimage")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_image = product_image.split(",");
	
 	// Convert the Java array into a comma-separated string
    var cus_name = "<%= String.join(",", (String[]) request.getAttribute("cus_name")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_name = cus_name.split(",");
	
 	// Convert the Java array into a comma-separated string
    var cus_mobile = "<%= String.join(",", (String[]) request.getAttribute("cus_mobile")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_mobile = cus_mobile.split(",");
    
 	// Convert the Java array into a comma-separated string
    var cus_address = "<%= String.join(",", (String[]) request.getAttribute("cus_address")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_address = cus_address.split(",");
	
 	// Convert the Java array into a comma-separated string
    var cus_pincode = "<%= String.join(",", (String[]) request.getAttribute("cus_pincode")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_pincode = cus_pincode.split(",");
	
 	// Convert the Java array into a comma-separated string
    var cus_landmark = "<%= String.join(",", (String[]) request.getAttribute("cus_landmark")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_landmark = cus_landmark.split(",");
    
 	// Convert the Java array into a comma-separated string
    var order_id = "<%= String.join(",", (String[]) request.getAttribute("order_id")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    order_id = order_id.split(",");
	
 	// Convert the Java array into a comma-separated string
    var order_status = "<%= String.join(",", (String[]) request.getAttribute("order_status")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    order_status = order_status.split(",");
	
 	// Convert the Java array into a comma-separated string
    var order_date = "<%= String.join(",", (String[]) request.getAttribute("order_date")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    order_date = order_date.split(",");
    
 	// Convert the Java array into a comma-separated string
    var order_time = "<%= String.join(",", (String[]) request.getAttribute("order_time")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    order_time = order_time.split(",");
	
 	// Convert the Java array into a comma-separated string
    var order_delivery = "<%= String.join(",", (String[]) request.getAttribute("order_delivery")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    order_delivery = order_delivery.split(",");
	
 	// Convert the Java array into a comma-separated string
    var cus_otp = "<%= String.join(",", (String[]) request.getAttribute("cus_otp")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_otp = cus_otp.split(",");
    
 	// Convert the Java array into a comma-separated string
    var cus_reason = "<%= String.join(",", (String[]) request.getAttribute("cus_reason")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_reason = cus_reason.split(",");
    
 	// Convert the Java array into a comma-separated string
    var delivery_date = "<%= String.join(",", (String[]) request.getAttribute("delivery_date")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    delivery_date = delivery_date.split(",");
	
 	// Convert the Java array into a comma-separated string
    var delivery_time = "<%= String.join(",", (String[]) request.getAttribute("delivery_time")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    delivery_time = delivery_time.split(",");
    
 	// Convert the Java array into a comma-separated string
    var product_count = "<%= String.join(",", (String[]) request.getAttribute("productcount")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    product_count = product_count.split(",");
    
    var section  = document.getElementById("order");
    var count = product_count[0];
    for (var i = 0; i <=count-1; i++) {
    	var divdetails = document.createElement("div");
    	divdetails.classList.add('product');
    	section.appendChild(divdetails);
    	
    	var divproduct = document.createElement("div");
    	divproduct.classList.add('product-card');
    	divdetails.appendChild(divproduct);
    	
    	var pid = document.createElement("label");
    	var pimage = document.createElement("img");
    	var pname = document.createElement("label");
    	var pquantity = document.createElement("label");
    	var pexpiry = document.createElement("label");
    	var pprice = document.createElement("label");
    	pid.textContent = "Product ID : " + product_id[i];
    	pimage.src = product_image[i]; 
    	pimage.alt = "Product image " + i;
    	pimage.classList.add("product-image");
    	pname.textContent = "Product Name :" + product_name[i]; 
    	pprice.textContent = "Product Price :" + product_price[i]; 
    	pquantity.textContent = "Product Quantity :" + product_qty[i]; 
    	pexpiry.textContent = "Product Expiry Date :" + product_expiry[i]; 
    	divproduct.appendChild(pid);
    	divproduct.appendChild(pimage);
    	divproduct.appendChild(pname);
    	divproduct.appendChild(pquantity);
    	divproduct.appendChild(pexpiry);
    	divproduct.appendChild(pprice);
    	
    	var divcustomer = document.createElement("div");
    	divcustomer.classList.add('customer-card');
    	divdetails.appendChild(divcustomer);
    	var cname = document.createElement("label");
    	var cmobile = document.createElement("label");
    	var caddress = document.createElement("label");
    	var cpincode = document.createElement("label");
    	var clandmark = document.createElement("label");
    	cname.textContent = "Customer Name : " + cus_name[i];
    	cmobile.textContent = "Customer Mobile Number : " + cus_mobile[i];
    	var customer_address = cus_address[i].split("$$$").join(",");
    	caddress.textContent = "Customer Address : " + customer_address; 
    	cpincode.textContent = "Customer Pincode : " + cus_pincode[i]; 
    	var customer_landmark = cus_landmark[i].split("$$$").join(",");
    	clandmark.textContent = "Customer Landmark : " + customer_landmark; 
    	divcustomer.appendChild(cname);
    	divcustomer.appendChild(cmobile);
    	divcustomer.appendChild(caddress);
    	divcustomer.appendChild(cpincode);
    	divcustomer.appendChild(clandmark);
    	
    	var divorder = document.createElement("div");
    	divorder.classList.add('order-status');
    	divdetails.appendChild(divorder);
    	var status = order_status[i];
    	var o_id = document.createElement("label");
    	var o_status = document.createElement("label");
    	var o_date = document.createElement("label");
    	var o_time = document.createElement("label");
    	o_id.textContent = "Order ID : " + order_id[i];
    	o_status.textContent = "Order Status : " + order_status[i]; 
    	o_date.textContent = "Order Date : " + order_date[i]; 
    	o_time.textContent = "Order Time : " + order_time[i];
    	divorder.appendChild(o_id);
    	divorder.appendChild(o_status);
    	divorder.appendChild(o_date);
    	divorder.appendChild(o_time);
    	if(status.charAt(0) == 'O') {
    		let formstatus = document.createElement("form");
    		formstatus.setAttribute("action", "FarmerOrderStatus");
    		formstatus.setAttribute("method", "POST");
    		
    		var formcmid = document.createElement("input");
    		formcmid.value = "${crtid}";
    		formcmid.classList.add("display-hide");
    		formcmid.setAttribute("name", "cropmartid");
     	    var guideway = document.createElement("input");
     	    guideway.classList.add("display-hide");
     	    guideway.setAttribute("name", "clue");
     	    guideway.id = "orderaccept";
    	    
    	    var demoid = document.createElement("input");
        	demoid.value = order_id[i];
        	demoid.classList.add("display-hide");
     	    demoid.setAttribute("name", "order-id-demo");
     	    
     	    var info = document.createElement("label");
       		info.textContent = "Enter below details to Accept (or) Cancel Order";
       		info.classList.add("order-guide");
    	   
     	    
    		var o_delivery = document.createElement("label");
        	o_delivery.textContent = " Excepted Delivery Date "; 
        	delivery_input = document.createElement("input");
        	delivery_input.setAttribute("type", "text");
     	    delivery_input.setAttribute("name", "deliverydate");
     	    delivery_input.classList.add("field-input");
     	   	var acceptbutton = document.createElement("button");
     	    acceptbutton.setAttribute("onclick", "change1()");
     	   	acceptbutton.classList.add("order-button");
     	    acceptbutton.setAttribute("type", "submit");
     	    acceptbutton.textContent = "Accept Order";
   	   		
   	   		var cancelreason = document.createElement("label");
        	cancelreason.textContent = " Cancel Order Reason  ";
        	cancel_input = document.createElement("input");
        	cancel_input.setAttribute("type", "text");
     	    cancel_input.setAttribute("name", "cancelreason");
     	    cancel_input.classList.add("field-input");
   	  	 	var cancelbutton = document.createElement("button");
   	  	 	cancelbutton.setAttribute("onclick", "change2()");
	    	cancelbutton.setAttribute("type", "submit");
	   		cancelbutton.textContent = "Cancel Order";
	   		cancelbutton.classList.add("order-button");
        	formstatus.appendChild(formcmid);
        	formstatus.appendChild(guideway);
        	formstatus.appendChild(demoid);
        	formstatus.appendChild(info);
        	formstatus.appendChild(o_delivery);
        	formstatus.appendChild(delivery_input);
        	formstatus.appendChild(acceptbutton);
        	formstatus.appendChild(cancelreason);
        	formstatus.appendChild(cancel_input);
        	formstatus.appendChild(cancelbutton);
        	divorder.appendChild(formstatus);
		} else if(status.charAt(0) == 'A') {
			let formstatus = document.createElement("form");
    		formstatus.setAttribute("action", "FarmerOrderStatus");
    		formstatus.setAttribute("method", "POST");
    		var formcrtid = document.createElement("input");
    		formcrtid.value = "${crtid}";
    		formcrtid.classList.add("display-hide");
    		formcrtid.setAttribute("name", "cropmartid");
     	    var wayguide = document.createElement("input");
     	    wayguide.classList.add("display-hide");
     	    wayguide.setAttribute("name", "clue");
     	    wayguide.id = "orderdeliver";
    		var demoid = document.createElement("input");
        	demoid.value = order_id[i];
        	demoid.classList.add("display-hide");
     	    demoid.setAttribute("name", "order-id-demo");
     	    
     	    var o_delivery = document.createElement("label");
        	o_delivery.textContent = " Excepted Delivery Date : " + order_delivery[i];
     	    
     	    var info = document.createElement("label");
       		info.textContent = "Enter below details to Delivery (or) Cancel Order";
       		info.classList.add("order-guide");
    	   
     	    
    		var o_otp = document.createElement("label");
        	o_otp.textContent = " OTP "; 
        	delivery_input = document.createElement("input");
        	delivery_input.setAttribute("type", "number");
     	    delivery_input.setAttribute("name", "deliveryotp");
     	    delivery_input.classList.add("field-input");
     	   	var acceptbutton = document.createElement("button");
     	   	acceptbutton.classList.add("order-button");
     	    acceptbutton.setAttribute("onclick", "change3()");
     	    acceptbutton.setAttribute("type", "submit");
     	    acceptbutton.textContent = "Delivery Order";
   	   		
   	   		var cancelreason = document.createElement("label");
        	cancelreason.textContent = " Cancel Order Reason  ";
        	cancel_input = document.createElement("input");
        	cancel_input.setAttribute("type", "text");
     	    cancel_input.setAttribute("name", "cancelreason");
     	    cancel_input.classList.add("field-input");
   	  	 	var cancelbutton = document.createElement("button");
   	  		cancelbutton.setAttribute("onclick", "change4()");
	    	cancelbutton.setAttribute("type", "submit");
	   		cancelbutton.textContent = "Cancel Order";
	   		cancelbutton.classList.add("order-button");
        	formstatus.appendChild(formcrtid);
        	formstatus.appendChild(wayguide);
        	formstatus.appendChild(demoid);
        	formstatus.appendChild(o_delivery);
        	formstatus.appendChild(info);
        	formstatus.appendChild(o_otp);
        	formstatus.appendChild(delivery_input);
        	formstatus.appendChild(acceptbutton);
        	formstatus.appendChild(cancelreason);
        	formstatus.appendChild(cancel_input);
        	formstatus.appendChild(cancelbutton);
        	divorder.appendChild(formstatus);
		}else if(status.charAt(0) == 'C'){
			var cancellabel = document.createElement("label");
        	cancellabel.textContent = " Cancel Order Reason  ";
        	var cancelreason = document.createElement("label");
        	cancelreason.textContent = cus_reason[i];
        	divorder.appendChild(cancellabel);
        	divorder.appendChild(cancelreason);
		}else if(status.charAt(0) == 'D'){
			var o_delivery = document.createElement("label");
        	var o_otp = document.createElement("label");
        	o_delivery.textContent = "Excepted Delivery Date : " + order_delivery[i]; 
        	o_otp.textContent = "OTP : " + cus_otp[i]; 
        	var d_date = document.createElement("label");
        	var d_time = document.createElement("label");
        	d_date.textContent = "Delivered Date : " + delivery_date[i]; 
        	d_time.textContent = "Delivered Time : " + delivery_time[i];
        	var o_success = document.createElement("button");
        	o_success.textContent = "Order Delivered Successfully";
        	o_success.classList.add("order-button");
        	o_success.classList.add("disable-button");
        	divorder.appendChild(o_delivery);
        	divorder.appendChild(o_otp);
        	divorder.appendChild(d_date);
        	divorder.appendChild(d_time);
        	divorder.appendChild(o_success);
		}
	}
    
    function change1(){
    	document.getElementById("orderaccept").innerText = "1";
    }function change2(){
    	document.getElementById("orderaccept").innerText = "2";
    }function change3(){
    	document.getElementById("orderdeliver").innerText = "3";
    }function change4(){
    	document.getElementById("orderdeliver").innerText = "4";
    }
	</script>
</body>
</html>