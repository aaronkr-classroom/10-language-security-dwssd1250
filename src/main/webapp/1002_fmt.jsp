<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" url="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>I18N-2</title>
</head>
<body>
	<p>---------- 기본 로케일 ----------</p>
	<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p>제목: <fmt:message key="title" bundle="${resourceBundle}"/>
	<p>이름: <fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/>
	
	<p>---------- 영문 로케일 ----------</p>
	<fmt:setlocale value="en"/>
	<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
	<p>제목: <fmt:message key="title" bundle="${resourceBundle}"/>
	<p>이름: <fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/>
</body>
</html>