package com.interview.demo.users.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "fwk_permissions")
public class Permission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String category;
    private String action;
}
