<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        .alert {
            background-color: black; /* 빨간색 배경 */
            color: white; /* 흰색 글씨 */
            padding: 20px; /* 내부 여백 */
            margin: 20px 0; /* 외부 여백 */
            border-radius: 4px; /* 모서리 둥글게 */
            height: 10px; /* 높이 지정 */
            display: flex;
            align-items: center; /* 수직 가운데 정렬 */
            justify-content: center; /* 수평 가운데 정렬 */
        }
    </style>
    <meta charset="UTF-8">
    <title>Join Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2>Join</h2>
        <form action="${pageContext.request.contextPath}/join" method="post">
            <div class="textbox">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="textbox">
                <input type="email" placeholder="Email" name="email" required>
            </div>
            <button type="submit" class="btn">회원가입</button>
            <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/'">로그인 화면으로</button>
        </form>
        <c:if test="${not empty message}">
            <div class="alert">
                    ${message}
            </div>
        </c:if>
    </div>
</div>
</body>
</html>