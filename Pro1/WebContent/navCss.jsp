    * {
      margin: 0;
      padding: 0;
     
    }
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color:  #F0F8FF;
      padding: 10px 20px;
    }
    .navbar .logo img {
      height: 40px; 
      border-radius : 50%;
    }
    .navbar .logo h1 {
      display : inline;
      font-size : 32px;
      margin : 3px;
      padding : 10px;
      color : limegreen;
      text-align: center;     
    }
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
      font-size: 22px;
      font-weight : bolder;
      background-color: #F0F8FF;
      border: 2px solid #F0F8FF;
      border-bottom : 2px solid #2E3B4E;
      outline: none;
     
    }
    .navbar .nav-links button:hover {
      color:#2E3B4E;
      background-color : #E8F1F2 ;
      border-bottom : 2px solid limegreen; 
    }
    
    .nav-id{
    letter-spacing : 2px;
    color : blue;
    }
    .navbar .user {
     align-items: center;

    }
	#logout{
		text-decoration : none;
		color : red;
		margin : 3px;
		padding : 10px;
		border : 3px solid inherit;
		font-weight : bolder;
		background-color: #80E27E;
		border-radius : 20px;
	}
	#logout:hover{
		border-radius : 20px;
		background-color: #A2D9CE;
		color : #2C6B3F;
		border : 3px solid limegreen;
	}
	