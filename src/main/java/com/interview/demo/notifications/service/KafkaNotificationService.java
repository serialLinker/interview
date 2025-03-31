package com.interview.demo.notifications.service;

import com.interview.demo.users.entity.User;
import org.springframework.stereotype.Service;

@Service
public class KafkaNotificationService {

    public void notifyUserCreation(User user) {
        System.out.println("kafka notifié pour la creation du user " + user.getEmail());
    }
}
