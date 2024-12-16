<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<title>Insert title here</title>
<style type="text/css">
        
        /* General Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-color: #f4f4f4;
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
    background-color: #333;
    border: 1px solid #333;
    text-decoration: none;
    font-weight: bold;
}

header nav ul li button:hover {
    text-decoration: underline;
}

/* Hero Section */
.hero {
    background-color: #4CAF50;
    color: white;
    text-align: center;
    padding: 50px 20px;
}

.hero h2 {
    margin: 0;
    font-size: 36px;
}

.hero p {
    font-size: 18px;
    margin-top: 10px;
}

.hero button {
    padding: 10px 20px;
    background-color: white;
    color: #4CAF50;
    border: none;
    font-size: 16px;
    cursor: pointer;
    margin-top: 20px;
}

.hero button:hover {
    background-color: #45a049;
}

/* Category Section */
.categories {
    padding: 50px 20px;
    text-align: center;
}

.categories h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.category-list {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

.category-card {
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    width: 200px;
    padding: 15px;
    text-align: center;
}

.category-card img {
    width: 100%;
    height: auto;
    border-radius: 8px;
}

.category-card h3 {
    margin: 10px 0;
}


.features {
    padding: 50px 20px;
    text-align: center;
}

.features h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.features-list {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 20px;
    flex-wrap: wrap;

    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
   
    padding: 15px;
    text-align: center;
}

.features-list img {
    width: 200px;
    border-radius: 8px;
}

.features-list h3 {
    margin: 10px 0;
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
            <input type="submit" value="Search" >
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

    <!-- Hero Section -->
    <section class="hero">
        <h2>Fresh & Organic Groceries Delivered to Your Door</h2>
        <p>Shop the best produce, dairy, snacks, and more from local farms and markets.</p>
        <button>Shop Now</button>
    </section>

    <!-- Product Categories Section -->
    <section class="categories">
        <h2>Categories</h2>
        <div class="category-list">
            <div class="category-card">
                <img src="https://via.placeholder.com/150?text=Fruits" alt="Fruits">
                <h3>Fruits</h3>
            </div>
            <div class="category-card">
                <img src="https://via.placeholder.com/150?text=Vegetables" alt="Vegetables">
                <h3>Vegetables</h3>
            </div>
            <div class="category-card">
                <img src="https://via.placeholder.com/150?text=Dairy" alt="Dairy">
                <h3>Crops</h3>
            </div>
        </div>
    </section>
    <section class="features">
        <h2>Features</h2>
        <div class="features-list">
            
                <img src="https://via.placeholder.com/150?text=Fruits" alt="Fruits">
                <h3>Buy Products from Farmer and Product Quantity minimum 5 Kg around your Delivery Location maximum 20km.</h3>
            
            
                <img src="https://via.placeholder.com/150?text=Vegetables" alt="Vegetables">
                <h3>Buy Products from Farmer and Product Quantity minimum 50 Kg around your Delivery Location minimum 21km .</h3>
            
            
        </div>
    </section>
   <script type="text/javascript">
    var cmid = document.getElementById("hide").textContent;
	document.getElementById("sid").innerText = cmid;
   </script>
</body>
</html>