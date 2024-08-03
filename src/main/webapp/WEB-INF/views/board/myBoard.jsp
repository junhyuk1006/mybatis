<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <div class="login-box">
        <h2>게시글</h2>
        <div class="textbox">
            <label for="title">제목</label>
            <div id="title" style="color: white">${board.title}</div>
        </div>
        <div class="textbox">
            <label for="content">내용</label>
            <div id="content" style="color: white">${board.content}</div>
        </div>
        <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/editBoard/${board.id}'">수정하기</button>
        <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/deleteBoard/${board.id}'">삭제하기</button>
        <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/boardList'">목록으로</button>
    </div>
</div>
</body>
</html>