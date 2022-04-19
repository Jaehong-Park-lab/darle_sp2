package com.spring.darle.controller;

import com.spring.darle.dto.product.ProductDto;
import com.spring.darle.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

  @Autowired
  private AdminService adminService;

  @GetMapping("admin/productRegistration")
  public String getProductRegistration() {

    return "admin/product_registration";
  }

  @PostMapping("admin/productRegistration")
  public String writeProductRegistration(ProductDto pDto) {

    adminService.basic(pDto);
    adminService.color(pDto);
    adminService.size(pDto);

    return "redirect:/admin/productRegistration";
  }
}
