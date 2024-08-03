<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원삭제 성공</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <script type="text/javascript">
        function redirectToLogin() {
            window.location.href = '${pageContext.request.contextPath}/';
        }
    </script>
    <style>
        .container {
            display: flex;
            flex-direction: column;
            justify-content: end;
            align-items: center;
            height: 80vh;
            text-align: center;
        }
        .message {
            margin-bottom: 10px;
        }
        .button {
            padding: 10px 20px;
            font-size: 16px;
        }
    </style>
    </style>
</head>
<body>
<div class="container">
    <h2>${message}</h2>
    <button class="button" onclick="redirectToLogin()">확인</button>
</div>
</body>
</html>
