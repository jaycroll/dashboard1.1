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
@Table(name="role_privileges",catalog="dashboard")
public class RolesPrivileges {
    private int roleid;
    private int moduleid;
    private String privilegeMode;
    private String privilegeStatus;
    
    public RolesPrivileges(){
        
    }
    public RolesPrivileges(int roleid, int moduleid,String privilegeMode, String privilegeStatus){
        this.roleid = roleid;
        this.moduleid = moduleid;
        this.privilegeMode = privilegeMode;
        this.privilegeStatus = privilegeStatus;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="roleid",unique=false,nullable=false)
    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }
    @Column(name="moduleid",unique=false,nullable=false)
    public int getModuleid() {
        return moduleid;
    }

    public void setModuleid(int moduleid) {
        this.moduleid = moduleid;
    }
    @Column(name="privilege_mode",unique=false,nullable=false)
    public String getPrivilegeMode() {
        return privilegeMode;
    }
    
    public void setPrivilegeMode(String privilegeMode) {
        this.privilegeMode = privilegeMode;
    }
    @Column(name="privilege_status",unique=false,nullable=false)
    public String getPrivilegeStatus() {
        return privilegeStatus;
    }

    public void setPrivilegeStatus(String privilegeStatus) {
        this.privilegeStatus = privilegeStatus;
    }
    
}
    