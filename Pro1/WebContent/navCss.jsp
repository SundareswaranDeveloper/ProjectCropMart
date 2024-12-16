/* Basic Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    

    /* Navbar Styles */
    .navbar {
      display: flex;
      
      justify-content: space-between;
      align-items: center;
      background-color: lawngreen;
      padding: 10px 20px;
    }

    /* Logo styles */
    .navbar .logo img {
      height: 40px; /* Adjust the size of your logo */
    }
    .navbar .logo img:hover {
      height: 40px; /* Adjust the size of your logo */
    }

    /* Navigation Links (labels) */
    .navbar .nav-links {
      display: flex;
      justify-content: space-around;
      flex-grow: 1;
      text-align: center;
    }

    .navbar .nav-links button {
      color:darkgreen;
      text-decoration: none;
      padding: 15px;
      font-size: 18px;
      border: 2px solid #009933;
      outline: none;
      background-color :lawngreen; 
    }

    .navbar .nav-links button:hover {
    color:lawngreen;
      background-color: darkgreen;
      border-bottom: 3px solid darkgreen;
    }
    .navbar .user {
     align-items: center;

    }
	