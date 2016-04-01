<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to Product Line for Billing System </h1>
<form action="Controller" method="post">
<INPUT TYPE="radio" name="radiosgroup" VALUE="rbs" checked="checked">Retail Billing System <br>
<INPUT TYPE="radio" name="radiosgroup" VALUE="pbs">Property Billing System <br>
<INPUT TYPE="radio" name="radiosgroup" VALUE="cbs">Car Billing System <br>
<INPUT TYPE="radio" name="radiosgroup" VALUE="abs">Cigarettes/Alcohol Billing System <br>

<input type="Submit" value="Submit" name="submit">

</form>
</body>
</html>