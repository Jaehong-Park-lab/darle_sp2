<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>글쓰기</title>
<link rel="stylesheet" type="text/css" href="/resources/css/darle.css">
<script type="text/javascript" src="/resources/js/darle.js"></script>
</head>
<body>
	<div class="write bsize">
		<section class="write-content">
			<h1>게시판</h1>
			<form name="boardForm" action="boardWrite" method="post" enctype="multipart/form-data">
				<table class="board_write">
					<tr>
						<th>카테고리</th>
						<td><select name="category">
							<option value="notice">공지사항</option>
						</select></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" id="title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="detail"></textarea></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<th><input type="file" name="file"></th>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="btn_style3"
								onclick="boardFormCheck()">등록완료</button>
							<button type="reset" class="btn_style3">다시쓰기</button>
							<a href="board">
								<button type="button" class="btn_style3">리스트</button>
						</a> <a href="/">
								<button type="button" class="btn_style3">홈으로</button>
						</a>
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>
