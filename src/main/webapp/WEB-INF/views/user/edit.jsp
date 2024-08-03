<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2>회원정보 수정</h2>
        <form action="${pageContext.request.contextPath}/edit" method="post">
            <div class="textbox">
                <input type="text" placeholder="Username" name="username" value="${user.username}" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" value="${user.password}" required>
            </div>
            <div class="textbox">
                <input type="email" placeholder="Email" name="email" value="${user.email}" required>
            </div>
            <button type="submit" class="btn">수정완료</button>
            <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/mypage'">이전으로</button>
        </form>
    </div>
</div>
</body>
</html>