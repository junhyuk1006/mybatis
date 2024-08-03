<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <script type="text/javascript">
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2 id="form-title">Login</h2>
        <form id="login-form" action="${pageContext.request.contextPath}/" method="post" style="display: block">
            <div class="textbox">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <button type="submit" class="btn">로그인</button>
            <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/join'">회원가입</button>
        </form>
        <c:if test="${not empty message}">
            <script type="text/javascript">
                showAlert("${message}");
            </script>
        </c:if>
        <c:if test="${not empty successMessage}">
            <script type="text/javascript">
                showAlert("${successMessage}");
            </script>
        </c:if>
    </div>
</div>
</body>
</html>