<!DOCTYPE html>
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
<title>Introduction</title>
</head>
<body>
	<h1>Parking System</h1>
	<form action="OneServlet" method="post">
	Total Parking Space:<input type="text" id="First"  name="n" onchange="validate()">
	<br><br>
	Total Parked Vehicles:<input type="text" id="Second" name="m" onchange="validate2()">
	<br>
	<br>
	<input type="submit">
	</form>
	<br>
	<br>
	<script type="text/javascript">
	function validate(){
	var input_text= document.getElementById("First").value;
	
	if(input_text<0 || isNaN(input_text))
	{
		alert("Wrong Data!!");
	}
	}
	function validate2(){
		var input_text= document.getElementById("Second").value;
		
		if(input_text<0 || isNaN(input_text))
		{
			alert("Wrong Data!!");
		}
		}
	</script>
</body>
</html>    