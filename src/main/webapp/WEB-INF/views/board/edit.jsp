<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 수정</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2>게시글 수정</h2>
        <form action="${pageContext.request.contextPath}/editBoard/${board.id}" method="post">
            <div class="textbox">
                <label for="title">제목</label>
                <input type="text" placeholder="Title" name="title" value="${board.title}" required>
            </div>
            <div class="textbox">
                <label for="content">내용</label>
                <textarea id="content" placeholder="content" name="content" required>${board.content}</textarea>
            </div>
            <button type="submit" class="btn">수정완료</button>
            <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/myBoard/${board.id}'">이전으로</button>
        </form>
    </div>
</div>
</body>
</html>