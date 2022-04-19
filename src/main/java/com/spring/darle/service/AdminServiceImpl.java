package com.spring.darle.service;

import com.spring.darle.dao.AdminDao;
import com.spring.darle.dto.product.ColorDto;
import com.spring.darle.dto.product.ProductDto;
import com.spring.darle.dto.product.SizeDto;
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
  public void color(ColorDto cDto) {
    adminDao.insertColor(cDto);
  }

  @Override
  public void size(SizeDto sDto) {
    adminDao.insertSize(sDto);
  }
}
