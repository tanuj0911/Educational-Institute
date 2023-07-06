<%@language=Vbscript%>
<%option explicit%>
<%response.Buffer=false%>
<%

	dim strname
	strname=Request.Form("cusername")
	session("username")=strname	
%>
<html>
<head>
	<title>Gradeucation</title>
	<link rel="stylesheet" type="text/css" href="index.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

	<script>
		//Get the button
		var mybutton = document.getElementById("myBtn");

		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
		  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		    mybutton.style.display = "block";
		  } else {
		    mybutton.style.display = "none";
		  }
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
		  document.body.scrollTop = 0;
		  document.documentElement.scrollTop = 0;
		}


	</script>


	<div class="divheader1">
	</div>

	<div class="row">
  		<div class="column">
 		</div>
		  <div class="column">
		    <center><img src="Images\Website_Logo.png"></center>
		  </div>
		  <div class="column">
				<div class="profile_dropdown" style="float: right;">
				  <button class="profile_dropbtn"><b>Welcome tanuj&nbsp;<%=strname%></b></button>
					  <div class="profile_dropdown-content">
					    <a href="http://localhost/WTProject/update_info.html">Change Info</a>
					    <a href="http://localhost/WTProject/index.html">Logout</a>
					  </div>
				</div>
		  </div>
	</div>


	<div class="divheader1" style="height: 45px; background: #345beb;">
		<div class="divbutton">
			<button class="button button4">Exams</button>
		</div>
	</div>



<script>
		var acc = document.getElementsByClassName("accordion");
		var i;
		for (i = 0; i < acc.length; i++) {
		  acc[i].addEventListener("click", function() {
		    this.classList.toggle("active");
		    var panel = this.nextElementSibling;
		    if (panel.style.maxHeight) {
		      panel.style.maxHeight = null;
		    } else {
		      panel.style.maxHeight = panel.scrollHeight + "px";
		    } 
		  });
		}
</script>



	<div class="row">
  <div class="column">

  </div>
  <div class="column">
    <center><b><h1>Python Basic Quiz !!</h1></b></center>
  </div>
  <div class="profile_dropdown" style="float: right; border: double; border-color: blue;">
		  <b><h2>&nbsp;<font color="blue"> Time Remaning : </font><span id="time1"> 02:00 </span>&nbsp;&nbsp;</h2></b>
 </div>
</div>

<br>

<div style="padding: 5%; border: solid; border-width: 5px" >


<b>1. What is the output of the following code?
<br>
for i in range(10, 15, 1):
  print( i, end=', ')</b>
 <br>
 <input type="radio" name="a" value="right" id="a1"> 10, 11, 12, 13, 14,<br> <!-- right -->
 <input type="radio" name="a" value="wrong" id="a2"> 10, 11, 12, 13, 14, 15,
<br><br>
<b>2. The in operator is used to check if a value exists within an iterable object container such as a list. Evaluates to true if it finds a variable in the specified sequence and false otherwise.</b>
<br>
 <input type="radio" value="right" name="b" id="a3"> True<br> <!-- right -->
 <input type="radio" value="wrong" name="b" id="a4"> False
<br><br>
<b>3. What is the output of the following code
<br>
salary = 8000

def printSalary():
  salary = 12000
  print("Salary:", salary)
  
printSalary()
print("Salary:", salary)</b>
<br>
 <input type="radio" value="right" name="c" id="a5">  Salary: 12000 Salary: 8000<br> <!-- right -->
 <input type="radio" value="wrong" name="c" id="a6">  Salary: 8000 Salary: 12000<br>
 <input type="radio" value="wrong" name="c" id="a7">  The program failed with errors
<br><br>
<b>4. What is the output of the following code?</b>
<br>
 <input type="radio" value="wrong" name="d" id="a8">  py<br>
 <input type="radio" value="right" name="d" id="a9">  yn<br> <!-- right -->
 <input type="radio" value="wrong" name="d" id="a10">  pyn<br>
 <input type="radio" value="wrong" name="d" id="a11"> yna
 <br><br>
<b>5. A string is immutable in Python?</b>
<br>
<b>Every time when we modify the string, Python Always create a new String and assign a new string to that variable.</b>
<br>
 <input type="radio" value="wrong" value="right" name="e" id="a12"> True<br> <!-- right -->
 <input type="radio" value="wrong" name="e" id="a13"> False
<br>	<br><br>

	  		<button style="background-color:  #345beb; color: white" onclick="findScore();">See Your Score</button>

</div>

<script>


function findScore()
{
/*	var a1=2;
	var a2=0;
	var a3=2;
	var a4=0;
	var a5=2;
	var a6=0;
	var a7=0;
	var a8=0;
	var a9=2;
	var a10=0;
	var a11=0;
	var a11=0;
	var a12=2;
	var a13=0;*/
	var ans=0;
	if (document.getElementById('a1').checked==true)
		ans=ans+2;
	if (document.getElementById('a3').checked==true) 
		ans=ans+2;
	if (document.getElementById('a5').checked==true) 
		ans=ans+2;
	if (document.getElementById('a9').checked==true) 
		ans=ans+2;
	if (document.getElementById('a12').checked==true) 
		ans=ans+2;
	alert("Yor final score is "+ans);
	window.location.href = "http://localhost/WTProject/index.html";

}

function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

window.onload = function () {
    var twoMinutes = 60 * 2,
        display = document.querySelector('#time1');
    startTimer(twoMinutes, display);
};


</script>

<a name="footer">
	<div class="divfooter" style="border: solid;">
		<div class="row" >
	  		<div class="column">
	  			<b>CONTACT US</b>
	  			<br><br>
	  			<i class='fas fa-map-marker-alt' style='font-size:15px;'>
	  			<span>Thanawala Lane, Off Mahatma Gandhi Road, Vile Parle (East), Mumbai 400 057.</span></i>
	  			<br><br>
	  			<i class='fas fa-phone' style='font-size:15px;color:black '>
	  			<span>+91 9876543210</span></i>


	 		</div>
			  <div class="column">
	  			<b>HELPFUL&nbsp;&nbsp;LINKS</b>
	  			<br><br>
					<a href="#training">About Us</a>
					&nbsp;&nbsp;
					<a href="#training">Training</a>
					&nbsp;&nbsp;
					<a href="#counselling">Counselling</a>
					<br><br>
					<a href="#exams">Exams</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#material">Material</a>
					&nbsp;&nbsp;
					<a href="#scholarships">Scholarships</a>			

			  </div>
			  <div class="column">
			  		 <b>GET SOCIAL WITH US</b>
			  		 <br><br>
						<a href="#"><img src="http://localhost/WTProject/Images/fb.jpg"/></a>
			  		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#"> <img src="http://localhost/WTProject/Images/insta.jpg"/></a>
			  		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#"> <img src="http://localhost/WTProject/Images/youtube.jpg"/></a>
			  		 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#"> <img src="http://localhost/WTProject/Images/gmail.jpg"/></a>
			  </div>
		</div>
	</div>
</a>
	<br><br><br><br>
 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	
 	<center><h3>Copyright &#169; 2020 - Gradeucation Educational Institute . All Rights Reserved</h3></center>	

</body>
</html>
