 <div class="navbar">
    <div class="logo">
      <img src="C:\Users\Mani\Downloads\CMLogo.jpeg"  alt="Logo">
    </div>
    <form class="nav-links" action="FarmContol" method="post">
      <button type="submit" onclick="click1()" id="n1">Sell Product</button>
      <button type="submit" onclick="click2()" id="n2">Your Product</button>
      <button type="submit" onclick="click3()" id="n3">Motivational Corner</button>
      <button type="submit" onclick="click4()" id="n4">Tips</button>
      <button type="submit" onclick="click5()" id="n5">Government Schemes</button>
      <button type="submit" onclick="click6()" id="n6">Customer Orders</button>
      <input type="hidden" name="secret" id="hidden">
      <input type="hidden" name="avalue" id="nav-clue">
    </form>
    <div class="user">
      <i class="fa-solid fa-user"></i>
      <label id="hide">${crtid}</label>
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