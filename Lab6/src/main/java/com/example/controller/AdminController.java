package com.example.controller;

import com.example.database.StaticDatabase;
import com.example.models.Client;
import com.example.models.Program;
import com.example.viewmodels.AdminViewModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static List<Program> programs = new ArrayList<>();
    private static List<Client> clients = new ArrayList<>(); // Shared with ClientController

    @GetMapping("/clients")
    public String showClientList(Model model) {
        model.addAttribute("clients", clients);
        return "admin/clientList";
    }

    @GetMapping("/program/add")
    public String showAddProgramForm(Model model) {
        model.addAttribute("program", new Program());
        return "admin/addProgram";
    }

    @PostMapping("/program/add")
    public String processAddProgramForm(@ModelAttribute("program") Program program, Model model) {
        if (program.getName().isEmpty() || program.getDescription().isEmpty()) {
            model.addAttribute("error", "All fields are required!");
            return "admin/addProgram";
        }
        programs.add(program);
        return "redirect:/admin/clients";
    }
    
    @GetMapping("/programs")
    public String showPrograms(Model model) {
        List<AdminViewModel> programViewModels = StaticDatabase.programs.stream()
            .map(program -> new AdminViewModel(program.getName(), program.getDescription(), program.getDuration()))
            .collect(Collectors.toList());
        model.addAttribute("programs", programViewModels);
        return "admin/programList";
    }


}
