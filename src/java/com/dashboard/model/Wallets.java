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
@Table(name="wallets",catalog="dashboard")
public class Wallets {
    
    private String name;
    private String wallet_type;
    
    public Wallets(){
        
    }
    public Wallets(String name, String wallet_type){
        this.name = name;
        this.wallet_type = wallet_type;
    }
    @Id @GeneratedValue(strategy=IDENTITY)
    @Column(name="name",unique=false,nullable=false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name="wallet_type",unique=false,nullable=false)
    public String getWallet_type() {
        return wallet_type;
    }

    public void setWallet_type(String wallet_type) {
        this.wallet_type = wallet_type;
    }
    
}
