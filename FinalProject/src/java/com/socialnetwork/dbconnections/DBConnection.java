/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialnetwork.dbconnections;

import org.springframework.context.annotation.Scope;

/**
 *
 * @author NCODEIT
 */
@Scope(value = "singleton")
public class DBConnection {

    private DBConnection() {
        System.out.println("in DBConnection of singleton");
    }
}
