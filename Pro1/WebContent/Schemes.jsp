<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Farmer/Government Schemes</title>
<style type="text/css">
<%@ include file="navCss.jsp" %>
	body{
		background-color:  #A2D9CE;
		
	}
	#nav-five{
   		border-top : 2px solid #16A085;
		border-bottom : 2px solid #16A085;
	}
	.scheme-box{
		margin: 0px;
		padding: 10px;
	}
	.date-view{
		
		font-size : 25px;
		display : block;
		width : 500px;
		text-align:center;
		line-height : 25px;
		margin: 10px auto;
		padding: 5px;
		color: darkgreen;
		background-color: beige;
		border-radius: 30px;
		border: 2px solid red;
	}
	.scheme-view{
		width: fit-content;
		line-height: 25px;
		font-size : 28px;
		margin: 10px;
		padding: 10px;
		letter-spacing: 2px;
		word-spacing: 3px;
		color: d2691e;
		background-color: #fffacd;
		border-radius: 20px;
		border: 2px solid moccasin;
	}
</style>
</head>
<body>

	<%@ include file="navbar.jsp" %>
	
	<section id="parent-scheme">
	
	</section>
	<script type="text/javascript">
	
	// Convert the Java array into a comma-separated string
    var data_ary = "<%= String.join(",", (String[]) request.getAttribute("data-scheme")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    data_ary = data_ary.split(",");
    
 	// Convert the Java array into a comma-separated string
    var date_ary = "<%= String.join(",", (String[]) request.getAttribute("date-scheme")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    date_ary = date_ary.split(",");

 	// Convert the Java array into a comma-separated string
    var time_ary = "<%= String.join(",", (String[]) request.getAttribute("time-scheme")) %>"; 

    // Convert the comma-separated string into a JavaScript array
    time_ary = time_ary.split(",");
    
    var total = ${count};
	var divlead  = document.getElementById("parent-scheme");
	for(var m = 0; m<=total-1;m++){
	var divmain = document.createElement("div");
	divmain.classList.add('scheme-box');
	
	divlead.appendChild(divmain);
	
	var postdate = document.createElement("label");
	var schemecontent = document.createElement("p");
	
	postdate.textContent = "Scheme posted on " + date_ary[m] + " at " + time_ary[m] + " IST"; 
	
	var con_scheme = data_ary[m];
	
	var con = con_scheme.split("$$$").join(",");
	
	schemecontent.textContent = con;
	
	postdate.classList.add('date-view');
	schemecontent.classList.add('scheme-view');
	
	divmain.appendChild(postdate);
	divmain.appendChild(schemecontent);
	}
	
	</script>
</body>
</html>