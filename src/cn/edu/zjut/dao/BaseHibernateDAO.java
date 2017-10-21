package cn.edu.zjut.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by Tim on 2017/10/21
 */
public class BaseHibernateDAO {
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.openSession();
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
