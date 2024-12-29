package happy.newyears.card.controller;

import happy.newyears.card.dao.CardDAO;
import happy.newyears.card.service.CardService;
import happy.newyears.card.service.impl.CardServiceImpl;
import happy.newyears.card.vo.CardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.smartcardio.Card;
import java.util.List;
import java.util.Map;

@Controller
public class CardController {

    @Autowired
    private CardServiceImpl cardService;

    @Autowired
    private CardDAO cardDAO;

    /**
     * 메인 (카드 확인) 화면
     * @return
     */
    @GetMapping(value="/{idx}")
    public ModelAndView mainView(@PathVariable int idx) {

        ModelAndView mav = new ModelAndView();
        mav.addObject("cardVO", cardService.getCard(idx));
        mav.setViewName("main");

        return mav;
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
    public List<CardVO> test() {
        return cardDAO.selectImg();
    }

    /**
     * 카드 저장
     */
    @PostMapping(value="/create/message")
    @ResponseBody
    public CardVO createMessage(@ModelAttribute CardVO cardVO) {

        int idx = cardService.createMessage(cardVO);
        System.out.println("생성된 PK (idx): " + idx);
        if (idx < 1) {
            cardVO.setIsSuccess(false);
        }
        cardVO.setIdx(idx);
        cardVO.setIsSuccess(true);

        return cardVO;
    }
}


