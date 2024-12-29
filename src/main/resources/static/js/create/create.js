$(document).ready(function() {

   const content = $('#content');

   // 1000자 제한 체크
   content.on('input', ()=> {
      const charCount = $('#charCount');
      const maxLength = 1000;

      const currentLength = $('#content').val().length;

      if (currentLength > maxLength) {
         content.val(content.val().substring(0, maxLength)); // 초과 부분 잘라내기
      }

      charCount.text(`${content.val().length} / ${maxLength}자`);

   });



   // 캐서럴
   const carousel = $('#imageCarousel');
   carousel.carousel({
      interval: false // 자동 슬라이드 비활성화
   });

   // 마우스 드래그 기능 추가
   let isDragging = false;
   let startX = 0;

   carousel.on('mousedown', function (event) {
      isDragging = true;
      startX = event.pageX;
   });

   carousel.on('mouseup', function (event) {
      if (isDragging) {
         const endX = event.pageX;
         if (endX < startX - 50) {
            carousel.carousel('next'); // 다음 슬라이드
         }
         if (endX > startX + 50) {
            carousel.carousel('prev'); // 이전 슬라이드
         }
         isDragging = false;
      }
   });

   carousel.on('mouseleave', function () {
      isDragging = false; // 드래그 취소
   });

   // 공유하기 버튼
   $('#kakaotalk-sharing-btn').on('click', () => {
      let forms = document.querySelectorAll('.needs-validation');

      let img_src = finalSelectImage();

      // 각 폼에 대해 검증 실행
      forms.forEach(function(form) {
         if (!form.checkValidity()) {
            form.classList.add('was-validated'); // 부트스트랩 유효성 클래스 추가
         } else {
            // 유효한 경우 추가 로직 실행 (예: 폼 제출 등)
            $.ajax({
               url: '/create/message',
               method: 'POST',
               data: {
                  'nickname': $('#nickname').val(),
                  'content': $('#content').val(),
                  'img_url': img_src
               },
               dataType: 'json',
               async: false,
               success: ((res) => {
                  console.log(res);
                  if(res.isSuccess){
                     console.log("dd");
                     shareMessage(res.idx); // 카카오 공유하기 함수 실행
                  }
               }),
               error: ((xhr, status, err) => {
                  alert('처리 중 문제가 발생했습니다.');
               })
            })
         }
      });
   });
});

function shareMessage(idx) {
   const baseUrl = 'http://localhost:8084'; // 등록된 도메인
   const fullUrl = `${baseUrl}/${idx}`; // 쿼리 파라미터 추가
   console.log(idx);
   console.log(fullUrl);
    Kakao.Share.sendDefault({
    objectType: 'text',
    text:
        '신년 카드로 전하는 올해의 메시지를 확인해보세요!',
        link: {
            // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
            mobileWebUrl: fullUrl,
            webUrl: fullUrl,
        },
    });
}


// 이미지 선택
function selectImage(image) {
   const selectedImageContainer = document.getElementById('selectedImage');
   selectedImageContainer.src = image.src; // 선택된 이미지의 경로로 변경
   console.log(selectedImageContainer);
}

// 최종 선택 이미지
function finalSelectImage(){
   const imgElement = document.getElementById('selectedImage');
   const src = imgElement.getAttribute('src');
   const fileName = src.split('/').pop();
   return fileName;
}

