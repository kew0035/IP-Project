package com.example.controller;

import com.example.database.StaticDatabase;
import com.example.models.Client;
import com.example.viewmodels.ClientViewModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ClientController {

    private static List<Client> clients = new ArrayList<>();

    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("client", new Client());
        return "client/register";
    }

    @PostMapping("/register")
    public String processRegisterForm(@ModelAttribute("client") Client client, Model model) {
        if (client.getName().isEmpty() || client.getEmail().isEmpty()) {
            model.addAttribute("error", "All fields are required!");
            return "client/register";
        }
        clients.add(client);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "client/login";
    }

    @PostMapping("/login")
    public String processLoginForm(@RequestParam String email, @RequestParam String password, Model model) {
        for (Client client : clients) {
            if (client.getEmail().equals(email) && client.getPassword().equals(password)) {
                model.addAttribute("client", client);
                return "client/profile";
            }
        }
        model.addAttribute("error", "Invalid credentials!");
        return "client/login";
    }
    
    @GetMapping("/profile")
    public String showProfile(Model model) {
        // Assuming the client is fetched from the database or list
        Client client = StaticDatabase.clients.get(0); // Example only
        double bmi = calculateBMI(client); // Example calculation
        ClientViewModel viewModel = new ClientViewModel(client.getName(), client.getEmail(), bmi);
        model.addAttribute("clientViewModel", viewModel);
        return "client/profile";
    }

    private double calculateBMI(Client client) {
        if (client.getHeight() <= 0 || client.getWeight() <= 0) {
            throw new IllegalArgumentException("Height and weight must be positive values.");
        }
        return client.getWeight() / Math.pow(client.getHeight(), 2);
    }


}

