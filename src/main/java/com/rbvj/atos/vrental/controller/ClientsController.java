/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbvj.atos.vrental.controller;

import com.rbvj.atos.vrental.DTO.ClientsDTO;
import com.rbvj.atos.vrental.entity.Clients;
import com.rbvj.atos.vrental.service.ClientsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Benja
 */

@Controller
@RequestMapping("/clients")
public class ClientsController {
    
    @Autowired
    private ClientsService clientsService;
    
    @GetMapping(value = "/create")
    public String profile(Model model) {
        model.addAttribute("client", new ClientsDTO());
        return "clientcreate";
    }
    
    @GetMapping(value = "/")
    public String showList(Model model) {
        List<Clients> listaClientes = clientsService.getAll();
        /*for(int i=0; i<listaClientes.size(); i++) {
            System.out.println("Username: "+listaClientes.get(i).getUsername());
            System.out.println("\n");
            System.out.println("\n");
        }*/
        for (Clients listaCliente : listaClientes) {
            System.out.println("Username: "+listaCliente.getUsername());
        }
        model.addAttribute("listaClientes", listaClientes);
        return "clients";
    }
    
    @PostMapping(value="save")
    public ModelAndView save(ClientsDTO client, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return new ModelAndView("clientscreate");
        }
        clientsService.save(client);
        return new ModelAndView("redirect:/clients/");
    }
}
