/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dashboard.model;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
/**
 *
 * @author pc
 */
@Entity
@Table(name="sales_revenue",catalog="dashboard")
public class SalesRevenue {
    
    private int orderid;
    private int agentid;
    private int areaid;
    private int territoryid;
    private float amount;
    private Date completeddate;
    
    public SalesRevenue(){
        
    }
    
    public SalesRevenue(int orderid, int agentid, int territoryid,
            float amount,Date completeddate){
        this.orderid = orderid;
        this.agentid = agentid;
        this.areaid = areaid;
        this.territoryid = territoryid;
        this.amount = amount;
        this.completeddate =  completeddate;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="orderid",unique=true,nullable=false)
    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }
    @Column(name="agentid",unique=false,nullable=false)
    public int getAgentid() {
        return agentid;
    }
    
    public void setAgentid(int agentid) {
        this.agentid = agentid;
    }
    @Column(name="areaid",unique=false,nullable=false)
    public int getAreaid() {
        return areaid;
    }

    public void setAreaid(int areaid) {
        this.areaid = areaid;
    }
    @Column(name="territoryid",unique=false,nullable=false)
    public int getTerritoryid() {
        return territoryid;
    }

    public void setTerritoryid(int territoryid) {
        this.territoryid = territoryid;
    }
    @Column(name="amount",unique=false,nullable=false)
    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
    @Column(name="completeddate",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getCompleteddate() {
        return completeddate;
    }

    public void setCompleteddate(Date completeddate) {
        this.completeddate = completeddate;
    }
    
}
