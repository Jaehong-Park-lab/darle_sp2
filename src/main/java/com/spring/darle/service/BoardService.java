package com.spring.darle.service;

import com.spring.darle.dto.BoardDto;
import com.spring.darle.vo.PagingVo;

import java.util.List;
import java.util.Map;

public interface BoardService {

	public List<Map<String, Object>> getList();

	public void getWrite(BoardDto dto);

	public void delete(int page_number);

	public List<Map<String, BoardDto>> getBoardList(PagingVo vo);

	public int getTotalCount();

	public BoardDto getBoardContent(int page_number);

	public void boardUpdate(BoardDto dto);

	public List<Map<String, BoardDto>> getSearch(Map map);
}
