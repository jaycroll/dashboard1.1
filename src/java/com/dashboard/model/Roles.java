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
@Table(name="roles",catalog="dashboard")
public class Roles {
    private int roleId;
    private String rolename;
    private int department_id;
    
    public Roles(){
        
    }
    
    public Roles(int roleId,String rolename,int department_id){
        this.roleId = roleId;
        this.rolename = rolename;
        this.department_id = department_id;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="roleid",unique=true,nullable=false)
    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
    @Column(name="rolename",unique=false,nullable=false)
    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
    @Column(name="department_id",unique=false,nullable=false)
    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }
    
}
