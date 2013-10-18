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
@Table(name="targets",catalog="dashboard")
public class Targets {
  private int targetId;
  private Date targetDate;
  private float targetAmount;
  private int targetGroupId;
  private int userid;
  private int departmentid;
  private Date targetDateCreated;
  public Targets(){
      
  }
  public Targets(int targetId,Date targetDate,float targetAmount,
          int targetGroupId,int userid,int departmentid,Date targetDateCreated){
      this.targetId = targetId;
      this.targetDate = targetDate;
      this.targetAmount = targetAmount;
      this.targetGroupId = targetGroupId;
      this.userid = userid;
      this.departmentid = departmentid;
      this.targetDateCreated = targetDateCreated;
    }
  
  @Id @GeneratedValue(strategy=IDENTITY)
  @Column(name="target_id",unique=true,nullable=false)
    public int getTargetId() {
        return targetId;
    }

    public void setTargetId(int targetId) {
        this.targetId = targetId;
    }
    @Column(name="target_date",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(Date targetDate) {
        this.targetDate = targetDate;
    }
    @Column(name="target_amount",unique=false,nullable=false)
    public float getTargetAmount() {
        return targetAmount;
    }
    
    public void setTargetAmount(float targetAmount) {
        this.targetAmount = targetAmount;
    }
    @Column(name="target_group_id",unique=false,nullable=false)
    public int getTargetGroupId() {
        return targetGroupId;
    }

    public void setTargetGroupId(int targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
    @Column(name="userid",unique=false,nullable=false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
    @Column(name="department",unique=false,nullable=false)
    public int getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(int departmentid) {
        this.departmentid = departmentid;
    }
  
}
