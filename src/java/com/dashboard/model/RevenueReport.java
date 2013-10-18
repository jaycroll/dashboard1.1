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
import java.util.Date;
import javax.persistence.Temporal;
/**
 *
 * @author pc
 */
@Entity
@Table(name="revenue_report",catalog="dashboard")
public class RevenueReport {
    
    private int revenueChannelId;    
    private Date revenueDate;
    private Float amount;
    private String revenueType;
    private String reference;
    
    public RevenueReport(){
        
    }
    public RevenueReport(int revenueChannelId, Date revenueDate,Float amount, 
            String revenueType,String reference){
        this.revenueChannelId = revenueChannelId;
        this.revenueDate = revenueDate;
        this.amount = amount;
        this.revenueType = revenueType;
        this.reference = reference;
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="channel_id",unique=true,nullable=false)
    public int getRevenueChannelId() {
        return revenueChannelId;
    }

    public void setRevenueChannelId(int revenueChannelId) {
        this.revenueChannelId = revenueChannelId;
    }
    @Column(name="revenue_date",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getRevenueDate() {
        return revenueDate;
    }

    public void setRevenueDate(Date revenueDate) {
        this.revenueDate = revenueDate;
    }
    @Column(name="amount",unique=false,nullable=false)
    public Float getAmount() {
        return amount;
    }

    public void setAmount(Float amount) {
        this.amount = amount;
    }
    @Column(name="revenue_type",unique=false,nullable=false)
    public String getRevenueType() {
        return revenueType;
    }

    public void setRevenueType(String revenueType) {
        this.revenueType = revenueType;
    }
    @Column(name="reference",unique=false,nullable=false)
    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }
    
}
