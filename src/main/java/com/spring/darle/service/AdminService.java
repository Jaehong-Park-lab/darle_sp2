package com.spring.darle.service;

import com.spring.darle.dto.product.ProductDto;

public interface AdminService {

  public void basic(ProductDto pDto);
  public void color(ProductDto pDto);
  public void size(ProductDto pDto);

}
