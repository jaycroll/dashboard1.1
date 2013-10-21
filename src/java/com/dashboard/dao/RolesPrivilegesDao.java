/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.dao;

import com.dashboard.model.RolesPrivileges;
import java.util.List;
import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
/**
 *
 * 
 * @author pc
 */
@Repository("rolesPrivilegesDao")
public class RolesPrivilegesDao extends DashboardDao<RolesPrivileges> {
    
    private SessionFactory rolesprivilegesSession;
    public Session session;
    public RolesPrivilegesDao(){
        super(RolesPrivileges.class);
    }
    
   
}
