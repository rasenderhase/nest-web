<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title">${pageContext.servletContext.servletContextName}<c:if test="${not empty it.title}"> - ${it.title}</c:if></span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation -->
      <nav class="mdl-navigation">
      	<c:if test="${empty pageContext.request.userPrincipal}">
        	<a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/nest/login"><fmt:message key="nest-web.layout.login" /></a>
        </c:if>
      	<c:if test="${not empty pageContext.request.userPrincipal}">
        	<a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/logout">
        		<fmt:message key="nest-web.layout.logout">
        	 		<fmt:param>${pageContext.request.userPrincipal.name}</fmt:param>
        	 	</fmt:message>
        	 </a>
        </c:if>
      </nav>
    </div>
  </header>

  <div class="mdl-layout__drawer">
    <a class="mdl-layout-title" href="${pageContext.request.contextPath}/">${pageContext.servletContext.servletContextName}</a>
    <jsp:include page="navigation.jsp" />
  </div>
  
  <main class="mdl-layout__content">
  	<jsp:include page="${_bodyJsp}" />
  </main>
  
  <input id="snackMessage" type="hidden" value="${param.snackMessage}${snackMessage}${it.snackMessage}${it.errors.snackMessage}${app_session.infoMessage}${app_session.errorMessage}">
  <div aria-live="assertive" aria-atomic="true" aria-relevant="text" class="mdl-snackbar mdl-js-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button class="mdl-snackbar__action" type="button"></button>
  </div>
</div>