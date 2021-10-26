/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbvj.atos.vrental.controller;

import com.rbvj.atos.vrental.entity.Clients;
import com.rbvj.atos.vrental.service.ClientsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Benja
 */

@Controller
public class HomeController {
    
    @Autowired
    private ClientsService clientsService;
    
    @GetMapping(value="/")
    public String home(Model model) {
        List<Clients> clients = clientsService.getAll();
        model.addAttribute("clients", clients);
        model.addAttribute("name", "Benja");
        return "home";
    }
}
