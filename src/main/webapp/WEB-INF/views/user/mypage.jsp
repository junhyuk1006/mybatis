<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <script type="text/javascript">
        function showAlert(message) {
            alert(message);
        }
        function confirmDelete(){
            if(confirm("정말로 삭제하시겠습니까?")){
                window.location.href ='${pageContext.request.contextPath}/delete';
            }else{
                window.location.href = '${pageContext.request.contextPath}/mypage';
            }
        }
    </script>
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2>My page</h2>
        <div class="textbox">
            <label>username</label>
            <input type="text" placeholder="Username" name="username" value="${user.username}" readonly>
        </div>
        <div class="textbox">
            <label>password</label>
            <input type="password" placeholder="Password" name="password" value="${user.password}" readonly>
        </div>
        <div class="textbox">
            <label>email</label>
            <input type="email" placeholder="Email" name="email" value="${user.email}" readonly>
        </div>
        <button type="submit" class="btn" onclick="location.href='${pageContext.request.contextPath}/home'">홈으로</button>
        <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/edit'">회원정보 수정</button>
        <button type="button" class="btn" onclick=confirmDelete()>회원삭제</button>
        <c:if test="${not empty message}">
            <script type="text/javascript">
                showAlert("${message}");
            </script>
        </c:if>
    </div>
</div>
</body>
</html>