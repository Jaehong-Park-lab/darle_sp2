<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="utf-8" %>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="shortcut icon" href="#">
  <link rel="stylesheet" href="/resources/css/darle.css">
  <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet">
  <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<form action="notice" method="get">
  <div class="notice container mt-3 bsize">
    <h2>공지사항</h2>
    <p>공지사항입니다.</p>
    <table class="notice-table-th table table-hover">
      <thead>
      <tr>
        <th style="width: 5%">번호</th>
        <th>제목</th>
        <th style="width: 7%">작성자</th>
        <th style="width: 9%">작성일</th>
        <th style="width: 6%">조회</th>
      </tr>
      </thead>
      <tbody>
      <%--게시물 리스트--%>
      <c:forEach var="blist" items="${viewAll}">
        <tr>
          <td class="title-number">${blist.page_number}</td>
          <td class="title-content"
              onclick="location.href='/boardContent?page_number=${blist.page_number}'">${blist.title}</td>
          <td class="notice-text-style">${blist.id}</td>
          <td class="notice-text-style">${blist.writing_date}</td>
          <td class="notice-text-style">${blist.category}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <!-- 페이지 번호 -->
    <div class="list-number">
      <c:if test="${paging.nowPage <= 1}">
        <a href="?nowPage=1">
          <input type="button" value="이전">
        </a>
      </c:if>
      <c:if test="${paging.nowPage > 1}">
        <a href="?nowPage=${paging.nowPage - 1}">
          <input type="button" value="이전">
        </a>
      </c:if>
      <c:forEach var="i" begin="${paging.startPage}" end="${paging.startPage + 4}">
        <a href="?nowPage=${i}">
          <input class="page-number" type="button" value="${i}">
        </a>
      </c:forEach>
      <a href="?nowPage=${paging.nowPage + 1}">
        <input type="button" value="다음">
      </a>
    </div>
    <!-- 게시물 검색 -->
    <div class="boardsearch-wrap">
      <fieldset class="boardsearch">
        <!-- <legend>게시물 검색</legend> -->
        <p>
<%--          <select name="search_date" class="searchBox" id="search_data">--%>
<%--            <option value="week">일주일</option>--%>
<%--            <option value="month">한달</option>--%>
<%--            <option value="month3">세달</option>--%>
<%--            <option value="all">전체</option>--%>
<%--          </select>--%>
          <select name="searchOptions" class="searchBox" id="search_key">
          <option value="title">제목</option>
          <option value="detail">내용</option>
          <option value="id">아이디</option>
        </select> <input type="text" id="search-content" name="searchData">
          <input type="hidden" name="nowPage" value="1">
          <button class="common-button" type="submit">찾기</button>
          <button class="common-button"
                  type="button" name="write" style="float: right" onclick="location.href='/boardWrite'">글쓰기
          </button>
        </p>
      </fieldset>
    </div>
  </div>
</form>
</body>

</html>