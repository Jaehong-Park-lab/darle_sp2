package com.spring.darle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

  @GetMapping("/header")
  public String getHeader() {

    return "/main/header";
  }

  @GetMapping("/")
  public String getIndex() {

    return "/main/index";
  }

  @GetMapping("/footer")
  public String getFooter() {

    return "/main/footer";
  }
}
