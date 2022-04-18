<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<body>
<div class="header bsize">
    <!--메뉴 WRAP-->
    <div class="hd-menu-top-wrap">
        <!--메뉴 LEFT-->
        <div class="hd-menu-top-left">
            <ul>
                <li><a href="/login">LOGIN</a></li>
                <li><a href="/join">JOIN US</a></li>
                <li><a href="#">
                    CART
                    <span class="count-circle">0</span>
                </a></li>
                <li><a href="/order">ORDER</a></li>
                <li><a href="/mypage">MY PAGE</a></li>
                <li><a href="#">BOOKMARK</a></li>
            </ul>
        </div>

        <%-- 메뉴 MIDDLE --%>
        <div style="padding-top: 18px;">
            <c:if test="${result.id == null}">
                <a href="/login">
                    로그인 후 사용해주세요
                </a>
            </c:if>
            <c:if test="${result.id != null}">
                <a href="/">
                    ${result.user_name} 님 반갑습니다
                </a>
                <a href="/logout">
                    로그아웃
                </a>
            </c:if>
        </div>

        <!--메뉴 RIGHT-->
        <div class="hd-menu-top-right">
            <ul>
                <li><a href="/notice">공지사항</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">상품문의</a></li>
                <li><a href="#">상품후기</a></li>
                <li><a href="#">출석체크 이벤트</a></li>
            </ul>
        </div>
    </div>

    <!--로고 WRAP-->
    <div class="hd-logo-wrap">
        <!--로고-->
        <div class="hd-logo">
            <a herf="/"><img src="resources/image/main/header/logo.png"></a>

            <!--검색창-->
            <div class="hd-searchBox">
                <form>
                    <input type="text">
                </form>
            </div>
        </div>
    </div>

    <!--카테고리 WRAP-->
    <div class="hd-items-categorise-wrap">
        <!--카테고리 목록-->
        <div class="hd-categorise-list">
            <span>NEW</span>
            <span>남성의류</span>
            <span>SALE</span>
            <span>아우터</span>
            <span>탑</span>
            <span>드레스</span>
            <span>바텀</span>
            <span>악세사리</span>
        </div>
    </div>
</div>
</body>
</html>
