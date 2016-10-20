<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	

	<form method="POST" action="${pageContext.request.contextPath}/j_security_check">
	
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
		      <input type="text" name="j_username" id="j_username" class="mdl-textfield__input" spellcheck="false" autocorrect="off" autocapitalize="none"/>
			  <label class="mdl-textfield__label" for="j_username"><fmt:message key="nest-web.login.name" /></label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			  <input type="password" name="j_password" id="j_password" class="mdl-textfield__input" spellcheck="false"/>
			  <label class="mdl-textfield__label" for="j_password"><fmt:message key="nest-web.login.password" /></label>
			</div>
			
		  <div class="mdl-card__actions mdl-card--border">
		    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"><fmt:message key="nest-web.login.submit" /></button>
		  </div>
		  
	</form>