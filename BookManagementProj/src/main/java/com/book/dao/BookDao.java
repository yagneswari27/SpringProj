package com.book.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.book.entity.Book;
import com.book.utility.HibernateUtili;

public class BookDao {
	public static void saveBook(Book book) {
		SessionFactory sf=HibernateUtili.getSessionFactory();
		Session s=sf.openSession();
		Transaction tx=s.beginTransaction();
		s.persist(book);
		tx.commit();
		s.close();
		
	}
	public static List<Book> listBooks()
	{
		SessionFactory sf=HibernateUtili.getSessionFactory();
		Session s=sf.openSession();
		Query query=s.createQuery("from Book");
		List<Book> bookList =query.list();
		return bookList;
	}
}
