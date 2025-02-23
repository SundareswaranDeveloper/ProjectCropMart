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
		background-color: #e8eaf6;
		color : brown;
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
		height: 700px;
		flex-basis: 27%;
		flex-grow: 1;
		background-color: #FFF8DC;
		padding: 50px 20px 20px 20px;
		margin: 20px;
		display : flex;
		flex-direction : column;
		gap : 2px;
	}
	.product-card label{
		display : block;
		font-size : 32px;
		text-align : left;
		margin : 2px 2px 2px 15%;
		font-weight: bolder;
	}
	.customer-card{
		height: 700px;
		flex-basis: 27%;
		flex-grow: 1;
		background-color: #FFF8DC;
		margin: 20px;
		display : flex;
		flex-direction : column;
		padding : 50px 20px 20px 20px;
		gap : 2px;
	}
	.customer-card label{
		display : block;
		font-size : 32px;
		text-align : left;
		margin : 2px 2px 2px 15%;
	}
	.cus-design{
		color : blue;
		background-color : lightgreen;
		border-radius : 20px;
		padding : 5px;
		line-height: 30px;
		min-height: 20px;
		max-height: 500px; 
	}
	.order-status{
	    height: 700px;
	    flex-basis: 27%;
	    flex-grow: 1;
	    background-color: #FFF8DC;
	    margin: 20px;
	    padding: 50px 20px 20px 20px;
	    display : flex;
	    flex-direction : column;
	    gap : 2px;    
	}
	.order-status label{
		display : block;
		font-size : 32px;
		text-align : left;
		margin : 2px 2px 2px 15%;
		color : #4E4A46;
		font-weight: bolder;
	}
	.product-title{
		text-align: center;
		margin : 2px;
		padding : 5px;
		font-size : 40px;
		color : orange;
	}
	.customer-title{
		text-align: center;
		margin : 2px;
		padding : 5px;
		font-size : 40px;
		color : #2C6B3F;
	}
	.order-title{
		text-align: center;
		margin : 2px;
		padding : 5px;
		font-size : 40px;
		color : #3700B3;
	}
	.product-image{
	   	display: block;
	    width: 200px;
	    height: 200px;
	    border-radius : 20px;
	    margin: 5px auto 5px auto;
	}
	.product-span{
		color : red;
	}
	.order-span{
		color : darkgreen;
		font-weight: normal;
	}
	.status-label{
	    text-align : center;
		width : 70%;
		margin : 5px 15%;
		padding : 5px;
		font-size : 32px;
		color : #4B0082;
		border : 2px solid green;
		background-color: #CFD8DC;
		border-radius : 20px;
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
	.cancel-label{
		font-size : 32px;
		text-align : center;
		margin : 10px;
		color: darkgreen;
		text-align : center;
	}
	.field-input {
		display: block;
		font-size: 23px;
		border: 2px solid green;
		border-radius: 20px;
		margin : 5px 15%;
		width: 70%;
		background-color: #E0E0E0;
	}
	.order-guide{
		font-size : 32px;
		text-align : center;
		margin : 2px 2px 2px 15%;
		padding : 5px;
		color: blue;
		background-color: lightgrey;
		border-radius : 20px;
		min-height: 20px;
		max-height: 500px; 
		width : 70%;
	}
	.display-hide{
		display : none;
	}
	.view-hide label{
		display : block;
		background-color: #A5D6A7;
		color : #B71C1C;
		font-size : 32px;
		margin : 10px;
		padding : 10px 20px;
		text-align : center;
		border-radius : 20px;
		font-weight: bold;
	}
	.disappear{
		display : none;
	}
</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	 <h2 id="title"> Customer Orders </h2>
    <section id="order">
    	<div id="note1" class="view-hide disappear">
        	<label>Customer orders are empty. Once the customer purchases your product, it will be updated.</label>
        </div>
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
    var cus_district = "<%= String.join(",", (String[]) request.getAttribute("cus_district")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    cus_district = cus_district.split(",");
    
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
    
    var count = product_count[0];
    if(count == 0){
    	var article = document.getElementById("note1");
    	article.classList.remove("disappear");
    }
    var section  = document.getElementById("order");
    for (var i = 0; i <=count-1; i++) {
    	var divdetails = document.createElement("div");
    	divdetails.classList.add('product');
    	section.appendChild(divdetails);
    	
    	var divproduct = document.createElement("div");
    	divproduct.classList.add('product-card');
    	divdetails.appendChild(divproduct);
    	    	
    	var pt = document.createElement("h1");
    	var pid = document.createElement("label");
    	var pimage = document.createElement("img");
    	var pname = document.createElement("label");
    	var pquantity = document.createElement("label");
    	var pexpiry = document.createElement("label");
    	var pprice = document.createElement("label");
    	
    	var pid_value = document.createTextNode("Product ID : ");
    	var pname_value  = document.createTextNode("Product Name : ");
    	var pquantity_value  = document.createTextNode("Product Quantity : ");
    	var pexpiry_value  = document.createTextNode("Product Expiry Date : ");
    	var pprice_value  = document.createTextNode("Product Price : ");
    	
    	var pid_value2 = document.createElement('span');
    	var pname_value2  = document.createElement('span');
    	var pquantity_value2  = document.createElement('span');
    	var pexpiry_value2  = document.createElement('span');
    	var pprice_value2  = document.createElement('span');
    	
    	pt.textContent = "Product Details";
    	pt.classList.add("product-title");
    	
    	pid_value2.textContent = product_id[i];
    	pid_value2.classList.add("product-span");
    	
    	pimage.src = product_image[i]; 
    	pimage.alt = "Product image " + i;
    	pimage.classList.add("product-image");
    	
    	pname_value2.textContent = product_name[i]; 
    	pname_value2.classList.add("product-span");
    	
    	pprice_value2.textContent = product_price[i] + " INR"; 
    	pprice_value2.classList.add("product-span");
    	
    	pquantity_value2.textContent = product_qty[i] + " Kg"; 
    	pquantity_value2.classList.add("product-span");
    	
    	pexpiry_value2.textContent = product_expiry[i]; 
    	pexpiry_value2.classList.add("product-span");
    	
    	divproduct.appendChild(pt);
    	divproduct.appendChild(pimage);
    	divproduct.appendChild(pid);
    	divproduct.appendChild(pname);
    	divproduct.appendChild(pquantity);
    	divproduct.appendChild(pexpiry);
    	divproduct.appendChild(pprice);
    	
    	pid.appendChild(pid_value);
    	pid.appendChild(pid_value2);
    	
    	pname.appendChild(pname_value);
    	pname.appendChild(pname_value2);
    	
    	pquantity.appendChild(pquantity_value);
    	pquantity.appendChild(pquantity_value2);
    	
    	pexpiry.appendChild(pexpiry_value);
    	pexpiry.appendChild(pexpiry_value2);
    	
    	pprice.appendChild(pprice_value);
    	pprice.appendChild(pprice_value2);
    	
    	
    	var divcustomer = document.createElement("div");
    	divcustomer.classList.add('customer-card');
    	divdetails.appendChild(divcustomer);
    	var ct = document.createElement("h1");
    	var cname = document.createElement("label");
    	var cmobile = document.createElement("label");
    	var caddress = document.createElement("label");
    	var cdistrict = document.createElement("label");
    	var cpincode = document.createElement("label");
    	var clandmark = document.createElement("label");
    	
    	var c_name = document.createElement("label");
    	var c_mobile = document.createElement("label");
    	var c_address = document.createElement("label");
    	var c_district = document.createElement("label");
    	var c_pincode = document.createElement("label");
    	var c_landmark = document.createElement("label");
    	
    	ct.textContent = "Customer Details";
    	ct.classList.add("customer-title");
    	
    	cname.textContent = "Customer Name ";
    	c_name.textContent = cus_name[i];
    	c_name.classList.add("cus-design");
    	
    	cmobile.textContent = "Customer Mobile Number "; 
    	c_mobile.textContent = cus_mobile[i]; 
    	c_mobile.classList.add("cus-design");
    	
    	var customer_address = cus_address[i].split("$$$").join(",");
    	caddress.textContent = "Customer Address "; 
    	c_address.textContent = customer_address; 
    	c_address.classList.add("cus-design");
    	
    	cdistrict.textContent = "Customer District ";
    	c_district.textContent = cus_district[i];
    	c_district.classList.add("cus-design");
    	
    	cpincode.textContent = "Customer Pincode";
    	c_pincode.textContent =  cus_pincode[i]; 
    	c_pincode.classList.add("cus-design");
    	
    	var customer_landmark = cus_landmark[i].split("$$$").join(",");
    	clandmark.textContent = "Customer Landmark ";
    	c_landmark.textContent = customer_landmark; 
    	c_landmark.classList.add("cus-design");
    	
    	divcustomer.appendChild(ct);
    	divcustomer.appendChild(cname);
    	divcustomer.appendChild(c_name);
    	divcustomer.appendChild(cmobile);
    	divcustomer.appendChild(c_mobile);
    	divcustomer.appendChild(caddress);
    	divcustomer.appendChild(c_address);
    	divcustomer.appendChild(cdistrict);
    	divcustomer.appendChild(c_district);
    	divcustomer.appendChild(cpincode);
    	divcustomer.appendChild(c_pincode);
    	divcustomer.appendChild(clandmark);
    	divcustomer.appendChild(c_landmark);
    	
    	var divorder = document.createElement("div");
    	divorder.classList.add('order-status');
    	divdetails.appendChild(divorder);
    	
    	var ot = document.createElement("h1");
    	ot.textContent = "Order Details";
    	ot.classList.add("order-title");
    	
    	var status = order_status[i];
    	
    	var o_id = document.createElement("label");
    	var o_status = document.createElement("label");
    	var o_status_value = document.createElement("h4");
    	var o_date = document.createElement("label");
    	var o_time = document.createElement("label");
    	
    	var o_id_value = document.createTextNode("Order ID : ");
    	var o_date_value = document.createTextNode("Order Date : ");
    	var o_time_value = document.createTextNode("Order Time : ");
    	
    	var o_id_value2 = document.createElement("span");
    	var o_date_value2 = document.createElement("span");
    	var o_time_value2 = document.createElement("span");
    	 
    	o_id_value2.textContent = order_id[i];
    	o_id_value2.classList.add("order-span");
    	
    	o_status.textContent = "Order Status "; 
    	o_status_value.textContent = order_status[i];
    	o_status_value.classList.add("status-label");
    	 
    	o_date_value2.textContent = order_date[i]; 
    	o_date_value2.classList.add("order-span");
    	 
    	o_time_value2.textContent = order_time[i] + " IST";
    	o_time_value2.classList.add("order-span");
    	
    	divorder.appendChild(ot);
    	divorder.appendChild(o_id);
    	o_id.appendChild(o_id_value);
    	o_id.appendChild(o_id_value2);
    	divorder.appendChild(o_status);
    	divorder.appendChild(o_status_value);
    	divorder.appendChild(o_date);
    	o_date.appendChild(o_date_value);
    	o_date.appendChild(o_date_value2);
    	divorder.appendChild(o_time);
    	o_time.appendChild(o_time_value);
    	o_time.appendChild(o_time_value2);
    	
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
     	    
     	    var info = document.createElement("h2");
       		info.textContent = "Enter below details to Accept (or) Cancel Order";
       		info.classList.add("order-guide");
    	   
     	    
    		var o_delivery = document.createElement("h3");
        	o_delivery.textContent = " Excepted Delivery Date "; 
        	o_delivery.classList.add("cancel-label");
        	delivery_input = document.createElement("input");
        	delivery_input.setAttribute("type", "text");
     	    delivery_input.setAttribute("name", "deliverydate");
     	    delivery_input.classList.add("field-input");
     	   	var acceptbutton = document.createElement("button");
     	    acceptbutton.setAttribute("onclick", "change1()");
     	   	acceptbutton.classList.add("order-button");
     	    acceptbutton.setAttribute("type", "submit");
     	    acceptbutton.textContent = "Accept Order";
   	   		
   	   		var cancelreason = document.createElement("h3");
        	cancelreason.textContent = " Cancel Order Reason  ";
        	cancelreason.classList.add("cancel-label");
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
     	    
     	    var info = document.createElement("h2");
       		info.textContent = "Enter below details to Delivery (or) Cancel Order";
       		info.classList.add("order-guide");
    	   
     	    
    		var o_otp = document.createElement("h3");
        	o_otp.textContent = " OTP ";
        	o_otp.classList.add("cancel-label");
        	delivery_input = document.createElement("input");
        	delivery_input.setAttribute("type", "number");
     	    delivery_input.setAttribute("name", "deliveryotp");
     	    delivery_input.classList.add("field-input");
     	   	var acceptbutton = document.createElement("button");
     	   	acceptbutton.classList.add("order-button");
     	    acceptbutton.setAttribute("onclick", "change3()");
     	    acceptbutton.setAttribute("type", "submit");
     	    acceptbutton.textContent = "Delivery Order";
   	   		
   	   		var cancelreason = document.createElement("h3");
        	cancelreason.textContent = " Cancel Order Reason  ";
        	cancelreason.classList.add("cancel-label");
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
			var o_reason = document.createElement("label");
			var o_reason_value = document.createTextNode("Order Cancel Reason : ");
			var o_reason_value2 = document.createElement("span");
			o_reason_value2.textContent = cus_reason[i];
			o_reason_value2.classList.add("order-span");
			divorder.appendChild(o_reason);
			o_reason.appendChild(o_reason_value);
			o_reason.appendChild(o_reason_value2);
		}else if(status.charAt(0) == 'D'){
			var o_delivery = document.createElement("label");
			var o_delivery_value = document.createTextNode("Excepted Delivery Date : ");
			var o_delivery_value2 = document.createElement("span");
			o_delivery_value2.textContent = order_delivery[i];
			o_delivery_value2.classList.add("order-span");
			
			var o_otp = document.createElement("label");
			var o_otp_value = document.createTextNode("OTP : ");
			var o_otp_value2 = document.createElement("span");
			o_otp_value2.textContent = cus_otp[i];
			o_otp_value2.classList.add("order-span");
			
			var d_date = document.createElement("label");
			var d_date_value = document.createTextNode("Delivered Date : ");
			var d_date_value2 = document.createElement("span");
			d_date_value2.textContent = delivery_date[i];
			d_date_value2.classList.add("order-span");
			
			var d_time = document.createElement("label");
			var d_time_value = document.createTextNode("Delivered Time : ");
			var d_time_value2 = document.createElement("span");
			d_time_value2.textContent = delivery_time[i] + " IST";
			d_time_value2.classList.add("order-span");
			
			divorder.appendChild(o_delivery);
			
			o_delivery.appendChild(o_delivery_value);
			o_delivery.appendChild(o_delivery_value2);
			
			divorder.appendChild(o_otp);
			
			o_otp.appendChild(o_otp_value);
			o_otp.appendChild(o_otp_value2);
			
			divorder.appendChild(d_date);
			
			d_date.appendChild(d_date_value);
			d_date.appendChild(d_date_value2);
			
			divorder.appendChild(d_time);
			
			d_time.appendChild(d_time_value);
			d_time.appendChild(d_time_value2);
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