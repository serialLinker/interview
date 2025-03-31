package com.interview.demo.products.client;

import com.interview.demo.products.dto.Product;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

@HttpExchange("/products")
public interface ProductClient {

    @GetExchange("/{id}")
    Product getById(@PathVariable("id") Long id);

}
