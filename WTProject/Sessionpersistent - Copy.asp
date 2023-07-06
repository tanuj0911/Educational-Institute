<%@language=Vbscript%>
<%option explicit%>
<%
	dim strname
	strname=Request.Form("cname")
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


	<div class="divheader">
		<center><img src="Images\Website_Logo.png"></center>		
		<div class="profile_dropdown">
		  <button class="profile_dropbtn">Welcome &nbsp;<%=strname%></button>
			  <div class="profile_dropdown-content">
			    <a href="#">Change Info</a>
			    <a href="http://localhost/WTProject/index.html">Logout</a>
			  </div>
		</div>
	</div>
	<div class="divheader1" style="height: 45px; background: #345beb;">
		<div class="divbutton">
			<button class="button button1">About Us</button>
			&nbsp;&nbsp;&nbsp;
			<a href="#training"><button class="button button2">Training</button></a>
			&nbsp;&nbsp;&nbsp;
			<a href="#material"><button class="button button3">Material</button></a>
			&nbsp;&nbsp;&nbsp;
			<button class="button button4">Exams</button>
			&nbsp;&nbsp;&nbsp;
			<button class="button button5">Counselling</button>
			&nbsp;&nbsp;&nbsp;
			<button class="button button6">Scholarships</button>
			&nbsp;&nbsp;&nbsp;
			<button class="button button7">Contact Us</button>
		</div>
	</div>

	<div id="mySidenav" class="sidenav">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<div class="form-style-5">
		<form action="Sessionpersistent.asp" method="post">
		<fieldset>
		<legend><span class="number" style="color: white">1</span> Candidate Info</legend>
		<input type="text" name="cname" placeholder="Your Name *">
		<input type="email" name="cemail" placeholder="Your Email *">
		<input type="number" name="cpho" placeholder="Your Number *">
		<textarea name="cinfo" placeholder="About yourself"></textarea>
		<label for="job">Reference Books:</label>
		<select id="job" name="cbook">
		<optgroup label="Books">
		  <option value="Programming">Programming </option>
		  <option value="Web Development">Web Development </option>
		  <option value="Animation">Animation </option>
		</optgroup>
		</select>      
		</fieldset>
		<fieldset>
		<legend><span class="number" style="color: white">2</span> Additional Info</legend>
		<textarea style="resize: none;" name="cschool" placeholder="About Your School"></textarea>
		<textarea style="resize: none;" name="chobby" placeholder="Your Hobby"></textarea>
		</fieldset>
		<input type="submit" value="Apply" />
		</form>
		</div>
	</div>

	<div class="divleft">
		<span style="font-size:30px;cursor:pointer;font-c" onclick="openNav()"><font color="blue">R<br>E<br>G<br>I<br>S<br>T<br>E<br>R<br><br> H<br>E<br>R<br>E<br></font></span>
	</div>

	<div class="divtext">
		<p>
			<ul> 
				<br>
				<li>
					In response to the global implications of the COVID-19 (coronavirus) pandemic, Gradeucation launched its Virtual Classroom in March 2020.
				</li>
				<br>
				<li>
					The Virtual Classroom allows us to continue delivering our trusted pathway curriculum while Federal and State Government restrictions are in place, keeping students on track with their studies and their transition to Gradeucation
				</li>
				<br>
				<li>
					We hope to return to face-to-face teaching as soon as it's safe to do so but, given the current Federal and State Government advice, we have extended this date until restrictions are eased.
				</li>
				<br>
				<li>
					If face-to-face classes are able to resume while travel bans are still in place, the College will provide face-to-face classes and will continue to provide Virtual Classroom delivery, including assessments, until travel bans are lifted so that students can complete their study period.
				</li>
				<br>
				<li>
					This site offers various training programs in the fields of computers.
				</li>
				<br>
				<li>
					Various study materials which includes stationery, reference books, notebooks. Online payment options are provided for the same
				</li>
				<br>
				<li>
				 	We also provide online examination, short tests in the which MCQ's are included. The portion of the exams are dependent on the syllabas of college students  
				</li>
				<br>
				<li>
				 	Our institute also provide one to one counselling to students. A student can get carrier guidance by applying for aptitute tests on our websites 
				</li>
				<br>
				<li>
					Because the on going demand of doing masters and MS after engineering our institute has started giving scholarships to students so that they can overcome the barrier between education and money
				</li>
		 	</ul>
		</p>		
	</div>

	<div class="divbanner">
		<center><img src="Images\Website_Banner.png"></center>
	</div>

		<a name="training">
		<div class="divtraining">
		<p>
			<h1>
				<center>
					<font color="#345beb">
					Training Programs
				</font>
			</h1>
		</p>
		<p style="padding-left: 15%; padding-right: 15%; text-align: justify;">
			Great engineers are so much more than just their skills – they’re planners, leaders, team players and communicators. 
			At Gradeucation, our engineering courses aim to produce highly-skilled engineers who are ready for life, ready for work and ready for the world. 
			Engineers are key to the development of society and solving the challenges faced by our world, such as climate change, natural resource depletion, food shortages and increased demands on energy.
		</p>
		<img src="Images\training2.jpg" width="97%">
	</div>
	</a>

	<a name="material">
	<div class="divmaterial">
		<p>
			<h1>
				<center>
					<font color="#345beb">
					Materials </center>  <br>

					<button class="accordion"><b>Programmimg Refererence Books</b></button>
					<div class="panel">
						<table width="100%">
							<tr>
								<th><img src="http://localhost/WTProject/Images/python1.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/python2.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/python3.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/java1.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/java2.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/java3.jpg" width="150" height="177"></th>
							</tr>
							<tr>
								<center>
								<td align="center"><font color="black">&#x20B9;300</font></td>
								<td align="center"><font color="black">&#x20B9;300</font></td>
								<td align="center"><font color="black">&#x20B9;350</font></td>
								<td align="center"><font color="black">&#x20B9;250</font></td>
								<td align="center"><font color="black">&#x20B9;450</font></td>
								<td align="center"><font color="black">&#x20B9;200</font></td>
								</center>
							</tr>
						</table>
					</div>
					<br>

					<button class="accordion"><b>Web Development Refererence Books</b></button>
					<div class="panel">
						<table width="100%">
							<tr>
								<th><img src="http://localhost/WTProject/Images/web1.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/web2.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/web3.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/web4.jpg" width="150" height="177"></th> 
							</tr>
							<tr>
								<td align="center"><font color="black">&#x20B9;500</font></td>
								<td align="center"><font color="black">&#x20B9;300</font></td>
								<td align="center"><font color="black">&#x20B9;450</font></td>
								<td align="center"><font color="black">&#x20B9;200</font></td>
							</tr>
						</table>					  
					</div>
					<br>

					<button class="accordion"><b>Animation Refererence Books</b></button>
					<div class="panel">
						<table width="100%">
							<tr>
								<th><img src="http://localhost/WTProject/Images/av1.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/av2.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/av3.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/av4.jpg" width="150" height="177"></th> 
								<th><img src="http://localhost/WTProject/Images/av5.jpg" width="150" height="177"></th> 
							</tr>
							<tr>
								<center>
								<td align="center"><font color="black">&#x20B9;600</font></td>
								<td align="center"><font color="black">&#x20B9;450</font></td>
								<td align="center"><font color="black">&#x20B9;500</font></td>
								<td align="center"><font color="black">&#x20B9;650</font></td>
								<td align="center"><font color="black">&#x20B9;500</font></td>
								</center>
							</tr>
						</table>
					</div>
				</font>
			</h1>
		</p>
	</div>
	</a>

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

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
	<div class="divfooter">
		<p>footer</p>
	</div>

</body>
</html>
