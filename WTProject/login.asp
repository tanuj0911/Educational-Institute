<%response.Buffer=false%>

<%

'save the username and password in a variable
u=Request.form("cusername")
p=Request.form("cpass")
Session("username1")=u
'Build connection
	set con = server.CreateObject ("ADODB.Connection")
	con.Provider="Microsoft.Jet.OLEDB.4.0"
    con.Open "C:\inetpub\wwwroot\WTProject\Candidate_Info.mdb"

    set rs = Server.CreateObject("ADODB.Recordset")
    rs.Open "cinfo",con,0,3,2
while NOT rs.EOF
    if rs("cusername") = u and rs("cpass") = p then 
    dim strname
    strname=Request.Form("cusername")
    session("username")=strname         
        Response.Redirect("http://localhost/WTProject/exams.asp")
    else 
        rs.Movenext
    end if 
wend
Response.write("Username/Password is not valid . Please Signup or try again")

con.close
set con = Nothing


%> 