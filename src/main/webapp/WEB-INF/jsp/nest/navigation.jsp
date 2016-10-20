<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <nav class="mdl-navigation">
      <c:if test="${empty pageContext.request.userPrincipal}">
        <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/nest/login"><fmt:message key="nest-web.navigation.login" /></a>
      </c:if>
      <c:if test="${pageContext.request.isUserInRole('admin') or pageContext.request.isUserInRole('info')}">
      	<a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/nest/demo"><fmt:message key="nest-web.navigation.demo" /></a>
      </c:if>
      <a class="mdl-navigation__link" href="http://www.nikem.de">nikem</a>
      <a class="mdl-navigation__link" href="https://github.com/rasenderhase/nest">nest</a>
      <c:if test="${not empty pageContext.request.userPrincipal}">
        <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/logout">
        	<fmt:message key="nest-web.navigation.logout">
        		<fmt:param>${pageContext.request.userPrincipal.name}</fmt:param>
        	</fmt:message>
        </a>
      </c:if>
    </nav>
