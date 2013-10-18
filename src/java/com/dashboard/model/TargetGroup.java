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

@Table(name="target_group",catalog="dashboard")//table name & database name
public class TargetGroup {
    private int targetGroupId;
    private String targetGroupName;
    
    public TargetGroup(){
        
    }
    public TargetGroup(int targetGroupId, String targetGroupName){
        this.targetGroupId = targetGroupId;
        this.targetGroupName = targetGroupName;
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="target_group_id",unique=true,nullable=false)
    public int getTargetGroupId() {
        return targetGroupId;
    }

    public void setTargetGroupId(int targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
    @Column(name="target_group_name",unique=false,nullable=false)
    public String getTargetGroupName() {
        return targetGroupName;
    }

    public void setTargetGroupName(String targetGroupName) {
        this.targetGroupName = targetGroupName;
    }
    
}

