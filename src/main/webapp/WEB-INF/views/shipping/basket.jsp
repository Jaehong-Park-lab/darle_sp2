<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/darle.css">
  <title>Document</title>
</head>

<body>
<div class="cart-wrap bsize">
  <h2>장바구니</h2>
  <div>
    <!-- 배송지역선택 -->
    <ul class="menu">
      <li class="checked">
        <a href="basket.jsp">국내배송상품(0)</a>
      </li>
      <li>
        <a href="basket_br.html">해외배송상품(0)</a>
      </li>
    </ul>
    <!-- 장바구니 상품 목록 -->
    <div class="basketlist">
      <div class="basketlist-title-wrap">
        <table>
          <thead>
          <tr>
            <th><input type="checkbox" class="order-check" id="check1" value="somthing" checked>
            </th>
            <th style="width: 80px;">이미지</th>
            <th style="width: 30%">상품정보</th>
            <th style="width: 8%">수량</th>
            <th style="width: 9%">상품구매금액</th>
            <th style="width: 8%">할인금액</th>
            <th style="width: 8%">적립금</th>
            <th style="width: 8%">배송구분</th>
            <th style="width: 8%">배송비</th>
            <th style="width: 10%">선택</th>
          </tr>
          </thead>
        </table>
      </div>
      <!-- 상품 목록 -->
      <div class="individual-basketlist">
        <div class="individual-basketlist-content">
          <table>
            <tbody>
            <tr>
              <td><input type="checkbox" class="order-check" id="check2" value="somthing" checked>
              </td>
              <td style="width: 80px;">이미지</td>
              <td style="width: 30%">상품정보</td>
              <td style="width: 8%">수량</td>
              <td style="width: 9%">상품구매금액</td>
              <td style="width: 8%">할인금액</td>
              <td style="width: 8%">적립금</td>
              <td style="width: 8%">배송구분</td>
              <td style="width: 8%">배송비</td>
              <td style="width: 10%">선택</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="basket-clear">
                <span class="basket-left">
                    <strong>선택상품을</strong>
                    <input type="button" value="X 삭제하기">
                    <input type="button" value="해외배송삼품 장바구니로 이동">
                </span>
      <span class="basket-right">
                    <input type="button" value="장바구니비우기">
                </span>
    </div>
    <div class="payment-result">
      <div>
        <table class="payment-table">
          <thead>
          <tr style="width: 100%">
            <th style="width: 18%;">총 상품금액</th>
            <th style="width: 18%;">총 배송비</th>
            <th style="width: 20%;">총 할인금액</th>
            <th style="width: 40%;">결제예정금액</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td style="width: 18%;">KRW 29000</td>
            <td style="width: 18%;">-KRW 1000</td>
            <td style="width: 20%;">-KRW 1000</td>
            <td style="width: 40%;">= KRW 27000</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
    <!-- 주문버튼 -->
    <div class="order-button">
      <a href="shipping_address"><input type="button" value="선택상품주문"></a>
      <a href="shipping_address"><input type="button" value="전체상품주문"></a>
    </div>
  </div>
  <!-- 이용안내 -->
  <div class="information-use">
    <p><span>이용안내</span></p>
    <ol>
      <li>해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
      <li>해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
      <li>선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
      <li>[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
      <li>장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
      <li>파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
    </ol>
    <p><span>무이자할부 이용안내</span></p>
    <ol>
      <li>상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
      <li>[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
      <li>단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
      <li>무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로 배송비가 표시됩니다.<br>
        실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를 참고해주시기 바랍니다.
      </li>
    </ol>
  </div>
</div>
</body>

</html>