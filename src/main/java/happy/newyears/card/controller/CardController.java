package happy.newyears.card.controller;

import happy.newyears.card.dao.CardDAO;
import happy.newyears.card.service.impl.CardServiceImpl;
import happy.newyears.card.vo.CardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CardController {

    @Autowired
    private CardServiceImpl cardService;

    @Autowired
    private CardDAO cardDAO;

    @RequestMapping(value="/favicon.ico")
    @ResponseBody
    public void returnNoFavicon(){

    }
    /**
     * 메인 (카드 확인) 화면
     * @return
     */
    @GetMapping(value="/{url}")
    public ModelAndView mainView(@PathVariable String url) {

        ModelAndView mav = new ModelAndView();
        mav.addObject("cardVO", cardService.getCard(url));
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

        System.out.println(cardVO.getEmoji());

        String url = cardService.createMessage(cardVO);
        System.out.println("생성된 UUID (idx): " + url);
        if (url.length() < 1) {
            cardVO.setIsSuccess(false);
        }
        cardVO.setUrl(url);
        cardVO.setIsSuccess(true);

        return cardVO;
    }
}


