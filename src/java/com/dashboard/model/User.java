/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author pc
 */
@Entity
@Table(name="user",catalog="dashboard")
public class User {
    
    private String username;
    private String password;
    
    public User(){
        
    }
    public User(String username,String password){
        this.username = username;
        this.username = username;
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="username",unique=true,nullable=false)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    @Column(name="password",unique=false,nullable=false)
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
}
