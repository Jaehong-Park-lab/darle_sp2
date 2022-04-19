package com.spring.darle.dto;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class MemberDto {

    String id, user_name, pass, email, address, grade, hp_num;
}
