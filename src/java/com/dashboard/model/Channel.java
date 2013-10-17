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
@Table(name="channel",catalog="dashboard")
public class Channel {
    
    private int channel_id;
    private String channel_name;
    private int channel_group_id;
    private String channel_automated;
    private int app_id;
    
    public Channel(){
        
    }
    
    public Channel(int channel_id,String channel_name,int channel_group_id, 
            String channel_automated, int app_id){
        this.channel_id = channel_id;
        this.channel_name = channel_name;
        this.channel_group_id = channel_group_id;
        this.channel_automated = channel_automated;
        this.app_id = app_id;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="channel_id",unique=true,nullable=false)
    public int getChannel_id() {
        return channel_id;
    }

    public void setChannel_id(int channel_id) {
        this.channel_id = channel_id;
    }
    @Column(name="channel_name",unique=false, nullable=false)
    public String getChannel_name() {
        return channel_name;
    }

    public void setChannel_name(String channel_name) {
        this.channel_name = channel_name;
    }
    @Column(name="channel_group_id",unique=false,nullable=false)
    public int getChannel_group_id() {
        return channel_group_id;
    }

    public void setChannel_group_id(int channel_group_id) {
        this.channel_group_id = channel_group_id;
    }
    @Column(name="channel_automated",unique=false,nullable=false)
    public String getChannel_automated() {
        return channel_automated;
    }

    public void setChannel_automated(String channel_automated) {
        this.channel_automated = channel_automated;
    }
    @Column(name="app_id",unique=false,nullable=false)
    public int getApp_id() {
        return app_id;
    }

    public void setApp_id(int app_id) {
        this.app_id = app_id;
    }
    
}
