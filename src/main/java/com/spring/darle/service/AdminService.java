package com.spring.darle.service;

import com.spring.darle.dto.product.ColorDto;
import com.spring.darle.dto.product.ProductDto;
import com.spring.darle.dto.product.SizeDto;

public interface AdminService {

  public void basic(ProductDto pDto);
  public void color(ColorDto cDto);
  public void size(SizeDto sDto);

}
