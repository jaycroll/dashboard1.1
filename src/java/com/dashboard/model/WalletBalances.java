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
@Table(name="wallet_balances")
public class WalletBalances {
    private String name;
    private Date balanceDate;
    private float balance;
    
    public WalletBalances(){
        
    }
    
   public WalletBalances(String name, Date balanceDate, float balance){
       this.name = name;
       this.balanceDate = balanceDate;
       this.balance = balance;
   }
   
   @Id @GeneratedValue(strategy=IDENTITY)
   @Column(name="name",unique=false,nullable=false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name="balance_date",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getBalanceDate() {
        return balanceDate;
    }

    public void setBalanceDate(Date balanceDate) {
        this.balanceDate = balanceDate;
    }
    @Column(name="balance",unique=false,nullable=false)
    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }
   
}
