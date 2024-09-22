package spring10;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;
@Repository
public class SignupDao {

    private static SessionFactory sessionFactory;

    static {
        // Initialize Hibernate SessionFactory once
        StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
        Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
        sessionFactory = meta.buildSessionFactory();
    }

    public void saveSignup(Signup signup) {
        
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
        session.save(signup);
        transaction.commit();
        }catch(Exception e) {
        	transaction.rollback();
        	if(e.getCause() instanceof DataIntegrityViolationException) {
        		throw new RuntimeException("this user is alredy exists, you can login now");
        	}
        	throw e;
        }finally {
        session.close();
    }
   }
        public Signup findByUsernameAndPassword( String username, String password) {
        	Session session = sessionFactory.openSession();
        Query<Signup> query = session.createQuery("From Signup Where username=:username and password =:password",Signup.class);
        query.setParameter("username", username);
        query.setParameter("password", password);
        Signup signup = query.uniqueResult();
        session.close();
        return signup;
    }
}
