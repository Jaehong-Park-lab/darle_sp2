<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>이벤트페이지</title>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
  <div class="event bsize">
    <div class="event-title-wrap">
      <h3>이벤트</h3>
      <span>이벤트 게시판 입니다.</span>
    </div>
    <div class="event-menu-wrap">
      <div class="menu-box"><a href="#">전체</a></div>
      <div class="menu-box"><a href="#">진행중 이벤트</a></div>
      <div class="menu-box"><a href="#">종료된 이벤트</a></div>
      <div class="menu-box"><a href="#">당첨자 발표</a></div>
    </div>
    <div class="event-menu-selector">
      <select>
        <option value="1">전체</option>
        <option value="2">진행중 이벤트</option>
        <option value="3">종료된 이벤트</option>
        <option value="4">당첨자 발표</option>
      </select>
    </div>
    <div class="event-content-wrap">
      <div class="event-content">
        <a>
        <div class="event-content-img">
          <img src="/static/image/product/item1.png">
        </div>
          <div class="event-content-subject">
            적립금이 쏟아지는 인스타그램 이벤트!
          </div>
        </a>
      </div>
    </div>
    <div class="event-page-button">
      <input type="button" value="<">
      <input type="button" value="1">
      <input type="button" value=">">
    </div>
    <div class="event-search-wrap">
      <select id="day" name="day">
        <option value="week">일주일</option>
        <option value="month">한달</option>
        <option value="three-month">세달</option>
        <option value="all">전체</option>
      </select>
      <select id="sel" name="sel">
        <option value="title">제목</option>
        <option value="month">내용</option>
        <option value="writer">글쓴이</option>
      </select>
      <input type="text" id="context" name="context">
      <input type="button" id="search_button" name="search_button">
    </div>
  </div>
<jsp:include page="../main/footer.jsp"/>
</body>
</html>