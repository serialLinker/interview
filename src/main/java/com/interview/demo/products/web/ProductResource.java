package com.interview.demo.products.web;

import com.interview.demo.products.client.ProductClient;
import com.interview.demo.products.dto.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/products")
@RequiredArgsConstructor
public class ProductResource {

    private final ProductClient productClient;

    @GetMapping
    public List<Product> list(@RequestParam(required = true, value = "id") Set<Long> ids) {
        return ids.stream()
                .map(productClient::getById).toList();
    }
}
