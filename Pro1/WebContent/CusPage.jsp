<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

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
    background-color: inherit;
    border: 1px solid #333;
    text-decoration: none;
    font-weight: bold;
}

header nav ul li button:hover {
    text-decoration: underline;
}

	
	.products {
    padding: 50px 20px;
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
<section class="products">
        <h2>Products starts from Quantity 5 Kg</h2>
        <div class="product-list" id="parent">
            <div class="product-card">
                <h6>Product id : ${data[2].get(0)} </h6>
                <img src="${data[7].get(0)}" alt="Fresh Apples">
                <h3>${data[1].get(0)}</h3>
                <p>Price : ${data[4].get(0)}</p>
                <h3>Quantity : ${data[3].get(0)} </h3>
                <h6>Product Expiry Date : ${data[6].get(0)} </h6>
                <div><button>Add to Cart</button>  <button> Buy </button></div>
                <label> Sale ends on ${data[5].get(0)}</label>
            </div>
            <div class="product-card">
                <h6>Product id : ${data[2].get(1)} </h6>
                <img src="${data[7].get(1)}" alt="Fresh Apples">
                <h3>${data[1].get(1)}</h3>
                <p>Price : ${data[4].get(1)}</p>
                <h3>Quantity : ${data[3].get(1)} </h3>
                <h6>Product Expiry Date : ${data[6].get(1)} </h6>
                <div><button>Add to Cart</button>  <button> Buy </button></div>
                <label> Sale ends on ${data[5].get(1)}</label>
            </div>
            
          
        </div>
    </section>
    
    <section class="products">
        <h2>Products starts from Quantity 50 Kg</h2>
        <div class="product-list">
            <div class="product-card">
                <h6>Product id : ${data[9].get(0)} </h6>
                <img src="${data[14].get(0)}" alt="Fresh Apples">
                <h3>${data[8].get(0)}</h3>
                <p>Price : ${data[11].get(0)}</p>
                <h3>Quantity : ${data[10].get(0)} </h3>
                <h6>Product Expiry Date : ${data[13].get(0)} </h6>
                <div><button>Add to Cart</button>  <button> Buy </button></div>
                <label> Sale ends on ${data[12].get(0)}</label>
            </div>
            <div class="product-card">
                <h6>Product id : ${data[9].get(1)} </h6>
                <img src="${data[14].get(1)}" alt="Fresh Apples">
                <h3>${data[8].get(1)}</h3>
                <p>Price : ${data[11].get(1)}</p>
                <h3>Quantity : ${data[10].get(1)} </h3>
                <h6>Product Expiry Date : ${data[13].get(1)} </h6>
                <div><button>Add to Cart</button>  <button> Buy </button></div>
                <label> Sale ends on ${data[12].get(1)}</label>
            </div>
            
            
            
        </div>
    </section>
    
    <script type="text/javascript">
   
    var cmid = document.getElementById("hide").textContent;
	document.getElementById("sid").innerText = cmid;

	 </script>

 
</body>
</html>