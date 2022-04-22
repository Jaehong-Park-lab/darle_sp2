package com.spring.darle.dao;

import com.spring.darle.vo.PagingVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.darle.dto.BoardDto;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String nameSpace = "mapper.board";

	/**
	 * 글쓰기
	 */
	public int insert(BoardDto dto) {

		return sqlSession.insert(nameSpace + ".write", dto);
	}

	/**
	 * 글 삭제
	 */
	public void delete(int page_number) {

		sqlSession.delete(nameSpace + ".delete", page_number);
	}

	/**
	 * 게시글 리스트
	 */
	public List<Map<String, Object>> select() {
		List<Map<String, Object>> selectList = new ArrayList<>();

		return sqlSession.selectList(nameSpace + ".select");
	}

	/**
	 * 총 게시글 수
	 */
	public int getTotalCount() {

		return sqlSession.selectOne(nameSpace + ".getTotalCount");
	}


	public List<Map<String, Object>> selectBoard(PagingVo vo) {

		return sqlSession.selectList(nameSpace + ".countBoard");
	}

	public List<Map<String, BoardDto>> getBoardList(PagingVo vo) {

		return sqlSession.selectList(nameSpace + ".selectBoard", vo);
	}

	public BoardDto getBoardContent(int page_number) {

		return sqlSession.selectOne(nameSpace + ".getBoardContent", page_number);
	}

	public void boardUpdate(BoardDto dto) {

		sqlSession.update(nameSpace + ".boardUpdate", dto);
	}

	public List<Map<String, BoardDto>> getSearch(Map map) {
		System.out.println(sqlSession.selectList(nameSpace + ".search", map));

		return sqlSession.selectList(nameSpace + ".search", map);
	}
}
