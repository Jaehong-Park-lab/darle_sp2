<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--  <link rel="stylesheet" type="text/css" href="/resources/css/product.css">--%>
  <link rel="stylesheet" type="text/css" href="/resources/css/darle.css">
  <title>Document</title>
</head>

<body>
<jsp:include page="/WEB-INF/views/main/header.jsp" flush="true"/>
  <div class="display bsize">
    <div class="display-top">
      <div class="img-wrap">
        <div class="top-img">
          <img src="/resources/image/main/index/item1.png" alt="오버핏 소매라인 니트" class="big_img_size">
        </div>
      </div>
      <div class="info-Area">
        <div class="heading-Area">
          <h2>오버핏 소매 라인 니트</h2>
          <div class="display-color">
            <span class="product-color-record" style="background-color: #56754C;"></span>
            <span class="product-color-record" style="background-color: #FEFFEF;"></span>
            <span class="product-color-record" style="background-color: #000000;"></span>
          </div>
        </div>
        <div class="display-price">
          <table>
            <tr>
              <th class="dp-th-common">판매가</th>
              <td class="dp-td-common">KRW 45,000원</td>
            </tr>
          </table>
        </div>
        <div class="display-select">
          <div class="display-select-color">
            <table>
              <tr>
                <th class="dp-th-common">색상</th>
                <td class="dp-td-common">
                  <div class="color-button">
                    <input class="button-common" type="button" value="블랙">
                    <input class="button-common" type="button" value="아이보리">
                    <input class="button-common" type="button" value="베이지">
                    <span><br>[필수]옵션을 선택해 주세요</span>
                  </div>
                </td>
              </tr>
            </table>
          </div>
          <div class="display-select-size">
            <table>
              <tr>
                <th class="dp-th-common">사이즈</th>
                <td class="dp-td-common">
                  <input class="button-common" type="button" value="ONE">
                  <span><br>[필수]옵션을 선택해 주세요</span>
                </td>
              </tr>
            </table>
          </div>
        </div>
        <div class="display-message">
          <span>최소주문수량 1개이상</span>
        </div>
        <div class="display-result">
          <div><input type="number" name="count" min="1" value="1"></div>
        </div>
        <div class="display-totalprice">
          <h3>TOTAL:KRW 45,000원(1개)</h3>
        </div>
        <div class="order-button">
          <a href="/shipping_address/shipping_address.html"><input type="button" value="바로구매"></a>
          <a href="/cart/basket.html"><input type="button" value="장바구니"></a>
          <input type="button" value="관심상품">
        </div>
      </div>
    </div>
    <div class="display-detail-info">
      <img src="/resources/image/product/detail/1.png" alt="1">
      <img src="/resources/image/product/detail/2.jpg" alt="2">
      <img src="/resources/image/product/detail/3.jpg" alt="3">
      <img src="/resources/image/product/detail/4.jpg" alt="4">
      <img src="/resources/image/product/detail/5.jpg" alt="5">
      <!-- <img src="/resources/image/product/detail/6.jpg" alt="6"> -->
      <img src="/resources/image/product/detail/7.jpg" alt="7">
      <img src="/resources/image/product/detail/8.jpg" alt="8">
      <img src="/resources/image/product/detail/9.jpg" alt="9">
      <img src="/resources/image/product/detail/10.jpg" alt="10">
      <img src="/resources/image/product/detail/11.jpg" alt="11">
      <img src="/resources/image/product/detail/12.jpg" alt="12">
      <div class="i12-13"></div>
      <img src="/resources/image/product/detail/12-1.jpg" alt="12-1">
      <img src="/resources/image/product/detail/13.jpg" alt="13">
      <div class="i13-14">
        <span class="span-common"><strong>베이지 / 아이보리 / 블랙</strong></span>
      </div>
      <img src="/resources/image/product/detail/14.jpg" alt="14">
      <img src="/resources/image/product/detail/15.jpg" alt="15">

      <div class="display-orderinfo">
        <div><span class="span-common"><strong>사이즈정보</strong></span></div>
        <div class="size-info">
          <div class="size-info-img">
            <img src="/resources/image/product/detail/16.png" alt="16">
            <div class="cm">
              <span>(단위: cm)</span>
            </div>
            <table class="size-info-detail">
              <thead>
                <tr>
                  <th class="size-info-detail-th">사이즈</th>
                  <th class="size-info-detail-th">1. 어깨</th>
                  <th class="size-info-detail-th">2. 가슴</th>
                  <th class="size-info-detail-th">3. 소매</th>
                  <th class="size-info-detail-th">6. 밑단</th>
                  <th class="size-info-detail-th">7. 총길이</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="size-info-detail-td adb">FREE</td>
                  <td class="size-info-detail-td">75</td>
                  <td class="size-info-detail-td">70</td>
                  <td class="size-info-detail-td">49</td>
                  <td class="size-info-detail-td">56</td>
                  <td class="size-info-detail-td">66</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="size-warning">
            <ul>
              <li>위의 실측사이즈는 '단면의 길이'입니다. 참고해 주세요.</li>
              <li>사이즈는 측정방법에 따라 1~3cm 정도 오차가 있을 수 있습니다.</li>
              <li>제품색상은 사용자의 모니터의 해상도에 따라 실제 색상과 다소 차이가 있을 수 있습니다.</li>
              <li>제품컷의 색상이 실제 제품 색상과 가장 비슷합니다.</li>
            </ul>
          </div>
        </div>
        <div>
          <span class="span-common"><strong>상세정보</strong></span>
          <div>
            <table class="size-info-detail">
              <tr>
                <th class="dress-info-detail-th">소재</th>
                <td class="dress-info-detail-td">아크릴 100%</td>
              </tr>
              <tr>
                <th class="dress-info-detail-th">세탁방법</th>
                <td class="dress-info-detail-td">
                  <div class="laundry-method"><img src="/resources/image/product/detail/dry.png" alt="드라이클리닝" width="40px"><br>드라이클리닝</div>
                  <div class="laundry-method"><img src="/resources/image/product/detail/hand.png" alt="단독손세탁" width="40px"><br>단독손세탁</div>
                </td>
              </tr>
              <tr>
                <th class="dress-info-detail-th">색상</th>
                <td class="dress-info-detail-td">블랙, 아이보리, 베이지</td>
              </tr>
              <tr>
                <th class="dress-info-detail-th">원산지</th>
                <td class="dress-info-detail-td">대한민국</td>
              </tr>
              <tr>
                <th class="dress-info-detail-th">A/S 정보 및 담당자</th>
                <td class="dress-info-detail-td">한국어 쇼핑몰 고객센터 / 01075874814</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>