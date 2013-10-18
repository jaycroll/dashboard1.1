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
@Table(name="wallet_transactions",catalog="dashboard")
public class WalletTransactions {
    private Date transactionDate;
    private String wallet_name;
    private float amount;
    private String appname;
    
    public WalletTransactions(){
        
    }
    public WalletTransactions(Date transactionDate,String wallet_name,float amount,
            String appname){
        this.transactionDate = transactionDate;
        this.wallet_name = wallet_name;
        this.amount = amount;
        this.appname = appname;
        
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="transactiondate",unique=false,nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(Date transactionDate) {
        this.transactionDate = transactionDate;
    }
    @Column(name="wallet_name",unique=false,nullable=false)
    public String getWallet_name() {
        return wallet_name;
    }

    public void setWallet_name(String wallet_name) {
        this.wallet_name = wallet_name;
    }
    @Column(name="amount",unique=false,nullable=false)
    public float getAmount() {
        return amount;
    }
    
    public void setAmount(float amount) {
        this.amount = amount;
    }
    @Column(name="appname",unique=false,nullable=false)
    public String getAppname() {
        return appname;
    }

    public void setAppname(String appname) {
        this.appname = appname;
    }
    
}
