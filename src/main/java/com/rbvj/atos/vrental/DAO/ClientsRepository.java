/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbvj.atos.vrental.DAO;

import com.rbvj.atos.vrental.entity.Clients;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Benja
 */
public interface ClientsRepository extends JpaRepository<Clients, String> {
    
}
