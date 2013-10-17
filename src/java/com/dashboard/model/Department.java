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
@Table(name="department",catalog="dashboard")
public class Department {
    private int departmentId;
    private String departmentName;
    
    public Department(){
        
    }
    
    public Department(int departmentId,String departmentName){
        this.departmentId = departmentId;
        this.departmentName = departmentName;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="department_id",unique=true,nullable=false)
    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }
    @Column(name="department_name",unique=false,nullable=false)
    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
    
}
