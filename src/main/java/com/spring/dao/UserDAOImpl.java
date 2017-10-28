package com.spring.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.dao.UserDAO;
import com.spring.model.User;


@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

		
		
		@Autowired	
		 SessionFactory sessionFactory;
		
		public UserDAOImpl(SessionFactory sessionFactory)
		{
		
		this.sessionFactory=sessionFactory;
			
		}

		public boolean saveUser(User user)
		{
			
			Session session=sessionFactory.openSession();
			session.saveOrUpdate(user);
			Transaction tx=session.beginTransaction();
			tx.commit();
			return true;
			
			
			
		}
		@SuppressWarnings("deprecation")
		@Transactional
		public User get(String email) {
			Criteria c = sessionFactory.getCurrentSession().createCriteria(User.class);
			c.add(Restrictions.eq("email", email));

			@SuppressWarnings("unchecked")
			List<User> listUser = (List<User>) c.list();

			if (listUser != null && !listUser.isEmpty()) {
				return listUser.get(0);
			} else {
				return null;
			}

		}
	}