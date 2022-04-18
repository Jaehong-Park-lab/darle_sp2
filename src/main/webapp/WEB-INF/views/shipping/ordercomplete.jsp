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
<div class="ordercomplete">
  <div class="ordercomplete-message">
    <div class="message-top">
      <h1>상품 주문이 완료 되었습니다.</h1>
    </div>
    <div class="message-middle">
      오버핏 소매 라인 니트 상품의 주문이 완료 되었습니다.
    </div>
    <div class="order-wrap">
      <div class="order-product-list">
        <div class="order-list">
          <div class="order-product-image">
            <a href="#"><img src="image/product/item1.png" alt="오버 핏 소매라인 니트" width="90px"></a>
          </div>
          <div class="order-product-list">
            <ul>
              <li><span>오버핏 소매 라인 니트</span></li>
              <li><span class="text-13px">[옵션: 블랙/ONE]</span></li>
              <li><span class="text-13px">수량: 1개</span></li>
              <li><span class="text-13px">상품구매금액:KRW 55,000</span></li>
              <li><span class="text-13px">[무료]/기본배송(해외배송 가능)</span></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div>
      <a href="/"><input class="order-complete-button" type="button" value="결제완료"></a>
    </div>
  </div>
</div>
</body>

</html>