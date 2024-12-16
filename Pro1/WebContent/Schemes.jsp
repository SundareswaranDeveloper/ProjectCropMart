<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String gs1 =(String) request.getAttribute("Scheme1"); 
String gs2 =(String) request.getAttribute("Scheme2");
String gs3 =(String) request.getAttribute("Scheme3"); 
String gs4 =(String) request.getAttribute("Scheme4"); 
String gs5 =(String) request.getAttribute("Scheme5");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Insert title here</title>
<style type="text/css">
<%@ include file="navCss.jsp" %>
	body{
			background-color:  #32CD32;
			
		}
	
		.group{
			line-height: 20px;
			width: 100%;
			background-color: beige;
			gap: 100px;
			border-radius: 10px;
			margin: 20px;
			padding: 10px;
			
		}
		.disappear{
		display:none;
		}
	
</style>
</head>
<body>
<input type="hidden" id="total" value="${count}">
<%@ include file="navbar.jsp" %>
<div>
		<div class="group disappear" id="content1">
			<p> <%=gs1 %> </p>
		</div>
		<div class="group disappear" id="content2"><p> <%=gs2 %> </p> </div>
		<div class="group disappear" id="content3"> <p> <%=gs3 %> </p></div>
		<div class="group disappear" id="content4"><p> <%=gs4 %> </p></div>
		<div class="group disappear" id="content5"><p> <%=gs5 %> </p> </div>
		

	</div>
	<script type="text/javascript">
	var a = document.getElementById("total").value;
	var n = "content";
	var b = 1;
	for (var i = 1; i <= a; i++) {
		var label = document.getElementById(n+b);
		label.classList.remove("disappear");
		b++;	
	}
	</script>
</body>
</html>