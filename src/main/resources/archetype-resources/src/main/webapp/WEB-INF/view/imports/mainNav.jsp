#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<c:set var="app" value="${symbol_dollar}{pageContext.servletContext.contextPath}" />
<sec:authorize access="isAuthenticated()" var="authenticated"></sec:authorize>

<c:if test="${symbol_dollar}{authenticated}">
	<sec:authentication property="name" var="currentUsername"></sec:authentication>
</c:if>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${symbol_dollar}{app}/">[[app_name]]</a>
			<button type="button"
					class="navbar-toggle collapsed"
					data-toggle="collapse"
					data-target="${symbol_pound}c-top-nav">
			
				<i class="fa fa-bars"></i>
			</button>
		</div>
		
		<div class="collapse navbar-collapse" id="c-top-nav">
			
		</div>
	</div>
</nav>

<section class="c-js-alerts"></section>