<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<SCRIPT LANGUAGE= "javascript">
function mycal(){
	var frm = document.forms[0];
	if(frm.price1.value!=null){
		if(frm.dprice1.value==null ){
			alert("Please enter the Discounted price for first item.");
			return false;
		}
	}
	if(frm.price2.value!=null){
		if(frm.dprice2.value==null){
			alert("Please enter the Discounted price for second item.");
			return false;
		}
	}
	
	if(frm.price3.value!=null){
		if(frm.dprice3.value==null ){
			alert("Please enter the Discounted price for third item.");
			return false;
		}
	}
	
	if(frm.price4.value!=null){
		if(frm.dprice4.value==null ){
			alert("Please enter the Discounted price for fourth item.");
			return false;
		}
	}
	if(frm.price5.value!=null){
		if(frm.dprice5.value==null){
			alert("Please enter the Discounted price for fifth item.");
			return false;
		}
	}
	
	if(frm.price1.value==null || frm.price1.value==0){
		frm.dprice1.value=0; 
		frm.price1.value=0;
	}
	
	if(frm.price2.value==null || frm.price2.value==0){
		frm.dprice2.value=0; 
		frm.price2.value=0;
	}
	
	if(frm.price3.value==null || frm.price3.value==0){
		frm.dprice3.value=0; 
		frm.price3.value=0;
	}
	
	if(frm.price4.value==null || frm.price4.value==0){
		frm.dprice4.value=0; 
		frm.price4.value=0;
	}
	
	if(frm.price5.value==null || frm.price5.value==0){
		frm.dprice5.value=0; 
		frm.price5.value=0;
	}
	
	var dp1=frm.dprice1.value;
	var dp2=frm.dprice2.value;
	var dp3=frm.dprice3.value;
	var dp4=frm.dprice4.value;
	var dp5=frm.dprice5.value;
	var subt=eval(dp1)+eval(dp2)+eval(dp3)+eval(dp4)+eval(dp5);
	//alert(subt+"=" +frm.dprice1.value+"+"+frm.dprice2.value+"+"+frm.dprice3.value+"+"+frm.dprice4.value+"+"+frm.dprice5.value);
	frm.subtotal.value=subt;
	//alert(frm.subtotal.value);
	frm.servicetax.value="11%";
	frm.sintax.value="20.5%%";
	var totalPriceBeforeDiscount=eval(frm.price1.value)+ eval(frm.price2.value)+eval(frm.price3.value)+eval(frm.price4.value)+eval(frm.price5.value);
	//alert(totalPriceBeforeDiscount);
	frm.savings.value=eval(totalPriceBeforeDiscount)-eval(subt);
	frm.total.value=eval(eval(0.11*subt)+eval(0.0205*subt)+subt);
}

function printcmd(){
	window.print();
}

function back(){
	var frm = document.forms[0];
	window.location.replace("index.jsp");
}

</SCRIPT>
</head>
<body>
<h1>Welcome to Product Line for Billing System -Cigarettes/Alcohol Billing</h1>
<form action="Controller" method="post">
<input type="button" value="Back" onclick="back()" >
<input type="button" value="Print" onclick="printcmd()" ><br>
<img src="logo.png" alt="walmart"><br>

405 <br>
College Avenue,<br>
STE 160Clemson, <br>
SC 29631<br>
<br>
Transaction ID:<input type="text" name="trancid"><br>
Time Stamp:<input type="text" name="timestmp"><br>
Cashier's ID:<input type="text" name="cshid"><br>

Customer's ID/Age Proof Type: <input type="text" name="cardtype"><br>
Customer's ID/Age Proof Number: <input type="text" name="cardno"><br>

Payment Mode:<INPUT TYPE="radio" name="paymenttype" VALUE="d" checked="checked">Debit Card
<INPUT TYPE="radio" name="paymenttype" VALUE="c">Credit Card 
<INPUT TYPE="radio" name="paymenttype" VALUE="csh">Cash<br>
Card No: <input type="text" name="cardno"><br>

<table>
<tr>
	<td>
		Item No
	</td>
	<td>
		Name
	</td>
	<td>
		Quantity
	</td>
	<td>
		Price
	</td>
	<td>
		Discounted Price
	</td>
</tr>

<tr>
	<td>
		<input type="text" name="item1">
	</td>
	<td>
		<input type="text" name="name1">
	</td>
	<td>
		<input type="text" name="qty1">
	</td>
	<td>
		<input type="text" name="price1" >
	</td>
	<td>
		<input type="text" name="dprice1">
	</td>
</tr>


<tr>
	<td>
		<input type="text" name="item2">
	</td>
	<td>
		<input type="text" name="name2">
	</td>
	<td>
		<input type="text" name="qty2">
	</td>
	<td>
		<input type="text" name="price2" >
	</td>
	<td>
		<input type="text" name="dprice2">
	</td>
</tr>


<tr>
	<td>
		<input type="text" name="item3">
	</td>
	<td>
		<input type="text" name="name3">
	</td>
	<td>
		<input type="text" name="qty3">
	</td>
	<td>
		<input type="text" name="price3">
	</td>
	<td>
		<input type="text" name="dprice3">
	</td>
</tr>


<tr>
	<td>
		<input type="text" name="item4">
	</td>
	<td>
		<input type="text" name="name4">
	</td>
	<td>
		<input type="text" name="qty4">
	</td>
	<td>
		<input type="text" name="price4" >
	</td>
	<td>
		<input type="text" name="dprice4">
	</td>
</tr>
<tr>
	<td>
		<input type="text" name="item5">
	</td>
	<td>
		<input type="text" name="name5">
	</td>
	<td>
		<input type="text" name="qty5">
	</td>
	<td>
		<input type="text" name="price5">
	</td>
	<td>
		<input type="text" name="dprice5">
	</td>
</tr>
<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		Sub Total: 
	</td>
	<td>
		<input type="text" name="subtotal">
	</td>
</tr>
<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		Sales Tax:
	</td>
	<td>
		<input type="text" name="servicetax">
	</td>
</tr>
<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		Sin Tax:
	</td>
	<td>
		<input type="text" name="sintax">
	</td>
</tr>
<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		Total: 
	</td>
	<td>
		<input type="text" name="total">
	</td>
</tr>


<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		Your Savings: 
	</td>
	<td>
		<input type="text" name="savings">
	</td>
</tr>
<tr>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<br>
	</td>
	<td>
		<input type="button" name="Submit" value="submit" onclick="mycal()">
	</td>
</tr>
</table>
</form> 
</body>
</html>