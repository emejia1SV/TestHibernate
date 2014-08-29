package de.laliluna.test;

import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import de.laliluna.examples.Agregadores;
import de.laliluna.examples.Pais;
import de.laliluna.examples.Servicios;
import de.laliluna.hibernate.HibernateUtil;

public class TestHibernate {

	/* Get actual class name to be printed on */
	public static Logger logger = Logger.getLogger(TestHibernate.class);

	/**
	 * @param args
	 */	
	public static void main(String[] args) {
		//test3();
		
		testDeleteCascade();
	}
	
	public static void testDeleteCascade(){
		Pais pais = new Pais();
		pais.setId(3);
		pais.setCodigo("504");
		pais.setNombre("Honduras");
		pais.setEstado(1);
		deleteData(pais);


        if(HibernateUtil.getSessionAnnotationFactory().getCurrentSession().isOpen())
        	HibernateUtil.getSessionAnnotationFactory().getCurrentSession().close();
        	
        if(!HibernateUtil.getSessionAnnotationFactory().isClosed())
        	HibernateUtil.getSessionAnnotationFactory().close();
	}
	
	@SuppressWarnings("unchecked")
	public static void test1(){
		String query = "FROM AGR_AGREGADORES";
		
		Agregadores obj = new Agregadores();
	    obj.setEstado(1);
	    //obj.setIdPais(1);
	    obj.setId(17);
	    obj.setNombre_agregador("prueba de insercion hibernate");
         
        createData(obj);
        
        List<Agregadores> objs = listData(query);
        for (Agregadores agregador : objs) {
			if(agregador.getId()==17){
				agregador.setNombre_agregador("Cambio de nombre");
				updateData(agregador);
			}
		}
        
        objs = listData(query);
        for (Agregadores agregador : objs) {
			System.out.println(agregador.getNombre_agregador());
		}
        
        deleteData(obj);
        
        objs = listData(query);
        for (Agregadores agregador : objs) {
			if(agregador.getId()==13){
				agregador.setNombre_agregador("Cambio de nombre");
				updateData(agregador);
			}
		}
        
        if(HibernateUtil.getSessionAnnotationFactory().getCurrentSession().isOpen())
        	HibernateUtil.getSessionAnnotationFactory().getCurrentSession().close();
        	
        if(!HibernateUtil.getSessionAnnotationFactory().isClosed())
        	HibernateUtil.getSessionAnnotationFactory().close();
	}
	
	public static void test2() {
		String query = "FROM AGR_AGREGADORES";

		Agregadores obj = new Agregadores();
		obj.setEstado(1);
		//obj.setIdPais(1);
		obj.setId(10);
		obj.setNombre_agregador("prueba de insercion hibernate");
		
		createData(obj);

		Servicios servicio = new Servicios();
		servicio.setContrasenia("uno");
		servicio.setUsuario("Edwin");
		servicio.setId(10);
		servicio.setAgregador(obj);
		servicio.setWsdl_Agregador("http://192.168.0.100:8090/axis2/services/pruebaWsCadena?wsdl");

		Servicios servicio2 = new Servicios();
		servicio2.setContrasenia("dos");
		servicio2.setId(11);
		servicio2.setUsuario("Edwin");
		servicio2.setAgregador(obj);
		servicio2.setWsdl_Agregador("http://192.168.0.100:8090/axis2/services/pruebaWsCadena?wsdl");
		
		createData(servicio);
		createData(servicio2);
		
		
		

        if(HibernateUtil.getSessionAnnotationFactory().getCurrentSession().isOpen())
        	HibernateUtil.getSessionAnnotationFactory().getCurrentSession().close();
        	
        if(!HibernateUtil.getSessionAnnotationFactory().isClosed())
        	HibernateUtil.getSessionAnnotationFactory().close();
	}
	
