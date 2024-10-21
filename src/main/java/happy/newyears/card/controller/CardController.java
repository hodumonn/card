package happy.newyears.card.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CardController {

    @GetMapping(value="/")
    public String mainView() {
        return "Hello World!";
    }
}
