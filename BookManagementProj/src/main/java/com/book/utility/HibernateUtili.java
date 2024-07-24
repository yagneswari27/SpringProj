package com.book.utility;

import org.hibernate.SessionFactory;
/*import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;*/
import org.hibernate.cfg.Configuration;

public class HibernateUtili {
   /* private static StandardServiceRegistry registry;
    private static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory() {
    	registry =new StandardServiceRegistryBuilder().configure().build();
    	MetadataSources sources=new MetadataSources(registry);
    	Metadata metadata=sources.getMetadataBuilder().build();
    	sessionFactory=metadata.getSessionFactoryBuilder().build();
    	return sessionFactory;
    }*/
	private static SessionFactory sessionFactory;
	static
	{
		Configuration cfg = new Configuration();
		cfg.configure("hebernate.cfg.xml");
		sessionFactory = cfg.buildSessionFactory();
	}
	public static SessionFactory getSessionFactory()
	{
		return sessionFactory;
	}	
    
}
