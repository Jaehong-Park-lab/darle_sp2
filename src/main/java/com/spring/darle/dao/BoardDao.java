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

	private static String namespace = "mapper.board";

	/**
	 * 글쓰기
	 */
	public int insert(BoardDto dto) {

		return sqlSession.insert(namespace + ".write", dto);
	}

	/**
	 * 글 삭제
	 */
	public void delete(int page_number) {

		sqlSession.delete(namespace + ".delete", page_number);
	}

	/**
	 * 게시글 리스트
	 */
	public List<Map<String, Object>> select() {
		List<Map<String, Object>> selectList = new ArrayList<>();

		return sqlSession.selectList(namespace + ".select");
	}

	/**
	 * 총 게시글 수
	 */
	public int getTotalCount() {

		return sqlSession.selectOne(namespace + ".getTotalCount");
	}


	public List<Map<String, Object>> selectBoard(PagingVo vo) {

		return sqlSession.selectList(namespace + ".countBoard");
	}

	public List<Map<String, BoardDto>> getBoardList(PagingVo vo) {

		return sqlSession.selectList(namespace + ".selectBoard", vo);
	}

	public BoardDto getBoardContent(int page_number) {

		return sqlSession.selectOne(namespace + ".getBoardContent", page_number);
	}

	public void boardUpdate(BoardDto dto) {

		sqlSession.update(namespace + ".boardUpdate", dto);
	}

	public List<Map<String, BoardDto>> getSearch(Map map) {
		System.out.println(sqlSession.selectList(namespace + ".search", map));
		return sqlSession.selectList(namespace + ".search", map);
	}
}
