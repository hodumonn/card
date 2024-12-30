package happy.newyears.card.dao;

import happy.newyears.card.vo.CardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CardDAO {
    List<CardVO> selectImg();

    int createMessage(CardVO cardVO);

    CardVO getCard(String url);
}
