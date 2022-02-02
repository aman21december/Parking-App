<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    scroll-behavior: smooth;
    background-color:#DBD8E3; 
}
</style>
<meta charset="ISO-8859-1">
<title>Index Page</title>
</head>
<body>

<h1>Welcome To Parking Website</h1>
<br>
<br>
<form action="RemoveServlet">
Enter the Vehicles Details to be removed from parking:<br>
Vehicle Registration Number:<input type="text" name="vrn" id="vrn1" onchange="validate2()"><br>
Choose Colour:<select name="color" id="selectcolor">
 <option value="" default selected hidden>Colour</option>
 <option value="Black">Black</option>
 <option value="White">White</option>
 <option value="Blue">Blue</option>
 <option value="Red">Red</option>
 </select>
 <br>
Parking Slot:<input type="text" name="pnum" id="pnum" onchange="validate()"><br>
<input type="submit">
</form>
<br>
<br>
<form action="AddServlet" method="post">
Enter the Vehicles Details to be parked:<br>
Vehicle Registration Number:<input type="text" name="vrn" id="vrn2" onchange="validate3()"><br>
Choose Colour:<select name="color" id="selectcolor">
 <option value="" default selected hidden>Colour</option>
 <option value="Black">Black</option>
 <option value="White">White</option>
 <option value="Blue">Blue</option>
 <option value="Red">Red</option>
 </select>
 <br>
<input type="submit">
</form>
<br>
<br>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/parkingproject" user="root" password="welcome123"/>
<sql:query var="rs" dataSource="${db}">select * from parking_details</sql:query>

<table id="customers_table" cellspacing="4px">
                <tr id="TableTitle">
                    <td colspan="4">Parking Details</td>
                </tr>
                <tr>
                	<th>Registration Number</th>
                	<th>Colour</th>
                    <th>Slot Number</th>
                    
                    
                    
                </tr>
<c:forEach items="${rs.rows}" var="cars">
	<tr class="customer_rows">
					<td class="customer_cells" id="Customer_Name"><c:out value="${cars.RegistrationNumber}" ></c:out></td>
					<td class="customer_cells" id="Customer_email"><c:out value="${cars.Colour}" ></c:out></td>
                    <td class="customer_cells" id="Customer_ID"><c:out value="${cars.Slot}" ></c:out></td>
                    
                    
                    
    </tr>                    
</c:forEach>

</table>
<br>
<br>
<form action="Index2.jsp">
Enter the Color to find Registration Details of all cars of Particular Color :<br>
Choose Colour:<select name="color" id="selectcolor">
 <option value="" default selected hidden>Colour</option>
 <option value="Black">Black</option>
 <option value="White">White</option>
 <option value="Blue">Blue</option>
 <option value="Red">Red</option>
 </select>
 <br>
<input type="submit">
</form>
<br>
<br>
<form action="Index3.jsp">
Enter the Registration Number to find your car parking slot:<br>
Registration Number:<input type="text" name="vrn" id="vrn3" onchange="validate4()"><br>
<input type="submit">
</form>
<br>
<br>
<form action="Index4.jsp">
Slot Number of all slots where a car of particular colour is parked:<br>
Choose Colour:<select name="color" id="selectcolor">
 <option value="" default selected hidden>Colour</option>
 <option value="Black">Black</option>
 <option value="White">White</option>
 <option value="Blue">Blue</option>
 <option value="Red">Red</option>
 </select>
 <br>
