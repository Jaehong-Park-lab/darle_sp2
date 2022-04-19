package com.spring.darle.service;

import com.spring.darle.controller.MainController;
import com.spring.darle.dao.MainDao;
import com.spring.darle.dto.BoardDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

@Service
public class MainServiceImpl implements MainService {

  @Autowired
  private MainDao mainDao;

  @Override
  public List<Map<String, BoardDto>> getNoticeList() {

    return mainDao.getNoticeList();
  }
}
