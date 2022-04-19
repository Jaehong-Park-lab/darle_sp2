package com.spring.darle.service;

import com.spring.darle.dto.BoardDto;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

public interface MainService {

  public List<Map<String, BoardDto>> getNoticeList();
}
