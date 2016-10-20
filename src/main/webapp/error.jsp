<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${pageContext.servletContext.servletContextName} - Fehler</title>
</head>
<body>
<fmt:message key="nest-web.error"/>

<c:set var="uri" value="${pageContext.request.contextPath}/rest/nest/index" />
<c:if test="${not empty pageContext.request.getHeader('referer')}">
	<c:set var="uri" value="${pageContext.request.getHeader('referer')}" />
</c:if>

<c:set var="msg">
	<fmt:message key="nest-web.error.back">
		<fmt:param>${pageContext.servletContext.servletContextName}</fmt:param>
	</fmt:message>
</c:set>
<a href="${pageContext.request.contextPath}">${msg}</a>
</body>
</html>