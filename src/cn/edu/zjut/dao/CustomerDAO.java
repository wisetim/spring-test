package cn.edu.zjut.dao;

import cn.edu.zjut.po.Customer;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by Tim on 2017/10/20
 */
public class CustomerDAO extends BaseHibernateDAO implements ICustomerDAO {
    public CustomerDAO() {
        System.out.println("create CustomerDAO");
    }

    @Override
    public void save(Customer customer) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(customer);
            tran.commit();
        } catch (RuntimeException re) {
            if (tran != null) tran.rollback();
            throw re;
        } finally {
            if (session != null) session.close();
        }
    }
}
