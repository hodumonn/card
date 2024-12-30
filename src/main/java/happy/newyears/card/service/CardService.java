package happy.newyears.card.service;

import happy.newyears.card.vo.CardVO;
import org.springframework.stereotype.Service;

@Service
public interface CardService {

    String createMessage(CardVO cardVO);

    CardVO getCard(String url);
}
