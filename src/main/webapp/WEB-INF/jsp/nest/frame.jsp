<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Willkommen</title>
	<script>
	// you can register settings like this before require.js is loaded
	var require = {
	    baseUrl : '${pageContext.request.contextPath}/scripts/nest',
	    paths : {
	        // the left side is the module ID,
	        // the right side is the path to
	        // the jQuery file, relative to baseUrl.
	        // Also, the path should NOT include
	        // the '.js' file extension. This example
	        // is using jQuery 1.9.0 located at
	        // js/lib/jquery-1.9.0.js, relative to
	        // the HTML page.
	        jquery : 'jquery-2.2.0',
	        app : '../app'
	    }
	};
	</script>
	<%-- _mainScript wird bei der Erstellung der Viewable im nest-Projekt gesetzt. --%>
	<c:if test="${empty _mainScript}">
		<%-- wenn kein Skript angegeben ist, auf jeden Fall nest laden --%>
		<c:set var="_mainScript" value="nest" />
	</c:if>
	<script data-main="${_mainScript}" src="${pageContext.request.contextPath}/scripts/nest/nest.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.indigo-pink.min.css">
	<!-- TODO require -->
	<script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
</head>
<body style="display: none">
	<jsp:include page="layout.jsp"></jsp:include>
</body>
	<c:if test="${_mainScript eq 'nest'}">
	<script>
		require(["nest"], function(nest) {
			nest.fouc();
		});
	</script>
	</c:if>
</html>