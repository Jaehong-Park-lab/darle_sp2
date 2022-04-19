package com.spring.darle.dto.product;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class SizeDto {

  String size, product_number;
  int snum;
}
