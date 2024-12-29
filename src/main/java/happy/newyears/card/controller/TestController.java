package happy.newyears.card.controller;

import happy.newyears.card.dao.CardDAO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    private final CardDAO cardDAO;

    public TestController(CardDAO cardDAO) {
        this.cardDAO = cardDAO;
    }

//    @GetMapping
//    public int testQuery() {
//        return cardDAO.testQuery();
//    }
}
