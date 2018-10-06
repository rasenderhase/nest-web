<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set scope="request" var="snackMessage">
<fmt:message key="nest-web.login_failed" />
</c:set>
<c:set scope="request" var="_bodyJsp" value="/WEB-INF/jsp/nest/dologin.jsp" />
<c:set scope="request" var="_mainScript" value="login" />
<% 
	Map<String, Object> model = new HashMap<String, Object>();
	model.put("title", "Login");
	request.setAttribute("it", model);
%>
<jsp:include page="/WEB-INF/jsp/nest/frame.jsp" />
<%-- 
<c:redirect url="/rest/nest/login" />
 --%>