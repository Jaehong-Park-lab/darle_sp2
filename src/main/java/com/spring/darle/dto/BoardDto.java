package com.spring.darle.dto;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.sql.Date;

@Data
@Component
public class BoardDto {

	int page_number;
	String title, id, detail, category, file_name;
	Date writing_date;
}
