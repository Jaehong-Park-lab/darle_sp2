package com.spring.darle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

  @Autowired


  @GetMapping("admin/productRegistration")
  public String getProductRegistration() {

    return "admin/product_registration";
  }

  @PostMapping("admin/productRegistration")
  public String writeProductRegistration() {



    return "redirect:/admin/productRegistration";
  }
}