<input type="submit">
</form>

	<script type="text/javascript">
	function validate(){
	var input_text= document.getElementById("pnum").value;
	
	if(input_text<0 || isNaN(input_text))
	{
		alert("Wrong Data!!");
	}
	}

	function validate2(){	
		var input_text= document.getElementById("vrn1").value;
		if(input_text.length==13)
		{
			if(input_text.charCodeAt(0)>=65 && input_text.charCodeAt(0)<=90 &&
			   input_text.charCodeAt(1)>=65 && input_text.charCodeAt(1)<=90 &&
			   input_text.charCodeAt(2)==45 &&
					input_text.charCodeAt(3)>=48 && input_text.charCodeAt(3)<=57 &&
					input_text.charCodeAt(4)>=48 && input_text.charCodeAt(4)<=57 &&
					input_text.charCodeAt(5)==45  &&
			   input_text.charCodeAt(6)>=65 && input_text.charCodeAt(6)<=90 &&
			   input_text.charCodeAt(7)>=65 && input_text.charCodeAt(7)<=90 &&
			   input_text.charCodeAt(8)==45  &&
			   input_text.charCodeAt(9)>=48 && input_text.charCodeAt(9)<=57 &&
					input_text.charCodeAt(10)>=48 && input_text.charCodeAt(10)<=57 &&
					input_text.charCodeAt(11)>=48 && input_text.charCodeAt(11)<=57 &&
					input_text.charCodeAt(12)>=48 && input_text.charCodeAt(12)<=57)	
			{
				alert("Correct Format")	;
			}
			else
			{
				alert("Wrong Data!!");	
			}
		}
		else
		{
			alert("Wrong Data!!");	
		}
		}
	function validate3(){	
		var input_text= document.getElementById("vrn2").value;
		if(input_text.length==13)
		{
			if(input_text.charCodeAt(0)>=65 && input_text.charCodeAt(0)<=90 &&
			   input_text.charCodeAt(1)>=65 && input_text.charCodeAt(1)<=90 &&
			   input_text.charCodeAt(2)==45 &&
					input_text.charCodeAt(3)>=48 && input_text.charCodeAt(3)<=57 &&
					input_text.charCodeAt(4)>=48 && input_text.charCodeAt(4)<=57 &&
					input_text.charCodeAt(5)==45  &&
			   input_text.charCodeAt(6)>=65 && input_text.charCodeAt(6)<=90 &&
			   input_text.charCodeAt(7)>=65 && input_text.charCodeAt(7)<=90 &&
			   input_text.charCodeAt(8)==45  &&
			   input_text.charCodeAt(9)>=48 && input_text.charCodeAt(9)<=57 &&
					input_text.charCodeAt(10)>=48 && input_text.charCodeAt(10)<=57 &&
					input_text.charCodeAt(11)>=48 && input_text.charCodeAt(11)<=57 &&
					input_text.charCodeAt(12)>=48 && input_text.charCodeAt(12)<=57)	
			{
				alert("Correct Format")	;
			}
			else
			{
				alert("Wrong Data!!");	
			}
		}
		else
		{
			alert("Wrong Data!!");	
		}
		}
	function validate4(){	
		var input_text= document.getElementById("vrn3").value;
		if(input_text.length==13)
		{
			if(input_text.charCodeAt(0)>=65 && input_text.charCodeAt(0)<=90 &&
			   input_text.charCodeAt(1)>=65 && input_text.charCodeAt(1)<=90 &&
			   input_text.charCodeAt(2)==45 &&
					input_text.charCodeAt(3)>=48 && input_text.charCodeAt(3)<=57 &&
					input_text.charCodeAt(4)>=48 && input_text.charCodeAt(4)<=57 &&
					input_text.charCodeAt(5)==45  &&
			   input_text.charCodeAt(6)>=65 && input_text.charCodeAt(6)<=90 &&
			   input_text.charCodeAt(7)>=65 && input_text.charCodeAt(7)<=90 &&
			   input_text.charCodeAt(8)==45  &&
			   input_text.charCodeAt(9)>=48 && input_text.charCodeAt(9)<=57 &&
					input_text.charCodeAt(10)>=48 && input_text.charCodeAt(10)<=57 &&
					input_text.charCodeAt(11)>=48 && input_text.charCodeAt(11)<=57 &&
					input_text.charCodeAt(12)>=48 && input_text.charCodeAt(12)<=57)	
			{
				alert("Correct Format")	;
			}
			else
			{
				alert("Wrong Data!!");	
			}
		}
		else
		{
			alert("Wrong Data!!");	
		}
		}
	</script>
</body>
</html>
