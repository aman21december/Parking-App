<%@ page errorPage="ServerError2.jsp" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<title>Find Parking Slot Number</title>
</head>
<body>
	
	<br>
	<br>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/parkingproject" user="root" password="welcome123"/>
<sql:query var="rs" dataSource="${db}">select * from parking_details where RegistrationNumber='<%=request.getParameter("vrn")%>'</sql:query>

<table id="customers_table" cellspacing="4px">
                <tr id="TableTitle">
                    <td colspan="4">Slot Details</td>
                </tr>
                <tr>
                	<th>Slot Number</th>                   
                </tr>
<c:forEach items="${rs.rows}" var="cars">
	<tr class="customer_rows">
					<td class="customer_cells" id="Customer_Name"><c:out value="${cars.Slot}" ></c:out></td>                  
    </tr>                    
</c:forEach>

</table>
	
	
</body>
</html>