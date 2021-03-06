<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="uri" value="${pageContext.request.contextPath}/rest/nest/index" />
<c:if test="${not empty pageContext.request.getHeader('referer')}">
	<c:set var="uri" value="${pageContext.request.getHeader('referer')}" />
</c:if>

	<fmt:message key="nest-web.error_403"/>
	
	<ul>
		<li>${pageContext.errorData.requestURI}</li>
		<li>${pageContext.errorData.servletName}</li>
		<li>${pageContext.errorData.statusCode}</li>
	</ul>
	
