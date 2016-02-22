package toycms;

/**
 * Created by Deus@ZJU on 16/2/10.
 */
import java.util.concurrent.atomic.AtomicLong;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import toycms.model.Message;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@RestController
public class GreetingController {

    Logger logger = LogManager.getLogger();
    private static final String template = "Hello, %s!";

    private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("toycms");

    @RequestMapping(value = "/greeting")
    public Message greeting(@RequestParam(value = "name", defaultValue = "World") String name) {

        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Message message = new Message();
        message.setContent(String.format(template, name));
        entityManager.persist(message);

        entityManager.getTransaction().commit();
        entityManager.close();

        return message;
    }
}
