<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link type="text/css" rel="stylesheet" href="css/darle.css">
  <title>상품문의</title>
</head>
<body>
<div class="qa bsize">
  <div class="qa-title-wrap">
    <h3>상품문의</h3>
    <span>상품 Q&A입니다.</span>
  </div>
  <div class="qa-product-subject-wrap">
    <div class="qa-product-subject-img">
      <img src="image/product/item1.png">
    </div>
    <div class="qa-product-subejct">
      <div class="a">
        <span>{미첼 코듀로이 루즈핏 자켓}</span>
        <span>KRW{83,000}원</span>
      </div>
      <div class="b">
        <div><a>상품상세보기</a></div>
        <div><a>상품정보선택</a></div>
      </div>
    </div>
    <div class="qa-textarea-wrap">
      <div class="qa-textarea-title">
        <div class="qa-textarea-left">제목</div>
        <div class="qa-textarea-title-selector">
          <select>
            <option value="product">상품문의</option>
            <option value="delivery">배송문의</option>
            <option value="others">기타문의</option>
          </select>
        </div>


      </div>
      <div class="j-user-commend-hpnum-wrap">
        <div class="j-user-commend-hpnum">
          <span>휴대전화</span>
        </div>
        <div class="j-user-commend-hpnum-c">
          <select name="hp1" id="hp1">
            <option value="010" selected>010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select>
          -
          <input type="text" name="hp2" id="hp2" maxlength="4"
                 oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');">
          -
          <input type="text" name="hp3" id="hp3" maxlength="4"
                 oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');">
        </div>
      </div>
      <div class="qa-textarea-email-wrap">
        <div class="qa-textarea-left">이메일</div>
        <div class="j-user-commend-email-c">
          <input type="text" name="email1" id="email1"
                 oninput="this.value = this.value.replace(/[^0-9|a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');">
          @
          <input type="text" name="email2" id="email2"
                 oninput="this.value = this.value.replace(/[^a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');">
          <select name="select_email" id="select_email" onchange="selectEmail(this)">
            <option value="" selected>선택하세요</option>
            <option value="naver.com">네이버</option>
            <option value="daum.com">다음</option>
            <option value="nate.com">네이트</option>
            <option value="google.com">구글</option>
            <option value="1">직접입력</option>
          </select>
        </div>
      </div>
      <textarea class="qa-textarea"></textarea>
    </div>
  </div>
  <div class="qa-file-update-wrap">
    <div class="qa-file-update">
      <div class="qa-file-update-title">
        <span>첨부파일1</span>
      </div>
      <div class="qa-file-update-box">
        <input type="file">
      </div>
    </div>
  </div>
  <div class="qa-pass-wrap">
    <div class="qa-pass">
      <div class="qa-pass-title">
        <span>비밀번호</span>
      </div>
      <div class="qa-pass-box">
        <input type="text">
      </div>
    </div>
  </div>
  <div class="qa-menu-button-wrap">
    <div class="qa-list-button-wrap">
      <div>
        <input type="button" value="목록" name="list_button" id="list_button">
      </div>
    </div>
    <div class="qa-submit-button-wrap">
      <div>
        <input type="button" value="등록" name="qa_submit" id="qa_submit">
        <input type="reset" value="취소" name="qa_reset" id="qa_reset">
      </div>
    </div>
  </div>
</div>
</body>
<script src="js/darle.js"></script>
</html>