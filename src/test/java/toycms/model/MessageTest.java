package toycms.model;

import junit.framework.TestCase;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;

import static org.junit.Assert.*;

/**
 * Created by Deus@ZJU on 16/2/22.
 */
public class MessageTest extends TestCase {

    @PersistenceUnit(unitName = "toycms")
    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager = entityManagerFactory.createEntityManager();

    @Before
    public void setUp() throws Exception {
//        entityManagerFactory = Persistence.createEntityManagerFactory( "toycms" );
    }

    @Test
    public void testSave() {
        entityManager.getTransaction().begin();

        Message message = new Message();
        message.setContent("Hello World!");
        entityManager.persist(message);

        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @After
    public void tearDown() throws Exception {

    }
}