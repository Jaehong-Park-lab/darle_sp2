package com.spring.darle.dto.product;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class ColorDto {

  int cnum;
  String product_number, color;
}
