package com.jtspringproject.JtSpringProject.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.sound.midi.Soundbank;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jtspringproject.JtSpringProject.models.User;


@Repository
public class userDao {
	@Autowired
    private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }
   @Transactional
    public List<User> getAllUser() {
        Session session = this.sessionFactory.getCurrentSession();
		List<User>  userList = session.createQuery("from CUSTOMER").list();
        return userList;
    }
    
    @Transactional
	public User saveUser(User user) {
		this.sessionFactory.getCurrentSession().saveOrUpdate(user);
		System.out.println("User added" + user.getId());
        return user;
	}
    
//    public User checkLogin() {
//    	this.sessionFactory.getCurrentSession().
//    }
    @Transactional
    public User getUser(String username,String password) {
    	Query query = sessionFactory.getCurrentSession().createQuery("from CUSTOMER where username = :username");
    	query.setParameter("username",username);
    	
    	try {
			User user = (User) query.getSingleResult();
			System.out.println(user.getPassword());
			if(password.equals(user.getPassword())) {
				return user;
			}else {		
				return new User();
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
			User user = new User();
			return user;
		}
    	
    }

	@Transactional
	public boolean userExists(String username) {
		Query query = sessionFactory.getCurrentSession().createQuery("from CUSTOMER where username = :username");
		query.setParameter("username",username);
		return !query.getResultList().isEmpty();
	}

	@Transactional
	public User getUserByUsername(String username) {
			Query query = sessionFactory.getCurrentSession().createQuery("from CUSTOMER where username = :username", User.class);
	        query.setParameter("username", username);
	        
	        try {
	            return (User) query.getSingleResult();
	        } catch (Exception e) {
	            System.out.println(e.getMessage());
	            return null; 
	        }
    	}
}