package happy.newyears.card.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class CardController {

    @GetMapping(value="/")
    public String mainView() {
        return "main";
    }
}
