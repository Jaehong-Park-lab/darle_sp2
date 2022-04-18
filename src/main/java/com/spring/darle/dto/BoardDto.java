package com.spring.darle.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class BoardDto {

	int page_number;
	String title, id, detail, category, file_name;
	Date writing_date;
}
