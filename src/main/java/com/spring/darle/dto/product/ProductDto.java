package com.spring.darle.dto.product;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class ProductDto {

  int pnum, price, product_amount;
  String product_number, product_name;
}
