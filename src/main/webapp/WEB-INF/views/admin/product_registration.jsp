<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>제품등록페이지</title>
  <link rel="shortcut icon" href="#">
  <link rel="stylesheet" type="text/css" href="/resources/css/darle.css">
  <script src="/resources/js/darle.js"></script>
</head>
<body>
<div class="write bsize">
  <section class="write-content">
    <h1>제품등록페이지</h1>
    <form name="boardForm" action="/admin/productRegistration" method="post">
      <table class="board_write">
        <tr>
          <th>카테고리</th>
          <td><select name="category">
            <option value="notice">공지사항</option>
          </select></td>
        </tr>
        <tr>
          <th>카테고리</th>
          <td><select name="clothes_main_category" id="clothes_main_category" onchange="categoryChange(this)">
            <option value="bottom">바지</option>
            <option value="top">상의</option>
            <option value="mans_clothes">남성의류</option>
          </select></td>
        </tr>
        <tr>
          <th>카테고리</th>
          <td><select name="clothes_sub_category" id="clothes_sub_category">
            <option>선택해주세요</option>
          </select></td>
        </tr>
        <tr>
          <th>상품번호</th>
          <td><input type="text" name="product_number" id="product_number"></td>
        </tr>
        <tr>
          <th>상품명</th>
          <td><input type="text" name="product_name" id="product_name"></td>
        </tr>
        <tr>
          <th>가격</th>
          <td><input type="text" name="price" id="price"></td>
        </tr>
        <tr>
          <th>수량</th>
          <td><input type="text" name="product_amount" id="product_amount"></td>
        </tr>
        <%-- +버튼 만들고 누르면 더 늘어나게 name은 +1 씩 추가 나중에 하나로 합쳐서 color로 전송 --%>
        <tr>
          <th>색상</th>
          <td><input type="text" name="color" id="color"></td>
        </tr>
        <tr>
          <th>사이즈</th>
          <td><input type="text" name="size" id="size"></td>
        </tr>
        <tr>
          <th>상품설명</th>
          <td>사진 반복해서 나오게 해놓기</td>
        </tr>
          <%--파일 여러개 올릴 수 있도록 하기--%>
        <input type="file">
        <tr>
          <td colspan="2">
            <button type="submit" class="btn_style3">등록완료
            </button>
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
