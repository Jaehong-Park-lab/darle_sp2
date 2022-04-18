package com.spring.darle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

  @GetMapping("admin/productRegistration")
  public String getProductRegistration() {

    return "admin/product_registration";
  }
}
