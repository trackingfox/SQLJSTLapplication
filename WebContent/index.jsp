<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page isELIgnored="false"%>

<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql:///abc" user="root" password="root123" />

<sql:query var="result" sql="select * from student" />

<html>
<body>
	<h1 style='color: red; text-align: center;'>Aradhya Brilliance
		Center</h1>
	<h2 style='color: blue; text-align: center;'>Student Details</h2>
	<table border='1' align='center' bgcolor='cyan'>


		<tr>

			<c:forEach var="colNames" items="${result.columnNames}">
				<th><c:out value="${colNames }" /></th>

			</c:forEach>

		</tr>

		<c:forEach var="row" items="${result.rowsByIndex }">
			<tr>
				<c:forEach var="data" items="${row}">
					<td><c:out value="${data }" /></td>

				</c:forEach>
			</tr>


		</c:forEach>



	</table>
	

</body>

</html>