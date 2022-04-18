package com.spring.darle.service;

import com.spring.darle.dao.BoardDao;
import com.spring.darle.dto.BoardDto;
import com.spring.darle.vo.PagingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;

	@Override
	public void getWrite(BoardDto dto) {

		boardDao.insert(dto);
	}

	@Override
	public void delete(int page_number) {
		boardDao.delete(page_number);
	}

	@Override
	public List<Map<String, Object>> getList() {

		return boardDao.select();
	}

	@Override
	public List<Map<String, BoardDto>> getBoardList(PagingVo vo) {

		return boardDao.getBoardList(vo);
	}

	@Override
	public int getTotalCount() {

		return boardDao.getTotalCount();
	}

	@Override
	public BoardDto getBoardContent(int page_number) {

		return boardDao.getBoardContent(page_number);
	}

	@Override
	public void boardUpdate(BoardDto dto) {

		boardDao.boardUpdate(dto);
	}

	@Override
	public List<Map<String, BoardDto>> getSearch(Map map) {

		return boardDao.getSearch(map);
	}
}
