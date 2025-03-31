package com.interview.demo.users.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Entity
@Table(name="user_permission")
@Getter
@Setter
public class UserPermission {

    @EmbeddedId
    private UserPermissionId id;

    @Embeddable
    @Getter
    @Setter
    public static class UserPermissionId implements Serializable {
        private @ManyToOne User user;
        private @ManyToOne Permission permission;
    }
}
