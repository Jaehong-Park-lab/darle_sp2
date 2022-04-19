package com.spring.darle.dao;

import com.spring.darle.dto.BoardDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class MainDao {

  @Autowired
  private SqlSessionTemplate sqlSession;

  private static String nameSpace = "mapper.board";

  public List<Map<String, BoardDto>> getNoticeList() {

    return sqlSession.selectList(nameSpace + ".mainNoticeList");
  }
}
