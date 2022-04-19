package com.spring.darle.service;

import com.spring.darle.dao.AdminDao;
import com.spring.darle.dto.product.ProductDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

  @Autowired
  private AdminDao adminDao;

  @Override
  public void basic(ProductDto pDto) {
    adminDao.insertProduct(pDto);
  }

  @Override
  public void color(ProductDto pDto) {
    adminDao.insertColor(pDto);
  }

  @Override
  public void size(ProductDto pDto) {
    adminDao.insertSize(pDto);
  }
}
