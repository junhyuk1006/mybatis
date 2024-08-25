<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 50px;
        }
        table {
            width: 80%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .pagination a {
            margin: 0 5px;
            padding: 5px 10px;
            text-decoration: none;
            color: black;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
        }
    </style>
    <script type="text/javascript">
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
<div class="container">
    <h2>내가 쓴 게시물 목록</h2>
    <table class="board-table">
        <thead>
        <tr>
            <th>제목</th>
            <th>작성 시간</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="board" items="${pageResponse.data}">
            <tr>
                <td><a href="/board/${board.id}">${board.title}</a></td>
                <td>${board.time}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
     <div class="pagination">
            <c:if test="${pageResponse.startPage > 1}">
               <a href="/myBoardList?page=${pageResponse.startPage-1}&size=10">이전</a>
            </c:if>
            <c:forEach var="i" begin="${pageResponse.startPage}" end="${pageResponse.endPage}">
                <a href="myBoardList?page=${i}&size=10" class="${i == pageResponse.currentPage ? 'active' : ''}" >${i}</a>
            </c:forEach>
            <c:if test="${pageResponse.endPage < pageResponse.totalPages}">
                <a href="/myBoardList?page=${pageResponse.endPage+1}&size=10">다음</a>
            </c:if>
        </div>
    <button class="button" onclick="location.href='${pageContext.request.contextPath}/boardList'">목록으로</button>
    <c:if test="${not empty deleteMessage}">
        <script type="text/javascript">
            showAlert("${deleteMessage}");
        </script>
    </c:if>
</div>
</body>
</html>