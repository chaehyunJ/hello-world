<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		margin: 0;
		padding: 0;
		width: 100%;
		/*height: 95vh*/
		overflow-x: hidden;
	}
	header {
		position: sticky;  /*sticky가 안될떄는 상위요소에 overflow 속성을 지정했다면 각 요소의 높이를 %아닌 방법으로 지정*/
		width: 100%;
		padding: 10px;
		top: 0;
		left: 20px;
		background-color: white;
		z-index: 1;
	}
	h1 {
		padding-left: 20px;
	}
	header + * { /*header다음에 오는 모든요소는*/  /*형제노드를 찾을 때 사용하는 선택자, 지정한 요소 바로 다음 요소*/
		
	}
	.item {
		width: 700px;
		padding: 10px;
		margin: 10px auto;
		box-sizing: border-box;
		font-weight: bold;
		border: 1px solid black;
	}
	
	.item:nth-child(2n) {
		background-color: pink;
				
	}
	
	.item:nth-child(2n-1) {
		background-color: skyblue;
				
	}
</style>
</head>
<body>
<script>
	const cpath = '${cpath}'
</script>
<header>
	<h1><a href="${cpath}">ajax fetch</a></h1>
	<hr>
</header>