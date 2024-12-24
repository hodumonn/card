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
        <div class="col-12 font-size-b sub-container">나야,</div>
        <div class="col-12 font-size-b sub-container" style="color: #4ABFD3;">을사년.</div>
        <div class="col-12" style="margin-top: 20px; margin-bottom: 20px;"></div>
        <div class="col-12 font-size-m sub-container">청용의 해</div>
        <div class="col-12 font-size-m sub-container">반드시</div>
        <div class="col-12 font-size-m sub-container">큰거온다.</div>
        <div class="col-12 font-size-s sub-container">히주 님이 보내신</div>
        <div class="col-12 font-size-s sub-container">메세지를 확인해보세요.</div>
        <div class="col-12 font-size-s sub-container text-center">⬇️📮</div>
    </div>
    <%--<div class="row">
        <div class="col-12">
            <img src="<c:url value='/img/img1.png' />" alt="2025년 이미지1"/>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        올 한해도 수고했어!ㅋㅋ<br><br>
                        <p class="text-right">by.호두</p>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <img class="card-img-top" src="<c:url value='/img/img1.png' />" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">올 한해도 수고했어!ㅋㅋ</p>
                    <br><br>
                    <p class="text-right">📝by.호두</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center align-items-center">
        <button type="button" class="btn btn-outline-primary">공유하기</button>
        <button type="button" class="btn btn-outline-secondary" onclick="create();">나도 만들기</button>
    </div>

    <canvas id="confetti-canvas"></canvas>
</div>
<script src="<c:url value='/js/main/main.js' />"></script>
</body>
</html>
