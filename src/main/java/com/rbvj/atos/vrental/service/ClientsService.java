/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbvj.atos.vrental.service;

import com.rbvj.atos.vrental.DTO.ClientsDTO;
import com.rbvj.atos.vrental.entity.Clients;
import java.util.List;

/**
 *
 * @author Benja
 */
public interface ClientsService {
    
    List<Clients> getAll();
    void save(ClientsDTO clientsDTO);
}
