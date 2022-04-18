<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/darle.css">
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
          integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
  <title>Document</title>
</head>

<body>
<div class="order">
  <header class="shipping-header">
    <div class="shipping-header-top">
      <div class="previous-page">
        <a href="/index/inedex.html">
          < </a>
      </div>
      <a href="/index/inedex.html">
        <h2>D'Arles</h2>
      </a>
      <div class="cart-icon">
        <a href="/cart/basket.html">
          <img src="image/shipping/shippping_address/cart3.png" alt="장바구니" width="50px">
        </a>
      </div>
    </div>
    <div class="shipping-header-bottom">
      <h1>주문/결제</h1>
    </div>
  </header>
  <div class="shipping-main">
    <div class="shipping-address">
      <div class="h-wrap">
        <h2 class="h">배송지</h2>
      </div>
      <div class="shipping-address-content">
        <div class="shipping-address-content-form">
          <form>
            <input type="radio" name="1" id="equal" value="equal">회원 정보와 동일
            <input type="radio" name="1" id="new" value="new">새로운 배송지
          </form>
        </div>
        <table>
          <tbody>
          <tr>
            <th class="sp-th-common">받는 사람</th>
            <td class="sp-td-common"><input class="sp-input-common" type="text" placeholder="이름">
            </td>
          </tr>

          <tr>
            <th class="sp-th-common" rowspan="3">주소</th>
            <td class="sp-td-common">
              <input type="text" class="form-control m-input sp-input-common input-address-number"
                     name="postcode" id="postcode" placeholder="우편번호" readonly/>
              <button type="button" class="btn btn-info m-btn--air address-number-button"
                      onclick="execDaumPostcode()">우편번호 찾기
              </button>
            </td>
          </tr>
          <tr>
            <td class="sp-td-common"><input type="text"
                                            class="form-control m-input m--margin-top-10 sp-input-common" name="address"
                                            id="address" placeholder="도로명 주소" readonly/>
            </td>
          </tr>
          <tr>
            <td class="sp-td-common"><input type="text"
                                            class="form-control m-input m--margin-top-10 sp-input-common"
                                            name="detailAddress" placeholder="상세 주소" required/></td>
          </tr>
          <tr class="phone-number">
            <th class="sp-th-common">휴대전화</th>
            <td class="sp-td-common">
              <ul>
                <select class="first-phone-number" name="first-phone-number">
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="017">017</option>
                </select>
                -
                <input class="sp-input-common phone-number-content" type="text" maxlength="4"
                       onkeypress="inNumber();">
                -
                <input class="sp-input-common phone-number-content" type="text" maxlength="4"
                       onkeypress="inNumber();">
              </ul>
            </td>
          </tr>
          <tr>
            <th class="sp-th-common">이메일</th>
            <td class="sp-td-common">
              <div class="email">
                <input class="sp-input-common-2" type="text" name="str_email01" id="str_email01"> @
                <input class="sp-input-common-2" type="text" name="str_email02" id="str_email02" disabled
                       value="naver.com">
                <select class="email-text email-select" name="email-end" id="email-end">
                  <option value="none">-이메일 선택-</option>
                  <option value="naver">naver.com</option>
                  <option value="daum">daum.net</option>
                  <option value="nate">nate.com</option>
                  <option value="yahoo">yahoo.com</option>
                  <option value="gmail">gmail.com</option>
                  <option value="1">직접입력</option>
                </select>
              </div>
            </td>
          </tr>
          </tbody>
        </table>
        <div class="message-select">
          <select>
            <option value="1">---메시지 선택(선택사항)---</option>
            <option value="1">배송 전 미리 연락 부탁드립니다</option>
            <option value="1">부재 시 경비실에 맡겨주세요</option>
            <option value="1">부재 시 문 앞에 놔주세요</option>
            <option value="1">빠른 배송 부탁드립니다</option>
            <option value="1">택배함에 보관해 주세요</option>
          </select>
        </div>
      </div>
      <div class="normal-shipping-address h-wrap">
        <input type="checkbox" id="set-normal-address"><label for="set-normal-address">기본 배송지로 저장</label>
      </div>

    </div>
    <div>
      <div class="h-wrap">
        <h2 class="h">주문상품</h2>
      </div>
      <div class="order-product">
        <div class="order-product-image">
          <a href="#"><img src="image/product/item1.png" alt="오버 핏 소매라인 니트"
                           width="90px"></a>
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
    <div>
      <div class="h-wrap">
        <h2 class="h">결제정보</h2>
      </div>
      <div class="payment-information">
        <ul>
          <table>
            <tr>
              <th class="left">주문상품</th>
              <td class="right">KRW 55,000원</td>
            </tr>
            <tr>
              <th class="left">할인/부가결제</th>
              <td class="right">-KRW 0원</td>
            </tr>
            <tr>
              <th class="left">배송비</th>
              <td class="right">+KRW 0원</td>
            </tr>
          </table>
          <div class="payment-amount">
            <h3>결제금액</h3>
            <strong class="payment-result">KRW 55,000원</strong>
          </div>
        </ul>
      </div>
    </div>
    <div class="payment-method-wrap">
      <div class="h-wrap">
        <h2 class="h">결제수단</h2>
      </div>
      <div class="payment-method">
        <div class="payment-method-rd">
          <input type="radio" name="1" value="1"> 무통장입금
          <input type="radio" name="1" value="2"> 신용카드
          <input type="radio" name="1" value="3"> 휴대폰
          <input type="radio" name="1" value="4"> 에스크로(가상계좌)
          <input type="radio" name="1" value="5"> 카카오페이
          <input type="radio" name="1" value="6"> 에스크로(계좌이체)
        </div>
      </div>
      <div class="account-name-wrap">
        <table>
          <tr>
            <th class="account-name">예금주명</th>
            <td><input type="text"></td>
          </tr>
        </table>
      </div>
    </div>
    <!-- 약관동의 -->
    <div class="agreement-area">
      <div class="allAgree">
        <input type="checkbox" id="allAgree">
        <label for="allAgree"><strong>모든 약관 동의</strong></label>
      </div>
      <div class="agreement">
        <ul>
          <li>
            <div class="agree">
                                <span class="check">
                                    <label>
                                        <input type="checkbox" name="cb2" class="ab">
                                        <span>[필수]</span>
                                        결제대행서비스 약관 동의
                                    </label>
                                </span>
            </div>
            <div class="agree">
                                <span class="check">
                                    <label>
                                        <input type="checkbox" name="cb3" class="ab">
                                        <span>[필수]</span>결제대행서비스 약관 동의
                                    </label>
                                </span>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="order-button">
    <a href="ordercomplete"><input class="order-button-common" type="button" value="결제하기"></a>
    <a href="basket"><input class="order-button-common" type="button" value="취소하기"></a>
  </div>
</div>
</body>
<script type="text/javascript" rel="script" src="js/darle.js"></script>
</html>