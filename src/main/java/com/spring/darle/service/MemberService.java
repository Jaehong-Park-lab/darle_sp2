package com.spring.darle.service;

import com.spring.darle.dao.MemberDao;
import com.spring.darle.dto.MemberDto;

public interface MemberService {
    public void postJoin(MemberDto dto);
    
    public MemberDto postLogin(MemberDto dto);

}
