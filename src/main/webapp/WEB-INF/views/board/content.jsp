<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>글내용</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/darle.css">
</head>
<body>
<div class="board_content bsize">
  <section class="board_content-wrap">
    <table>
      <tr>
        <th style="width: 10%">아이디</th>
        <td>
          ${content.id}
        </td>
      </tr>
      <tr>
        <th>등록일자</th>
        <td>
          ${content.writing_date}
        </td>
      </tr>
      <tr>
        <th>제목</th>
        <td>
          ${content.title}
        </td>
      </tr>
      <tr>
        <th>내용</th>
        <td style="height: 500px; font-size: 16px; scroll-behavior: auto; vertical-align: top">
          ${content.detail}
        </td>
      </tr>
      <tr>
        <td colspan="2" style="border: 0;">
          <button type="button" class="btn_style3" onclick="boardFormCheck()">리스트</button>
          <button type="button" class="btn_style3" onclick="location.href='/'">홈으로</button>
          <button type="button" class="btn_style3"
                  onclick="location.href='/boardUpdate?page_number=${content.page_number}'">수정하기
          </button>
          <button type="button" class="btn_style3" onclick="location.href='/boardDelete?page_number=${content.page_number}'">삭제하기</button>
        </td>
      </tr>
    </table>
  </section>
</div>
</body>
</html>
