<%--
  Created by IntelliJ IDEA.
  User: hodu
  Date: 2024. 12.10.
  Time: 오후 10:30
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
    <script src="<c:url value='/js/create/create.js' />"></script>
    <!-- 카카오 공유 api -->
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.4/kakao.min.js"
            integrity="sha384-DKYJZ8NLiK8MN4/C5P2dtSmLQ4KwPaoqAfyA/DfmEc1VDxu4yyC7wy6K1Hs90nka" crossorigin="anonymous"></script>
    <title>2025 Card</title>
</head>
<script>
    Kakao.init('99e069bb6b6e6d86e159b0a3361a7ef4'); // 사용하려는 앱의 JavaScript 키 입력
</script>
<body>

<div class="container-fluid">
    <!-- 선택된 이미지 -->
    <div class="row mb-4">
        <div class="col-12 text-center">
            <div id="selectedImageContainer">
                <img id="selectedImage" class="img-fluid rounded" src="<c:url value='/img/img1.png' />" alt="Selected">
            </div>
        </div>
    </div>

    <!-- 슬라이드 영역 -->
    <div class="row mb-4">
        <div class="col-12">
            <div id="imageCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img1.png' />" class="img-thumbnail" alt="Image 1" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img2.png' />" class="img-thumbnail" alt="Image 2" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img3.png' />" class="img-thumbnail" alt="Image 3" onclick="selectImage(this)">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img4.png' />" class="img-thumbnail" alt="Image 4" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img5.png' />" class="img-thumbnail" alt="Image 5" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img6.png' />" class="img-thumbnail" alt="Image 6" onclick="selectImage(this)">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img7.png' />" class="img-thumbnail" alt="Image 4" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img8.png' />" class="img-thumbnail" alt="Image 5" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img9.png' />" class="img-thumbnail" alt="Image 6" onclick="selectImage(this)">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img10.png' />" class="img-thumbnail" alt="Image 4" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img11.png' />" class="img-thumbnail" alt="Image 5" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img12.png' />" class="img-thumbnail" alt="Image 6" onclick="selectImage(this)">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img13.png' />" class="img-thumbnail" alt="Image 4" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img14.png' />" class="img-thumbnail" alt="Image 5" onclick="selectImage(this)">
                            </div>
                            <div class="col-4 mb-2">
                                <img src="<c:url value='/img/img15.png' />" class="img-thumbnail" alt="Image 6" onclick="selectImage(this)">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 캐러셀 컨트롤 -->
                <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>


            </div>
        </div>
    </div>

    <!-- 폼 영역 -->
    <div class="row mb-4">
        <div class="col-12">
            <form id="imageForm" class="needs-validation" novalidate>
                <div class="form-group">
                    <label for="nickname">이름/닉네임</label>
                    <input type="text" class="form-control" id="nickname" placeholder="이름을 입력해주세요." required>
                    <div class="invalid-feedback">이름/닉네임을 입력해주세요.</div>
                </div>
                <div class="form-group">
                    <label for="emoji">이모지(5개)</label>
                    <input type="text" class="form-control" id="emoji" placeholder="이모지를 5개 선택해주세요." required>
                    <div class="invalid-feedback">이모지 5개를 선택해주세요.</div>
                </div>
                <div class="form-group">
                    <label for="content">내용</label>
                    <textarea class="form-control" id="content" rows="5" placeholder="내용을 입력해주세요." required></textarea>
                    <div id="charCount" class="text-muted text-right">0 / 1000자</div>
                    <div class="invalid-feedback">내용을 입력해주세요.</div>
                </div>
                <div class="text-center d-flex flex-column align-items-center">
                    <a id="kakaotalk-sharing-btn">
                        <button type="button" class="btn btn-outline-primary" id="share_btn">공유하기</button>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<script>

</script>
</html>
