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
		  <button class="profile_dropbtn"><b>Welcome&nbsp;<%=strname%></b></button>
			  <div class="profile_dropdown-content">
			    <a href="http://localhost/WTProject/update_info.html">Change Info</a>
			    <a href="http://localhost/WTProject/index.html">Logout</a>
			  </div>
		</div>
  </div>
</div>


	<div class="divheader1" style="height: 45px; background: #345beb;">
		<div class="divbutton">
			<button class="button button7">Exams</button>
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

	<div class="form-style-5">

		<form>


			<a href="http://localhost/WTProject/python.asp"><input type="button" value="Python Quiz"></a>

			<a href="http://localhost/WTProject/java.asp"><input type="button" value="HTML Quiz"></a>

		</form>

	</div>

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
