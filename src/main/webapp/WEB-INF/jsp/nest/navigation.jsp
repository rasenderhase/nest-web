<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="mdl-layout__drawer">
    <span class="mdl-layout-title">${pageContext.servletContext.servletContextName}</span>
    <nav class="mdl-navigation">
      <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/nest/demo">Demo</a>
      <a class="mdl-navigation__link" href="http://www.nikem.de">nikem</a>
      <a class="mdl-navigation__link" href="https://github.com/rasenderhase/nest">nest</a>
      <c:if test="${not empty pageContext.request.userPrincipal}">
        <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/rest/logout">Logout ${pageContext.request.userPrincipal.name}</a>
      </c:if>
    </nav>
</div>