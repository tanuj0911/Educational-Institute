<!DOCTYPE html>
<html>
<head>
	<title>DEMO</title>
</head>
<body>
	<%
		dim con,rs,uname,ucpwd
		set con=server.CreateObject("ADODB.Connection")
    	con.Provider="Microsoft.Jet.OLEDB.4.0"
    	con.Open "C:\inetpub\wwwroot\TanujWT\Database1.mdb"
    	set rs = Server.CreateObject("ADODB.Recordset")
    	rs.Open "Table1",con,0,3,2
    	set d=server.CreateObject("Scripting.FileSystemObject")
    	set e=d.CreateTextFile("C:\inetpub\wwwroot\TanujWT\abc.xml")
    	e.writeline("?xml version='1.0'?")
    	e.writeline("<person>")
    	do while not rs.EOF
    		e.writeline(rs("username"))
    		e.writeline("</username>")
    	rs.movenext
    loop
    e.writeline("</person>")
	%>
</body>
</html>