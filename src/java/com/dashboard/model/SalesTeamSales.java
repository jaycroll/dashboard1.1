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
@Table(name="sales_team_sales",catalog="dashboard")
public class SalesTeamSales {
    private Date revenueDate;
    private float amount;
    private String revenueType;
    private String salesType;
    private int areaid;
    private int territoryid;
    
    public SalesTeamSales(){
        
    }
    public SalesTeamSales(Date revenueDate,float amount,String revenueType, String salesType,
            int areaid,int territoryid){
        this.revenueDate = revenueDate;
        this.amount = amount;
        this.revenueType = revenueType;
        this.salesType = salesType;
        this.areaid = areaid;
        this.territoryid = territoryid;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="revenue_Date",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getRevenueDate() {
        return revenueDate;
    }

    public void setRevenueDate(Date revenueDate) {
        this.revenueDate = revenueDate;
    }
    @Column(name="amount",unique=false,nullable=false)
    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
    @Column(name="revenue_type",unique=false,nullable=false)
    public String getRevenueType() {
        return revenueType;
    }
    public void setRevenueType(String revenueType) {
        this.revenueType = revenueType;
    }
    @Column(name="sales_type",unique=false,nullable=false)
    public String getSalesType() {
        return salesType;
    }

    public void setSalesType(String salesType) {
        this.salesType = salesType;
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
    
    
}
