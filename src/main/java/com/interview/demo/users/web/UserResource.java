package com.interview.demo.users.web;

import com.interview.demo.users.entity.User;
import com.interview.demo.users.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserResource {

    private final UserRepository userRepository;

    @GetMapping
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/get/{id}")
    public User getUser(@PathVariable Long id) {
        //TODO manque les permissions
        return userRepository.findById(id).orElseThrow();
    }

    @PostMapping("/create")
    public User saveUserWithPermission(User user) {
        //TODO pourquoi user est null ?
        return userRepository.save(user);
    }
}
