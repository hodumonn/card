<%--
  Created by IntelliJ IDEA.
  User: hodu
  Date: 2024. 10. 21.
  Time: 오후 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <!-- 반응형 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/css/main/main.css' />" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="<c:url value='/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
    <script src="<c:url value='/js/js-confetti.browser.js' />"></script>
    <title>2025 Card</title>
</head>
<body>

<div class="container-fluid">
    <div class="row" id="confetti-row">
        <!-- 모바일처럼 보이게 하려면 col-12만 사용 -->
        <div class="col-12 font-size-b main-container">2025년</div>
        <div class="col-12 font-size-b sub-container">을사년</div>
        <div class="col-12 font-size-m sub-container">어서오세요.</div>
    </div>
    <canvas id="confetti-canvas"></canvas>
</div>
<script src="<c:url value='/js/main/main.js' />"></script>
</body>
</html>
