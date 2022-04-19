package com.spring.darle.controller;

import com.spring.darle.dto.BoardDto;
import com.spring.darle.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class MainController {

  @Autowired
  private MainService mainService;

  @GetMapping("/header")
  public String getHeader() {

    return "/main/header";
  }

  @GetMapping("/")
  public String getIndex(Model model) {
    List<Map<String, BoardDto>> noticeList = mainService.getNoticeList();

    model.addAttribute("noticeList", noticeList);

    return "/main/index";
  }

  @GetMapping("/footer")
  public String getFooter() {

    return "/main/footer";
  }
}
