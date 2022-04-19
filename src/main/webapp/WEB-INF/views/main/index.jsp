<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="shortcut icon" href="#">
  <link rel="stylesheet" type="text/css" href="resources/css/darle.css">
</head>
<body>
<jsp:include page="header.jsp" flush="true"/>

<!--index WRAP-->
<div class="index bsize">
  <!--배너 이미지 wrap-->
  <div class="ind-banner-img-wrap">
    <!--배너 이미지-->
    <a href="#"><img src="resources/image/main/header/banner-img.jpg"></a>
  </div>
  <!--상품과 배너 사이 공간-->
  <div class="ind-empty-space"></div>
  <!--상품 WRAP-->
  <div class="ind-items-wrap">
    <!--BEST-ITEMS WRAP-->
    <div class="ind-best-items-wrap">
      <!--BEST-ITEMS-TITLE WRAP-->
      <div class="ind-best-items-title-wrap">
        <!--INDEX 공지사항 WRAP-->
        <div class="ind-notice-wrap">
          <!--INDEX 공지사항 TITLE-->
          <a href="#">공지사항</a>
          <!--INDEX 공지사항 CONTENT-->
          <div class="ind-notice">
            <ul>
              <c:forEach var="nList" items="${noticeList}" begin="1" end="5">
              <li>${nList.title}</li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!--BEST ITEMS TITLE-->
        <div class="ind-best-items-title">
          <h2><span>BEST ITEMS
             <p>다를 이달의 인기상품을 확인해보세요!</p>
            </span></h2>
        </div>
      </div>
      <!--BEST ITEMS CONTENT-->
      <div class="ind-best-items-content">
        <div class="ind-item-box">
          <a href="/product"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
        </div>
        <div class="ind-item-box">
          <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
        </div>
        <div class="ind-item-box">
          <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
        </div>
        <div class="ind-item-box">
          <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
        </div>
      </div>
    </div>
    <div class="ind-new-items-wrap">
      <!--NEW ITEMS TITLE WRAP-->
      <div class="ind-new-items-title-wrap">
        <!--NEW ITEMS TITLE-->
        <div class="ind-new-items-title">
          <h2>
            <span>
              NEW ITEMS
             <p>업데이트 되는 신상품을 가장 먼저 만나보세요</p>
            </span>
          </h2>
        </div>
      </div>
      <!--NEW ITEMS CONTENT WRAP-->
      <div class="ind-new-items-content-wrap">
        <div class="ind-new-items-content">
          <div class="ind-item-box">
            <a href="/display"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
          </div>
          <!--NEW ITEM INFO-->
          <div class="ind-item-info">
            <!--NEW ITEM INFO TOP-->
            <div class="ind-item-info-top">
              <!--ITEM INFO COLOR-->
              <div class="item-info-color-box-wrap">
                <span class="item-info-color-box" style="background-color: blue"></span>
              </div>
              <!--ITEM INFO PRODUCT NAME-->
              <a href="#"><span class="ind-item-info-product-name">피시테일 후드 파카</span></a>
            </div>
            <div class="ind-item-info-bottom">
              <ul>
                <li class="ind-item-info-bottom-price">KRW {114,000}원</li>
                <li class="ind-item-info-bottom-delivery">배송비: {무료}</li>
                <li class="ind-item-info-bottom-point">적립금: {1,140원} {(1%)}</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="ind-new-items-content">
          <div class="ind-item-box">
            <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
          </div>
          <!--NEW ITEM INFO-->
          <div class="ind-item-info">
            <!--NEW ITEM INFO TOP-->
            <div class="ind-item-info-top">
              <!--ITEM INFO COLOR-->
              <div class="ind-item-info-color-wrap">
                <span class="ind-item-info-color" style="background-color: blue"></span>
              </div>
              <!--ITEM INFO PRODUCT NAME-->
              <a href="#"><span class="ind-item-info-product-name">피시테일 후드 파카</span></a>
            </div>
            <div class="ind-item-info-bottom">
              <ul>
                <li>KRW {114,000}원</li>
                <li>배송비: {무료}</li>
                <li>적립금: {1,140원} {(1%)}</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="ind-new-items-content">
          <div class="ind-item-box">
            <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
          </div>
          <!--NEW ITEM INFO-->
          <div class="ind-item-info">
            <!--NEW ITEM INFO TOP-->
            <div class="ind-item-info-top">
              <!--ITEM INFO COLOR-->
              <div class="ind-item-info-color-wrap">
                <span class="ind-item-info-color" style="background-color: blue"></span>
              </div>
              <!--ITEM INFO PRODUCT NAME-->
              <a href="#"><span class="ind-item-info-product-name">피시테일 후드 파카</span></a>
            </div>
            <div class="ind-item-info-bottom">
              <ul>
                <li>KRW {114,000}원</li>
                <li>배송비: {무료}</li>
                <li>적립금: {1,140원} {(1%)}</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="ind-new-items-content">
          <div class="ind-item-box">
            <a href="#"><img class="ind-img-size" src="resources/image/main/index/item1.png"></a>
          </div>
          <!--NEW ITEM INFO-->
          <div class="ind-item-info">
            <!--NEW ITEM INFO TOP-->
            <div class="ind-item-info-top">
              <!--ITEM INFO COLOR-->
              <div class="ind-item-info-color-wrap">
                <span class="ind-item-info-color" style="background-color: blue"></span>
              </div>
              <!--ITEM INFO PRODUCT NAME-->
              <a href="#"><span class="ind-item-info-product-name">피시테일 후드 파카</span></a>
            </div>
            <div class="ind-item-info-bottom">
              <ul>
                <li>KRW {114,000}원</li>
                <li>배송비: {무료}</li>
                <li>적립금: {1,140원} {(1%)}</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="ind-new-items-more-botton-wrap">
        <a class="ind-new-items-more-botton" href="#">더보기 ({1} / {15})</a>
      </div>
    </div>
    <!--ITEMS REVIEW WRAP-->
    <div class="ind-items-review-wrap">
      <!--ITEMS REVIEW TITLE-->
      <div class="ind-items-review-title">
        <h2>
            <span>
              상품후기
             <p>상품 사용후기입니다.</p>
            </span>
        </h2>
      </div>
      <!--ITEMS REVIEW WRAP-->
      <div class="items-review-wrap">
        <a href="#">
          <div class="ind-item-review">
            <!--ITEMS REVIEW IMG-->
            <div class="ind-items-review-img">
              <img src="resources/image/main/index/item1.png">
            </div>
            <!--ITEMS REVIEW COMMENT-->
            <div class="ind-items-review-comment">
              <!--ITEMS REVIEW SUBJECT WRAP-->
              <div class="ind-items-review-subject-wrap">
                <!--ITEMS REVIEW SUBJECT-->
                <span class="ind-items-review-subject">조금 오버사이즈로 나옵니다.</span>
              </div>
              <div class="ind-items-review-content-wrap">
                <span class="ind-items-review-content">진짜 만족합니다</span>
              </div>
              <div class="ind-items-review-star-wrap">
                <span class="ind-items-review-star">별</span>
              </div>
              <div class="ind-items-review-writer-wrap">
                <span class="ind-items-review-writer">이름</span>
              </div>
            </div>
            <div class="ind-items-review-bottom-wrap">
              <div class="ind-items-review-bottom-left">
                <img src="resources/image/main/index/item1.png">
              </div>
              <div class="ind-items-review-bottom-right">
                <span class="ind-items-review-bottom-text">
                  알케이 오버핏 스트라이프 셔츠
                </span>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="ind-new-items-more-bottom-wrap">
        <a class="ind-new-items-more-bottom" href="#">더보기 ({1} / {15})</a>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>