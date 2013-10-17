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
@Table(name="modules",catalog="dashboard")
public class Modules {
    
    private int moduleId;
    private String moduleName;
    
    public Modules(){
        
    }
    public Modules(int moduleId,String moduleName){
        this.moduleId = moduleId;
        this.moduleName = moduleName;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="moduleid",unique=true,nullable=false)
    public int getModuleId() {
        return moduleId;
    }

    public void setModuleId(int moduleId) {
        this.moduleId = moduleId;
    }
    @Column(name="modulename",unique=true,nullable=false)
    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }
    
}
