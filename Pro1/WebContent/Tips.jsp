<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Farmer/Tips</title>
<style type="text/css">
		<%@ include file="navCss.jsp" %>
		body{
			background-color:  lavender;
			
		}
		#nav-four{
    		border-top : 2px solid #16A085;
			border-bottom : 2px solid #16A085;
		}
		.tip-box{
			margin: 0px;
			padding: 10px;
		}
		.date-view{
			
			font-size : 15px;
			display : block;
			width : 250px;
			text-align:center;
			line-height : 25px;
			margin: 10px auto;
			padding: 5px;
			color: orange;
			background-color: beige;
			border-radius: 30px;
			border: 2px solid red;
		}
		.tip-view{
			width: fit-content;
			line-height: 25px;
			font-size : 18px;
			margin: 10px;
			padding: 5px;
			letter-spacing: 2px;
			word-spacing: 3px;
			color: blue;
			background-color: lightskyblue;
			border-radius: 20px;
			border: 2px solid moccasin;
		}
	</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<section id="parent-tip">
	
	</section>
	<script type="text/javascript">
	
	// Convert the Java array into a comma-separated string
    var data_ary = "<%= String.join(",", (String[]) request.getAttribute("data-tip")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    data_ary = data_ary.split(",");
    
 	// Convert the Java array into a comma-separated string
    var date_ary = "<%= String.join(",", (String[]) request.getAttribute("date-tip")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    date_ary = date_ary.split(",");

 	// Convert the Java array into a comma-separated string
    var time_ary = "<%= String.join(",", (String[]) request.getAttribute("time-tip")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    time_ary = time_ary.split(",");
    
    var total = ${count};
	var divlead  = document.getElementById("parent-tip");
	for(var m = 0; m<=total-1;m++){
	var divmain = document.createElement("div");
	divmain.classList.add('tip-box');
	
	divlead.appendChild(divmain);
	
	var postdate = document.createElement("label");
	var tipcontent = document.createElement("p");
	
	postdate.textContent = "Tip posted on : " + date_ary[m] + " at " + time_ary[m]; 
	
	var con_tip = data_ary[m];
	var con = con_tip.split("$$$").join(",");
	
	tipcontent.textContent = con;
	
	postdate.classList.add('date-view');
	tipcontent.classList.add('tip-view');
	
	divmain.appendChild(postdate);
	divmain.appendChild(tipcontent);
	}
	</script>
</body>
</html>