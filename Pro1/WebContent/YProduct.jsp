<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String pi1 = (String) request.getAttribute("pi1n");
String pn1 = (String)request.getAttribute("pn1n");
Integer pq1 = (Integer)request.getAttribute("pq1n");
Float pp1 = (Float)request.getAttribute("pp1n");
String pi2 = (String) request.getAttribute("pi2n");
String pn2 = (String)request.getAttribute("pn2n");
Integer pq2 = (Integer)request.getAttribute("pq2n");
Float pp2 = (Float)request.getAttribute("pp2n");
String pi3 = (String) request.getAttribute("pi3n");
String pn3 = (String)request.getAttribute("pn3n");
Integer pq3 = (Integer)request.getAttribute("pq3n");
Float pp3 = (Float)request.getAttribute("pp3n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Insert title here</title>
<title></title>

  <style>
    <%@ include file="navCss.jsp" %>
/* -----------------------------------*/
    /* Centered Heading */
    h1 {
      text-align: center;
      margin-top: 20px;
      font-size: 32px;
    }

    /* Container for the divs */
    .container {
      display: flex;
      justify-content: space-around;
      padding: 20px;
      margin-top: 20px;
      flex-wrap : wrap;
    }

    /* Individual div inside the container */
    .box {
      width: 30%;
      text-align: center;
      padding: 15px;
      margin-top: 20px;
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
      font-size: 14px;
    }

    /* Button styles */
    .box button {
      background-color: #333;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    /* Button hover effect */
    .box button:hover {
      background-color: #555;
    }
    #hii{
    	visibility: hidden;
    }
    .disappear{
    display: none;
    }
    #demo{
    display: block;
    }
  </style>
  </head>
<body>
	<input type="hidden" id="rule" value="${tp}">
  <%@ include file="navbar.jsp" %>
	
  <!-- Centered Heading -->
  <h1>Published Products</h1>

  <!-- Container for the three divs -->
  <div class="container">
    <!-- First div -->
    <div class="box disappear" id="p1">
      <img src="<%=pi1 %>" alt="Image 1">
      <label><%=pn1 %></label>
      <label>Quantity :<%=pq1 %></label>
      <label>Price:<%=pp1 %></label>
      <button>View</button>
    </div>

    <!-- Second div -->
    <div class="box disappear" id="p2">
      <img src="<%=pi2 %>" alt="Image 2">
      <label><%=pn2%></label>
      <label>Quantity :<%=pq2 %></label>
      <label>Price:<%=pp2 %></label>
      <button>View</button>
    </div>

    <!-- Third div -->
    <div class="box disappear" id="p3">
      <img src="<%=pi3 %>" alt="Image 3">
      <label><%=pn3 %></label>
      <label>Quantity :<%=pq3 %></label>
      <label>Price:<%=pp3 %></label>
      <button>View</button>
    </div>
    <div style="display: none;" class="box disappear" id="p4">
      <img src="image1.jpg" alt="Image">
      <label>Service 1</label>
      <label>Details about Service 1</label>
      <label>Price: $99</label>
      <button>Learn More</button>
    </div>
    
  </div>
  
	<script type="text/javascript">
	var a = document.getElementById("rule").value;
	var n = "p";
	var b = 1;
	for (var i = 1; i <= a; i++) {
		var label = document.getElementById(n+b);
		label.classList.remove("disappear");
		b++;	
	}
	</script>
</body>
</html>