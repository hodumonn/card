package happy.newyears.card.controller;

import happy.newyears.card.dao.CardDAO;
import happy.newyears.card.vo.ImageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class CardController {

    @Autowired
    private CardDAO cardDAO;

//    public CardController(CardDAO dao) {
//        this.cardDAO = dao;
//    }

    /**
     * 메인 (카드 확인) 화면
     * @return
     */
    @GetMapping(value="/")
    public String mainView() {
        return "main";
    }

    /**
     * 카드 만들기 화면
     * @return
     */
    @GetMapping(value="/create")
    public String createView() {
        return "create";
    }

    @GetMapping(value="/test")
    @ResponseBody
    public List<ImageVO> test() {
        return cardDAO.selectImg();
    }
}
