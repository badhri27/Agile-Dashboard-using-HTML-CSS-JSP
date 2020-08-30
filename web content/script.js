
function myFunction() {
	   var element = document.body;
	   element.classList.toggle("light-mode");
	   var x = document.getElementById("myBtn");
  		if (x.innerHTML === "Dark Mode") {
    	x.innerHTML = "Light Mode";
  		} else {
    	x.innerHTML = "Dark Mode";
		}
}