package com.klef.jfsd.springboot.model;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private int age;
    private String disease;
    private String date;
    private String contact;
    private String status; // E.g., "Pending", "Approved", "Completed"


    // Constructors, getters, and setters
    public Appointment() {}

    public Appointment(String name, int age, String disease, String date, String contact) {
        this.name = name;
        this.age = age;
        this.disease = disease;
        this.date = date;
        this.contact = contact;
    }

    // Getters and setters
}