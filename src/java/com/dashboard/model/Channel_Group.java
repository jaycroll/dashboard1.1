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
@Table(name="channel_group",catalog="dashboard")
public class Channel_Group {
    
    private int channelgroupid;
    private String channelgroupname;
    private String category;
    
    public Channel_Group(){
        
    }
    
    public Channel_Group(int channelgroupid,String channelgroupname,String category){
        this.channelgroupid = channelgroupid;
        this.channelgroupname = channelgroupname;
        this.category = category;
    }
    
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="channel_group_id",unique=true,nullable=false)
    public int getChannelgroupid() {
        return channelgroupid;
    }
    
    public void setChannelgroupid(int channelgroupid) {
        this.channelgroupid = channelgroupid;
    }
    @Column(name="channel_group_name",unique=false,nullable=false)
    public String getChannelgroupname() {
        return channelgroupname;
    }

    public void setChannelgroupname(String channelgroupname) {
        this.channelgroupname = channelgroupname;
    }
    @Column(name="category",unique=false,nullable=false)
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    
}
