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
public class SalesuserBridge {
    private int userid;
    private int agentid;
    private int salesuserid;
   
    public SalesuserBridge(){
        
    }
    public SalesuserBridge(int userid,int agentid,int salesuserid){
        this.userid = userid;
        this.agentid = agentid;
        this.salesuserid = salesuserid;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="userid",unique=false,nullable=false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
    @Column(name="agentid",unique=false,nullable=false)
    public int getAgentid() {       
        return agentid;
    }

    public void setAgentid(int agentid) {
        this.agentid = agentid;
    }
    @Column(name="salesuserid",unique=false,nullable=false)
    public int getSalesuserid() {
        return salesuserid;
    }

    public void setSalesuserid(int salesuserid) {
        this.salesuserid = salesuserid;
    }
    
}
