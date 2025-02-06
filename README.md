# Project Crop Mart 

# Introduction :

Developed a full-stack E-Commerce system for farmers to sell their products and customers to purchase required products.

Utilized Java, JSP, and Servlets for backend services, while using HTML, CSS, and JavaScript for the frontend UI.

Designed and implemented a secure MySQL database, ensuring seamless integration with backend services for efficient data transfer operations.

Developed the project using Eclipse as the integrated development environment (IDE).

# Project Link :

Developed a Project Crop Mart, shared in my Github account SundareswaranDeveloper and the link shown below.

Github : https://github.com/SundareswaranDeveloper/ProjectCropMart

Project Crop Mart version 0.1 output demo video has been published on YouTube. You can view it using the following link: https://youtu.be/TFcrousFtV4

# General File Information :

.java : These files are represented for backend services like Servlet, JBDC connection, etc.

.jsp : These files are represented for Frontend UI.

Index.jsp : Welcome Page of the Project Crop Mart.

Log.jsp :  User Login page.

Farmer1.jsp : Farmer Registration page.

Cus1.jsp : Customer Registration page.

Id.jsp : Crop Mart user id allocation and password verification page.

Farmer2.jsp : Motivational Corner page for Farmers.

CusMain.jsp : Customer Home page.

CheckTrail.jsp : Customer Search Product result page.

navbar.jsp : Common nav bar code for Farmer pages.

navCss.jsp : Common nav bar style for Farmer pages.

SellProduct.jsp : A product registration page for farmers to sell their products.

YProduct.jsp : Farmer's Published Products page.

Tips.jsp : Farming Tips Page for Farmers.

Schemes.jsp : Page to Share Details About Government Schemes and Benefits for Farmers.

CusOrderCon.jsp : Customer Order Confirmation page.

CustomerMyOrderPage.jsp : Page to Display Product Order Details for Customers.

FarmerOrders.jsp : When a customer purchases a farmer's product, the order details are displayed on this page for the farmer.

Cart.jsp : Add to cart page for customers.

Database.java : This file handles JDBC operations for reading data from the database.

LogDb.java : This file manages JDBC operations for inserting data into the database..

LogServlet.java : This file act as servlet to process the Farmer Registration operation.

LoginCheck.java : This file act as POJO class to store the Farmer Registration data.

Customer.java : Act as Servlet to process the Customer Registration operation.

CusCheck.java : Act as POJO class to store the Customer Registration data.

NewUser.java : Act as Servlet to process the New Crop Mart ID creation operation.

UserCheck.java : Act as POJO class to store the ID and password from users.

EntryServlet.java : Acts as a servlet to validate the user ID and password, then redirects the user to their respective page.

EntryCheck.java : Act as POJO class to store user Login page input.

SearchServlet : Acts as a servlet to process customer product searches and displays the results on the CheckTrail.jsp page.

McServlet.java : Act as Servlet fetch data from database about Motivational Corner and navigate to Farmer2.jsp.

FarmControl.java : Act as the Controller Servlet, responsible for navigating between different pages for both Farmers and Customers.

SellServlet.java :   Act as Servlet responsible to store Sell Product data from farmer to database.

SellCheck.java : Act as POJO class responsible to store Sell Product Input data from Farmer.

YourProductServlet :  Act as Servlet fetch data from database about Farmer published Product and navigate to YProduct.jsp page.

TipsServlet.java :  Act as Servlet fetch data from database about Tips for Farmer and navigate to Tips.jsp page.

GovernmentServlet.java :  Act as Servlet fetch data from database about Government Schemes for Farmers and navigate to Schemes.jsp page.

CusOrderServlet : Act as Servlet responsible to fetch data from database about customer-selected product and also responsible to insert and remove add to cart product details in the database.

ConfirmCustomerOrder : Act as Servlet responsible to store Customer-selected Order product details and Customer Delivery details to Database and navigate to CustomerMyOrders servlet.

CustomerMyOrders : Act as Servlet responsible to fetch the Customer product order status details from database and navigate to CustomerMyOrderPage.jsp page.

FarmerOrderServlet : Act as Servlet responsible to fetch the Farmer sell product order status details from database and navigate to FarmerOrders.jsp page.

FarmerOrderStatus : Act as Servlet responsible for updating the customer's product order status in the database.

CartServlet : Act as Servlet fetch data from database about add to cart product for Customer and navigate to Cart.jsp page.

MySql__Database_Queries.txt : This file is used to show the MySql Database Queries and give information about the data table structures.
