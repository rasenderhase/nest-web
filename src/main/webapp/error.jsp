<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${pageContext.servletContext.servletContextName} - Fehler</title>
</head>
<body>
Sorry, es ist ein Fehler aufgetreten.

<c:set var="uri" value="${pageContext.request.contextPath}/rest/nest/index" />
<c:if test="${not empty pageContext.request.getHeader('referer')}">
	<c:set var="uri" value="${pageContext.request.getHeader('referer')}" />
</c:if>

<a href="${pageContext.request.contextPath}">Zurück zu ${pageContext.servletContext.servletContextName}</a>
</body>
</html>