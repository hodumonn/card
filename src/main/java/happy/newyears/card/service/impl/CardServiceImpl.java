package happy.newyears.card.service.impl;

import happy.newyears.card.dao.CardDAO;
import happy.newyears.card.service.CardService;
import happy.newyears.card.vo.CardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardServiceImpl implements CardService {

    @Autowired
    CardDAO cardDAO;

    @Override
    public int createMessage(CardVO cardVO) {
        int rowsAffected = cardDAO.createMessage(cardVO); // INSERT 실행
        System.out.println("생성된 PK (idx): " + rowsAffected);
        System.out.println("생성된 PK (idx): " + cardVO.getIdx()); // 자동 매핑된 키 값 확인
        return cardVO.getIdx(); // 자동 생성된 PK 반환
    }

    @Override
    public CardVO getCard(int cardId) {

        CardVO cardVO = new CardVO();

        if(cardId < 1){
            cardVO.setIsSuccess(false);
            return cardVO;
        }

        cardVO = cardDAO.getCard(cardId);

        return cardVO;
    }


}
