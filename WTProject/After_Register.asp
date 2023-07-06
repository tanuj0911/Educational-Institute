<%@language=Vbscript%>
<%option explicit%>
<%
	dim con,rs,n,e,p,i,s,h,u,user,pass,cpass
	set con=Server.CreateObject("ADODB.Connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
	con.Open "C:\inetpub\wwwroot\WTProject\Candidate_Info.mdb"
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "cinfo",con,0,3,2
	rs.Addnew
	u=Request.form("cname")
	e=Request.form("cemail")
	p=Request.form("cpho")
	i=Request.form("cinfo")
	s=Request.form("cschool")
	h=Request.form("chobby")
	user=Request.form("cusername")
	pass=Request.form("cpass")
	cpass=Request.form("cpassconfirm")
	  rs("cname")=u 
	  rs("cemail")=e 
	  rs("cpho")=p 
	  rs("cinfo")=i 
	  rs("cschool")=s 
	  rs("chobby")=h 
	  rs("cusername")=user
	  rs("cpass")=pass
	  rs("cpassconfirm")=cpass
	rs.Update
		rs.Movenext
		con.close
		set con=Nothing

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
			<button class="button button7">About Us</button>
			&nbsp;&nbsp;&nbsp;
			<a href="#training"><button class="button button7">Training</button></a>
			&nbsp;&nbsp;&nbsp;
			<a href="#material"><button class="button button7">Material</button></a>
			&nbsp;&nbsp;&nbsp;
			<a href="#exams"><button class="button button7">Exams</button></a>
			&nbsp;&nbsp;&nbsp;
			<a href="#counselling"><button class="button button7">Counselling</button></a>
			&nbsp;&nbsp;&nbsp;
			<a href="#scholarships"><button class="button button7">Scholarships</button></a>
			&nbsp;&nbsp;&nbsp;
			<button class="button button7">Contact Us</button>
		</div>
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


	<a name="exams">
	<div class="divexams">
		<p>
			<h1>
				<center>
					<font color="#345beb">
					Exams
					</font>
				</center>
			</h1>
		</p>
<!-- Trigger/Open The Modal -->
		<marquee>
		<p>
			<b>
				<h3>To test your skills <button><a href="http://localhost/WTProject/exams.asp">Click Here</button></h3>
			</b>
		</p>
	</marquee>

	</div>
	</a>

	<a name="counselling">
	<div class="divcounselling">
		<p>
			<h1>
				<center>
					<font color="#345beb">
					Counselling
					</font>
				</center>
			</h1>
		</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><b>Teaching:</b> Online</p>
		    <p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><b>Application:</b> Zoom</p>
		    <p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><b>Intake:</b> 20 (Including students from the Diploma Course)</p>
		    <p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><b>Eligibility</b> 
		    <p style="padding-left: 15%; padding-right: 15%; text-align: justify;">Graduate in any discipline from a recognized University.</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><strong>Medium of Instruction:</strong> English</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><strong>Age: </strong>25 and above</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;">Entry requirements No previous training or experience in Counselling / Counseling Skill required.</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><strong>Progression: </strong>Successful candidates may progress onto the Diploma in Counselling Skills Programme offered by Centre for Lifelong Learning, TISS.</p>
			<p style="padding-left: 15%; padding-right: 15%; text-align: justify;"><strong>Duration </strong>: 15 Weeks (One Semester, Part-time Programme - Wednesday, Thursday, Friday - 6.00 P.M. to 9.00 P.M. and Saturday 11.00 A.M. - 6.00 PM)</p>
	</div>
	</a>

	<a name="scholarships">
	<div class="divscholarship">
		<p>
			<h1>
				<center>
					<font color="#345beb">
					Scholarships
					</font>
				</center>
			</h1>
		</p>
		<button class="button_sch button1_sch">Live Scholarships</button> 
		<br><br>
		<img src="http://localhost/WTProject/Images/Scholarship_Live.jpg"><br><br>
		<img src="http://localhost/WTProject/Images/Scholarship_Live_1.jpg"><br><br>
		<button class="button_sch button1_sch">Upcommimg Scholarships</button>
		<br><br>
		<img src="http://localhost/WTProject/Images/Scholarship_upcomming.JPG"><br><br>		
	</div>
	</a>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
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
