package happy.newyears.card.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class CardController {

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
}
