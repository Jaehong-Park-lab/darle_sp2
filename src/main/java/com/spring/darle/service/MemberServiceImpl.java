package com.spring.darle.service;

import com.spring.darle.dao.MemberDao;
import com.spring.darle.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberDao memberDao;

    @Override
    public void postJoin(MemberDto dto) {
        memberDao.insert(dto);
    }
    
    @Override
    public MemberDto postLogin(MemberDto dto) {

    	return memberDao.select(dto);
    }
}
