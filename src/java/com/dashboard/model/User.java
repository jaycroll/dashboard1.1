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
import java.util.Date;
import javax.persistence.Temporal;

/**
 *
 * @author pc
 */
@Entity
@Table(name="user",catalog="dashboard")
public class User {
    
    private String username;
    private String password;
    private int roleid;
    private int userid;
    private String firstname;
    private String lastname;
    private String email;
    private int mobile;
    private int createdby;
    private Date datecreated;
    private Date datehired;
    private Date birthdate;
    
    public User(){
        
    }
    
    public User(int userid,String username,String password,String firstname,String lastname,
            String email,int mobile,int createdby,Date datecreated,Date datehired,
            Date birthdate,int roleid){
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.roleid = roleid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.mobile = mobile;
        this.createdby = createdby;
        this.datecreated = datecreated;
        this.datehired = datehired;
        this.birthdate = birthdate;
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
    
    @Column(name="roleid",unique=false,nullable=false)
    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }
    @Column(name="userfirstname",unique=false,nullable=false)
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    @Column(name="userlastname",unique=false,nullable=false)
    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    @Column(name="email_address",unique=false,nullable=false)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    @Column(name="mobile",unique=false,nullable=false)
    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }
    @Column(name="createdby",unique=false,nullable=false)
    public int getCreatedby() {
        return createdby;
    }

    public void setCreatedby(int createdby) {
        this.createdby = createdby;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    @Column(name="createddate",unique=false,nullable=false)
    public Date getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }
    @Temporal(javax.persistence.TemporalType.DATE)
    @Column(name="hireddate",unique=false,nullable=false)
    public Date getDatehired() {
        return datehired;
    }

    public void setDatehired(Date datehired) {
        this.datehired = datehired;
    }
    @Temporal(javax.persistence.TemporalType.DATE)
    @Column(name="birthdate",unique=false,nullable=false)
    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }
    
    


}
