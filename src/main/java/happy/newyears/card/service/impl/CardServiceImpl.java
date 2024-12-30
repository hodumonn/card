package happy.newyears.card.service.impl;

import happy.newyears.card.dao.CardDAO;
import happy.newyears.card.service.CardService;
import happy.newyears.card.vo.CardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class CardServiceImpl implements CardService {

    @Autowired
    CardDAO cardDAO;

    @Override
    public String createMessage(CardVO cardVO) {

        UUID uuid = UUID.randomUUID();
        cardVO.setUrl(uuid.toString());

        int rowsAffected = cardDAO.createMessage(cardVO); // INSERT 실행
        System.out.println("생성된 PK (idx): " + rowsAffected);
        System.out.println("생성된 PK (idx): " + cardVO.getIdx()); // 자동 매핑된 키 값 확인

        if(rowsAffected < 1){
            return null;
        }

        return cardVO.getUrl(); // 자동 생성된 PK 반환
    }

    @Override
    public CardVO getCard(String url) {

        CardVO cardVO = new CardVO();

        if(url.length() < 1){
            cardVO.setIsSuccess(false);
            return cardVO;
        }

        cardVO = cardDAO.getCard(url);

        return cardVO;
    }


}
