package com.klef.jfsd.springboot.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.service.AppointmentService;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/view-appointments")
    public String viewAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "viewAppointments";
    }
    @GetMapping("/viewappointment")
    public String viewAppointments1(Model model) {
        // Add data to the model if needed
        return "viewappointment"; // This should match the view file name (without extension)
    }
    
}