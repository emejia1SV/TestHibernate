package de.laliluna.test;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import de.laliluna.examples.Agregadores;
import de.laliluna.hibernate.HibernateUtil;
import de.laliluna.hibernate.SessionFactoryUtil;

public class TestHibernate {

	/* Get actual class name to be printed on */
	public static Logger logger = Logger.getLogger(TestHibernate.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Agregadores obj = new Agregadores();
	    obj.setEstado(1);
	    obj.setIdPais(1);
	    obj.setId(13);
	    obj.setNombre_agregador("prueba de insercion hibernate");
         
        //Get Session
	    SessionFactory sessionFactory = HibernateUtil.getSessionAnnotationFactory();
        Session session = sessionFactory.getCurrentSession();
        //start transaction
        session.beginTransaction();
        //Save the Model object
        session.save(obj);
        //Commit transaction
        session.getTransaction().commit();
        System.out.println("Employee ID= " + obj.getId());
         
        sessionFactory.close();
        
        //terminate session factory, otherwise program won't end
        /*if(!sessionFactory.isClosed()){
        	sessionFactory.close();
        }
        
        if(!HibernateUtil.getSessionFactory().isClosed())
        	HibernateUtil.getSessionFactory().close();
		*/
		// TODO Auto-generated method stub
		/*Agregadores forestHoney = new Agregadores();
	    forestHoney.setEstado(1);
	    forestHoney.setIdPais(1);
	    forestHoney.setId(4);
	    forestHoney.setNombre_agregador("prueba de insercion hibernate");
	    
	    createHoney(forestHoney);
	    // our instances have a primary key now:
	    logger.debug(forestHoney);*/
	   /* listHoney();
	    deleteHoney(forestHoney);
	    listHoney();
	    forestHoney.setNombre_agregador("Norther Forest Honey");
	    updateHoney(forestHoney);*/
	}

	private static void listHoney() {
	    Transaction tx = null;
	    Session session = SessionFactoryUtil.getInstance().getCurrentSession();
	    try {
	      tx = session.beginTransaction();
	      List honeys = session.createQuery("select * from AGREGADORES")
	              .list();
	      for (Iterator iter = honeys.iterator(); iter.hasNext();) {
	        Agregadores element = (Agregadores) iter.next();
	        logger.debug(element);
	      }
	      tx.commit();
	    } catch (RuntimeException e) {
	      if (tx != null && tx.isActive()) {
	        try {
	// Second try catch as the rollback could fail as well
	          tx.rollback();
	        } catch (HibernateException e1) {
	          logger.debug("Error rolling back transaction");
	        }
	// throw again the first exception
	        throw e;
	      }


	    }
	  }

	private static void deleteHoney(Agregadores honey) {
	    Transaction tx = null;
	    Session session = SessionFactoryUtil.getInstance().getCurrentSession();
	    try {
	      tx = session.beginTransaction();
	      session.delete(honey);
	      tx.commit();
	    } catch (RuntimeException e) {
	      if (tx != null && tx.isActive()) {
	        try {
	// Second try catch as the rollback could fail as well
	          tx.rollback();
	        } catch (HibernateException e1) {
	          logger.debug("Error rolling back transaction");
	        }
	// throw again the first exception
	        throw e;
	      }
	    }
	  }

	private static void createHoney(Agregadores honey) {
	    Transaction tx = null;
	    Session session = SessionFactoryUtil.getInstance().getCurrentSession();
	    try {
	      tx = session.beginTransaction();
	      session.save(honey);
	      tx.commit();
	      session.close();
	    } catch (RuntimeException e) {
	      if (tx != null && tx.isActive()) {
	        try {
	// Second try catch as the rollback could fail as well
	          tx.rollback();
	        } catch (HibernateException e1) {
	          logger.debug("Error rolling back transaction");
	        }
	// throw again the first exception
	        throw e;
	      }
	    }
	  }

	private static void updateHoney(Agregadores honey) {
	    Transaction tx = null;
	    Session session = SessionFactoryUtil.getInstance().getCurrentSession();
	    try {
	      tx = session.beginTransaction();
	      session.update(honey);
	      tx.commit();
	    } catch (RuntimeException e) {
	      if (tx != null && tx.isActive()) {
	        try {
	// Second try catch as the rollback could fail as well
	          tx.rollback();
	        } catch (HibernateException e1) {
	          logger.debug("Error rolling back transaction");
	        }
	// throw again the first exception
	        throw e;
	      }
	    }
	  }
}
