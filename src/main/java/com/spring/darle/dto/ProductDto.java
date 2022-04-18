package com.spring.darle.dto;

import lombok.Data;

@Data
public class ProductDto {

  int pnum, size_number, cnum, product_amount, inum;
  String product_number, product_name, price, size, color, image_url;
}
