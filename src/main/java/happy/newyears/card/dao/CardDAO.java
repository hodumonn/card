package happy.newyears.card.dao;

import happy.newyears.card.vo.ImageVO;
import org.apache.ibatis.annotations.Mapper;

import java.awt.font.ImageGraphicAttribute;
import java.util.List;

@Mapper
public interface CardDAO {
    List<ImageVO> selectImg();
}
