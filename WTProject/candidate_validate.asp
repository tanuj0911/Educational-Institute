<% @Language="Vbscript"%>
<%
dim con,rs,n,e,p,i,s,h
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
  rs("cname")=u 
  rs("cemail")=e 
  rs("cpho")=p 
  rs("cinfo")=i 
  rs("cschool")=s 
  rs("chobby")=h 
rs.Update
	rs.Movenext
Response.Redirect"http://localhost/WTProject/Sessionpersistent.asp"
	con.close
	set con=Nothing
%>
