<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h3>Ihre Rollen:</h3>
	<ul class="mdl-list">
		<c:if test="${pageContext.request.isUserInRole('admin')}">
  			<li class="mdl-list__item">
    		<span class="mdl-list__item-primary-content">
    		<i class="material-icons mdl-list__item-icon">person</i>
    		Administrator
    		</span>
  			</li>
  		</c:if>
		<c:if test="${pageContext.request.isUserInRole('info')}">
  			<li class="mdl-list__item">
    		<span class="mdl-list__item-primary-content">
    		<i class="material-icons mdl-list__item-icon">person</i>
    		Informatiker
    		</span>
  			</li>
  		</c:if>
  	</ul>
	
	<dl><dt>aktuelle Zeit:</dt><dd id="time">${it.datetime}</dd></dl>

	<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
		<thead>
			<tr>
				<th class="mdl-data-table__cell--non-numeric">Header 1</th>
				<th>Header 2</th>
				<th>Header 3</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach begin="1" end="100" varStatus="status">
				<tr>
					<td class="mdl-data-table__cell--non-numeric">Cell 1 - ${status.index}</td>
					<td>${status.index}</td>
					<td>${status.index}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>