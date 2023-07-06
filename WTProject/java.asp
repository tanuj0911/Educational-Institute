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
		  <button class="profile_dropbtn"><b>Welcome &nbsp;<%=strname%></b></button>
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
    <center><b><h1>Java Basic Quiz !!</h1></b></center>
  </div>
  <div class="profile_dropdown" style="float: right; border: double; border-color: blue;">
		  <b><h2>&nbsp;<font color="blue"> Time Remaning : </font><span id="time1"> 02:00 </span>&nbsp;&nbsp;</h2></b>
 </div>
</div>

<br><br>

<div style="padding: 5%; border: solid; border-width: 5px" >

	<b>1. What does HTML stands for?</b>
	<br>
	 <input type="radio" name="a"value="wrong" id="a1">  Hypertext Machine language.
	<br>
	 <input type="radio" name="a"value="wrong" id="a2">  Hypertext and links markup language.
	<br> 
	 <input type="radio" name="a" value="right" id="a3">  Hypertext Markup Language.
	<br>
	 <input type="radio" name="a" value="wrong" id="a4"> Hightext machine language.
	<br><br>
	<b>2. How is document type initialized in HTML5.? </b> <br>
	 <input type="radio" name="b" value="right" id="a5">  DOCTYPE HTML

	<br>
	 <input type="radio" name="b" value="wrong" id="a6">  /DOCTYPE
	<br> 
	 <input type="radio" name="b" value="wrong" id="a7">  !DOCTYPE HTML

	<br>
	 <input type="radio" name="b" value="wrong" id="a8"> /DOCTYPE html

	<br><br>
	<b>3. Which of the following HTML Elements is used for making any text bold ?</b>
	<br>
	 <input type="radio" name="c" value="wrong" id="a9">  p
	<br>
	 <input type="radio" name="c" value="wrong" id="a10">  i
	<br> 
	 <input type="radio" name="c" value="wrong" id="a11"> li
	<br>
	 <input type="radio" name="c" value="right" id="a12"> b
	<br><br>
	<b>4. Which of the following HTML element is used for creating an unordered list?</b>
	<br>
	 <input type="radio" name="d" value="wrong" id="a13">  ui
	<br>
	 <input type="radio" name="d" value="wrong" id="a14">  i
	<br> 
	 <input type="radio" name="d" value="wrong" id="a15"> em
	<br>
	 <input type="radio" name="d" value="right" id="a16"> ul
	<br><br>
	<b>5. Which of the following characters indicate closing of a tag?</b>
	<br>
	 <input type="radio" name="e" value="wrong" id="a17">  .
	<br>
	 <input type="radio" name="e" value="right" id="a18">  /
	<br> 
	 <input type="radio" name="e" value="wrong" id="a19"> \
	<br>
	 <input type="radio" name="e" value="wrong" id="a20"> !
	<br><br><br>


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
	if (document.getElementById('a3').checked==true)
		ans=ans+2;
	if (document.getElementById('a5').checked==true) 
		ans=ans+2;
	if (document.getElementById('a12').checked==true) 
		ans=ans+2;
	if (document.getElementById('a16').checked==true) 
		ans=ans+2;
	if (document.getElementById('a18').checked==true) 
		ans=ans+2;
	alert(ans);
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
        display = document.querySelector('#time2');
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
