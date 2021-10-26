/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbvj.atos.vrental.service.impl;

import com.rbvj.atos.vrental.DAO.ClientsRepository;
import com.rbvj.atos.vrental.DTO.ClientsDTO;
import com.rbvj.atos.vrental.entity.Clients;
import com.rbvj.atos.vrental.service.ClientsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Benja
 */

@Service
public class ClientsServiceImpl implements ClientsService {

    @Autowired
    private ClientsRepository clientsRepository;
    
    @Override
    public List<Clients> getAll() {
        List<Clients> clients = clientsRepository.findAll();
        return clients;
    }

    @Override
    public void save(ClientsDTO clientsDTO) {
        Clients client = new Clients();
        client.setFirstname(clientsDTO.getFirstname());
        client.setLastname(clientsDTO.getLastname());
        client.setPhone(clientsDTO.getPhone());
        client.setUsername(clientsDTO.getFirstname() + "_" + clientsDTO.getLastname());
        clientsRepository.save(client);
    }
}