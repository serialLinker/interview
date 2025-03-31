package com.interview.demo.users.web;

import com.interview.demo.notifications.service.KafkaNotificationService;
import com.interview.demo.users.entity.User;
import com.interview.demo.users.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserResource {

    private final UserRepository userRepository;
    private final KafkaNotificationService kafkaNotificationService;

    @GetMapping
    public List<User> getUsers() {
        final var users = userRepository.findAll();
        log.info("{}", users);
        return users;
    }

    @GetMapping("/create")
    public User saveUserWithPermission(User user) {
        //TODO pourquoi user est null ?
        kafkaNotificationService.notifyUserCreation(user);
        userRepository.save(user);
        return user;
    }
}
