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
@Table(name="privileges",catalog="dashboard")
public class Privileges {
    private int privilegeId;
    private String privilege;
    
    public Privileges(){
        
    }
    public Privileges(int privilegeId,String privilege){
       this.privilegeId = privilegeId;
       this.privilege = privilege;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="privilegeid",unique=true,nullable=false)
    public int getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(int privilegeId) {
        this.privilegeId = privilegeId;
    }
    @Column(name="privilege",unique=false,nullable=true)
    public String getPrivilege() {
        return privilege;
    }

    public void setPrivilege(String privilege) {
        this.privilege = privilege;
    }
    
}
