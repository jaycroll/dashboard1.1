/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.service;
import com.dashboard.dao.RolesPrivilegesDao;
import com.dashboard.model.RolesPrivileges;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
/**
 *
 * @author pc
 */
@Service("rolesPrivilegesService")
@Transactional(propagation = Propagation.SUPPORTS,readOnly=true)
public class RolesPrivilegesService {
    @Autowired
    private RolesPrivilegesDao rolesPrivilegesDao;
    
    public List<RolesPrivileges> getPrivilege(int roleid){
        return null;
    }
}
