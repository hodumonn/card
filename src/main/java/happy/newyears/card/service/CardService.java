package happy.newyears.card.service;

import happy.newyears.card.vo.CardVO;
import org.springframework.stereotype.Service;

@Service
public interface CardService {

    int createMessage(CardVO cardVO);

    CardVO getCard(int cardId);
}
