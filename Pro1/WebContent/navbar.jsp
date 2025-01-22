 <div class="navbar">
    <div class="logo">
      <img src="C:\Users\Mani\Downloads\CMLogo.jpeg"  alt="Logo">
      <h1>CROP MART</h1>
    </div>
    <form class="nav-links" action="FarmContol" method="post">
      <button type="submit" onclick="click1()" id="nav-one">Sell Product</button>
      <button type="submit" onclick="click2()" id="nav-two">Your Product</button>
      <button type="submit" onclick="click3()" id="nav-three">Motivational Corner</button>
      <button type="submit" onclick="click4()" id="nav-four">Tips</button>
      <button type="submit" onclick="click5()" id="nav-five">Government Schemes</button>
      <button type="submit" onclick="click6()" id="nav-six">Customer Orders</button>
      <input type="hidden" name="secret" id="hidden">
      <input type="hidden" name="avalue" id="nav-clue">
    </form>
    <div class="user">
      <i class="fa-solid fa-user nav-id" id="hide">${crtid}</i>
    </div>
  </div>
  <script type="text/javascript">
	var a = 0;
	var cropmart = document.getElementById("hide").textContent;
	document.getElementById("hidden").innerText = cropmart;
	function click1(){
		a = 1;
		document.getElementById("nav-clue").innerText = a;
	}function click2(){
		a = 2;
		document.getElementById("nav-clue").innerText = a;
	}function click3(){
		a = 3;
		document.getElementById("nav-clue").innerText = a;
	}function click4(){
		a = 4;
		document.getElementById("nav-clue").innerText = a;
	}function click5(){
		a = 5;
		document.getElementById("nav-clue").innerText = a;
	}function click6(){
		a = 8;
		document.getElementById("nav-clue").innerText = a;
	}
	</script>