package com.spring.darle.dao;

import com.spring.darle.dto.product.ColorDto;
import com.spring.darle.dto.product.ProductDto;
import com.spring.darle.dto.product.SizeDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Repository
public class AdminDao {

  @Autowired
  private SqlSessionTemplate sqlSession;

  private static String nameSpace = "mapper.admin";

  public void insertProduct(ProductDto pDto) {
    sqlSession.insert(nameSpace + ".productInsert", pDto);
  }

  public void insertColor(ColorDto cDto, String[] colors) {

//    for (String color : colors) {
//      cDto.setColor(color);
//      sqlSession.insert(nameSpace + ".colorInsert", cDto);
//    }

    sqlSession.insert(nameSpace + ".colorInsert", cDto);
  }

  public void insertSize(SizeDto sDto) {
    sqlSession.insert(nameSpace + ".sizeInsert", sDto);
  }
}
