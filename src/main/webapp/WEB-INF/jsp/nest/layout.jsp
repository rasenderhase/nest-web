<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div class="mdl-layout mdl-js-layout">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title">${pageContext.servletContext.servletContextName}</span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation -->
      <nav class="mdl-navigation">
      	<c:if test="${not empty pageContext.request.userPrincipal}">
        	<a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/logout">Logout ${pageContext.request.userPrincipal.name}</a>
        </c:if>
      </nav>
    </div>
  </header>
  <jsp:include page="navigation.jsp" />
  
  <main class="mdl-layout__content">
  	<jsp:include page="${_bodyJsp}" />
  </main>
  
  <div aria-live="assertive" aria-atomic="true" aria-relevant="text" class="mdl-snackbar mdl-js-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button class="mdl-snackbar__action" type="button"></button>
  </div>
</div>