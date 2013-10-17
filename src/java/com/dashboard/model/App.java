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
@Table(name="app",catalog="dashboard")
public class App {
    
    private int app_id;
    private String app_name;
    
    public App(){
    
    }
    
    public App(int app_id,String app_name){
        this.app_id = app_id;
        this.app_name = app_name;
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="app_id",unique=true,nullable=false)
    public int getApp_id() {
        return app_id;
    }

    public void setApp_id(int app_id) {
        this.app_id = app_id;
    }
    
    @Column(name="app_name",unique=false,nullable=false)
    public String getApp_name() {
        return app_name;
    }

    public void setApp_name(String app_name) {
        this.app_name = app_name;
    }
    
}
