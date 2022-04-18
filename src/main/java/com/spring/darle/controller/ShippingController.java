package com.spring.darle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShippingController {

  @GetMapping("/basket")
  public String getBasket() {

    return "/shipping/basket";
  }

  @GetMapping("/ordercomplete")
  public String getOrderComplete() {

    return "/shipping/ordercomplete";
  }

  @GetMapping("/shipping_address")
  public String getShippingAddress() {

    return "/shipping/shipping_address";
  }
}
