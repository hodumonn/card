document.addEventListener("DOMContentLoaded", () => {
    const setVh = () => {
        const vh = window.innerHeight * 0.01;
        document.documentElement.style.setProperty('--vh', `${vh}px`);
    }

    setVh();
    window.addEventListener('resize', setVh);

    // <canvas> 요소 선택
    const canvas = document.getElementById('confetti-canvas');
    const targetRow = document.getElementById('confetti-row'); // row 선택

    // JSConfetti 인스턴스 생성
    const jsConfetti = new JSConfetti({ canvas });

    // row의 위치와 크기 계산
    const rect = targetRow.getBoundingClientRect();

    // canvas를 row 영역에 맞게 조정
    canvas.style.position = 'absolute';
    canvas.style.left = `${rect.left}px`;
    canvas.style.top = `${rect.top + window.scrollY}px`; // 스크롤 포함
    canvas.style.width = `${rect.width}px`;
    canvas.style.height = `${rect.height}px`;

    // 중앙 위치 계산
    const centerX = rect.width / 2 / window.innerWidth;
    const centerY = rect.height / 2 / window.innerHeight;

    // 콘페티 애니메이션 실행 핸들러
    let intervalId;

    // 콘페티 실행
    const repeatConfetti = () => {
        jsConfetti.addConfetti({
            emojis: ["💌", "🐲", "⭐", "🐉", "👨🏻‍🦲"], // 사용할 이모지
            emojiSize: 100, // 이모지 크기
            confettiNumber: 70, // 콘페티 개수
            position: {x: centerX, y: centerY}, // row 중앙 시작
        });

        // 애니메이션 지속 시간 증가 (1초 간격으로 반복)
        intervalId = setTimeout(repeatConfetti, 1000);
        setTimeout(() => {
            clearInterval(intervalId);  // 중지
        }, 5000); // 5초
    };

    repeatConfetti();


});
function create(){
    location.href="/create";
}