	public static void test3() {
		String query = "FROM AGR_AGREGADORES";

		Pais pais = new Pais();
		pais.setId(3);
		pais.setCodigo("504");
		pais.setNombre("Honduras");
		pais.setEstado(1);
		
		createData(pais);
		
		Agregadores obj = new Agregadores();
		obj.setEstado(1);
		obj.setPais(pais);
		obj.setId(10);
		obj.setNombre_agregador("prueba de insercion hibernate");
		
		createData(obj);

		Servicios servicio = new Servicios();
		servicio.setContrasenia("uno");
		servicio.setUsuario("Edwin");
		servicio.setId(10);
		servicio.setAgregador(obj);
		servicio.setWsdl_Agregador("http://192.168.0.100:8090/axis2/services/pruebaWsCadena?wsdl");

		Servicios servicio2 = new Servicios();
		servicio2.setContrasenia("dos");
		servicio2.setId(11);
		servicio2.setUsuario("Edwin");
		servicio2.setAgregador(obj);
		servicio2.setWsdl_Agregador("http://192.168.0.100:8090/axis2/services/pruebaWsCadena?wsdl");
		
		createData(servicio);
		createData(servicio2);
		
		
		

        if(HibernateUtil.getSessionAnnotationFactory().getCurrentSession().isOpen())
        	HibernateUtil.getSessionAnnotationFactory().getCurrentSession().close();
        	
        if(!HibernateUtil.getSessionAnnotationFactory().isClosed())
        	HibernateUtil.getSessionAnnotationFactory().close();
	}

	/**
	 * Metodo para oobtener una lista de datos
	 * 
	 * @author Edwin Mejia - Avantia Consultores
	 * @param query
	 *            {String} dato de insumo para obtener un listado desde la BD
	 * @return {java.util.List}
	 * */
	@SuppressWarnings("rawtypes")
	private static List listData(String query) {
		Session session = HibernateUtil.getSessionAnnotationFactory().getCurrentSession();
		List objs = null;
		try {
			session.beginTransaction();
			objs = session.createQuery(query).list();
			session.getTransaction().commit();
			//session.close();
		} catch (RuntimeException e) {
			if (session.getTransaction() != null
					&& session.getTransaction().isActive()) {
				try {
					// Second try catch as the rollback could fail as well
					session.getTransaction().rollback();
				} catch (HibernateException e1) {
					logger.debug("Error rolling back transaction");
				}
				// throw again the first exception
				throw e;
			}
		}
		return objs;

	}

	private static void deleteData(Object obj) {
		Session session = HibernateUtil.getSessionAnnotationFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.delete(obj);
			session.getTransaction().commit();
			//session.close();
		} catch (RuntimeException e) {
			if (session.getTransaction() != null
					&& session.getTransaction().isActive()) {
				try {
					// Second try catch as the rollback could fail as well
					session.getTransaction().rollback();
				} catch (HibernateException e1) {
					logger.debug("Error rolling back transaction");
				}
				// throw again the first exception
				throw e;
			}
		}
	  }

	private static void createData(Object obj) {
		Session session = HibernateUtil.getSessionAnnotationFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.save(obj);
			session.getTransaction().commit();
			//session.close();
		} catch (RuntimeException e) {
			if (session.getTransaction() != null
					&& session.getTransaction().isActive()) {
				try {
					// Second try catch as the rollback could fail as well
					session.getTransaction().rollback();
				} catch (HibernateException e1) {
					logger.debug("Error rolling back transaction");
				}
				// throw again the first exception
				throw e;
			}
		}
	}

	private static void updateData(Object obj) {
		Session session =  HibernateUtil.getSessionAnnotationFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.update(obj);
			session.getTransaction().commit();
			//session.close();
		} catch (RuntimeException e) {
			if (session.getTransaction() != null
					&& session.getTransaction().isActive()) {
				try {
					// Second try catch as the rollback could fail as well
					session.getTransaction().rollback();
				} catch (HibernateException e1) {
					logger.debug("Error rolling back transaction");
				}
				// throw again the first exception
				throw e;
			}
		}
	  }
}
