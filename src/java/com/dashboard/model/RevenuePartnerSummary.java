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
/**
 *
 * @author pc
 */

public class RevenuePartnerSummary {
    private int channelId;
    private Date revenueDate;
    private float amount;
    private String partnername;
    private String revenueType;
    
    public RevenuePartnerSummary(){
        
    }
    public RevenuePartnerSummary(int channelId, Date revenueDate,float amount,
            String partnername, String revenueType){
        this.channelId = channelId;
        this.revenueDate = revenueDate;
        this.amount = amount;
        this.partnername = partnername;
        this.revenueType = revenueType;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="channel_id",unique=true,nullable=false)

    public int getChannelId() {
        return channelId;
    }

    public void setChannelId(int channelId) {
        this.channelId = channelId;
    }
    @Column(name="revenue_date",unique=false,nullable=false)
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
    @Column(name="partnername",unique=false,nullable=false)
    public String getPartnername() {
        return partnername;
    }

    public void setPartnername(String partnername) {
        this.partnername = partnername;
    }
    @Column(name="revenue_type",unique=false,nullable=false)
    public String getRevenueType() {
        return revenueType;
    }

    public void setRevenueType(String revenueType) {
        this.revenueType = revenueType;
    }
    
}


