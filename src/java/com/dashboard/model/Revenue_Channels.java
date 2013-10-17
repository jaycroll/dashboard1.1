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
@Table(name="revenue_channels",catalog="dashboard")
public class Revenue_Channels {
    private int revenueChannelId;
    private String revenueChannelName;
    private String revenueChannelGroup;
    private String automated;
    private String appName;
    
    public Revenue_Channels(){
        
    }
    
    public Revenue_Channels(int revenueChannelId,String revenueChannelName,
            String revenueChannelGroup,String automated,String appName){
        this.revenueChannelId = revenueChannelId;
        this.revenueChannelName = revenueChannelName;
        this.revenueChannelGroup = revenueChannelGroup;
        this.automated = automated;
        this.appName = appName;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="channel_id",unique=true,nullable=false)
    public int getRevenueChannelId() {
        return revenueChannelId;
    }

    public void setRevenueChannelId(int revenueChannelId) {
        this.revenueChannelId = revenueChannelId;
    }
    @Column(name="channel_name",unique=false,nullable=false)
    public String getRevenueChannelName() {
        return revenueChannelName;
    }

    public void setRevenueChannelName(String revenueChannelName) {
        this.revenueChannelName = revenueChannelName;
    }
    @Column(name="channel_group",unique=false,nullable=false)
    public String getRevenueChannelGroup() {
        return revenueChannelGroup;
    }
    public void setRevenueChannelGroup(String revenueChannelGroup) {
        this.revenueChannelGroup = revenueChannelGroup;
    }
    @Column(name="automated",unique=false,nullable=false)
    public String getAutomated() {
        return automated;
    }
    public void setAutomated(String automated) {
        this.automated = automated;
    }
    @Column(name="appname",unique=false,nullable=true)
    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }
    
}
