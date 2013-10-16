/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.service;

import com.dashboard.dao.UserDao;
import com.dashboard.model.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author pc
 */
@Service("userService")
@Transactional(propagation = Propagation.SUPPORTS,readOnly=true)
public class UserService {
    @Autowired
    private UserDao userDao;
    
     public List<User> checkifExists(String username, String password){
        return userDao.checkForUser(username, password);
    }
     //public List<User> getRoleId(List<User> userData){
     //    return userDao.checkForRoleId(userData);
     //}

}
