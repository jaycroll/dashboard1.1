/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.dao;

import com.dashboard.model.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author pc
 */
@Repository("userDao")
public class UserDao extends Dao<User>{
        
    public UserDao(){
        super(User.class);
    }
    
    public List<User> checkForUser(String username,String password){
        Criteria user = getCurrentSession().createCriteria(User.class);
        user.add(Restrictions.eq("username",username));
        user.add(Restrictions.eq("password",password));
        return checkEntry(user);
        
    }
    
    
}