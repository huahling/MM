<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%><!-- isErrorPage="ture" -->
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script
	src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<form:form action="${pageContext.request.contextPath}/emp"
		method="POST" modelAttribute="user" enctype="multipart/form-data">

		<%--  <form:errors path="*"></form:errors><br>  --%>

		<fmt:message key="td.name"></fmt:message>:<form:input path="name" />
		<br>
		<form:errors path="name"></form:errors>
		<br>


		<fmt:message key="td.sex">
		</fmt:message>
			:<form:radiobuttons path="sex" items="${xingbei}" />
		<br>
		<form:errors path="sex"></form:errors>
		<br> 
		
		 <!-- hand:<input type="file" name="hd" /> -->
		<br>

		<fmt:message key="td.addr"></fmt:message>: <form:input path="addr" />
		<br>
		<form:errors path="addr"></form:errors>
		<br>

		<c:if test="${user.id != 0}">
			<form:hidden path="id" />
			<br>
			<fmt:message key="td.hand"></fmt:message>:<input type="file" name="hd" /><br>
			<fmt:message key="td.yong"></fmt:message>:<form:select path="gs_id"
				items="${yg}" itemLabel="yuangong" itemValue="sid"></form:select>
			<br>
		<form:errors path="gs.yuangong"></form:errors>
			<br> 
			<input type="hidden" name="_method" value="PUT">
			<br>
		</c:if>


		<c:if test="${user.id == 0}">
			<fmt:message key="td.hand"></fmt:message>:<input type="file" name="hd" />
			<fmt:message key="td.password"></fmt:message>:<form:input
				path="password" />
			<br>
			<!-- itemLabel="yuangong" itemValue="id" -->
			<form:errors path="password"></form:errors>
			<br>
			
			<fmt:message key="td.yong"></fmt:message>:<form:select path="gs.sid"
				items="${yg}" itemLabel="yuangong" itemValue="sid"></form:select>
			<br>

			<br>
		</c:if>


		<%-- 	 yuangong:<form:select path="gongs" items="${yg}"  ></form:select> --%>
		<fmt:message key="td.birth"></fmt:message>:<form:input path="birth"
			onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"></form:input>
		<br>
		<form:errors path="birth"></form:errors>
		<br>

		<br>
		<input type="submit">
	</form:form>

</body>
</html>