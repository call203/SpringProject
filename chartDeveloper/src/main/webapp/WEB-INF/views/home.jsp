<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Highcharts Example</title>
	<!-- Highchars CDN -->
	<%@include file="./common_resource.jsp"%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home1.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	
			
</head>
<body>
     <table>
 		<tr><td>번호</td><td>차트보기 버튼</td></tr>
 
 		<c:forEach items="${productList}" var="product">
 		<tr>
 			<td width="170px">wine번호 ${product.product_seq} 입니다.</td>
 			<td><a onclick="chart('${product.product_seq}','${product.volatile_acidity}','${product.fixed_acidity}','${product.free_sulfur_dioxide}')">${product.product_seq}</a></td>
 		</tr>
 		</c:forEach>
 		</table>
 
 	<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div> 
    <div id="container2" style="width: 550px; height: 400px; margin: 0 auto"></div> 

</body>
</html>
