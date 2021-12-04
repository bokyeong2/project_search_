<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

    <header class="header-section">
        <div class="header-top">
            <div class="container">               
                <div class="ht-right">
                	<c:if test="${empty sessionScope }">
	                	<a href="${pageContext.request.contextPath}/member/register" class="login-panel"><i class="fa fa-user"></i>회원가입</a>
	                	<a href="${pageContext.request.contextPath}/member/login" class="login-panel"><i class="fa fa-user"></i>로그인</a>                	
                	</c:if>
                	<c:if test="${!empty sessionScope }">
                		<a href="#" class="login-panel"><i class="fa fa-user"></i>로그아웃</a>
                		<a href="${pageContext.request.contextPath}/mypage/mypage" class="login-panel"><i class="fa fa-user"></i>마이페이지</a>
                	</c:if>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="../index.html">
                                <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-lg-7">
                        <div class="advanced-search">
                            <form action="#" class="input-group">
                                <input type="text" name="keyword" placeholder="통합 검색">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-lg-3">
                        <ul class="nav-right">
                            <li class="heart-icon"><a href="#">
                                    <i class="icon_heart_alt"></i>
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="cart-icon"><a href="#">
                                    <i class="icon_bag_alt"></i>
                                    <span>3</span>
                                </a>
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="si-pic"><img src="${pageContext.request.contextPath}/resources/img/select-product-1.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="si-pic"><img src="${pageContext.request.contextPath}/resources/img/select-product-2.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>total:</span>
                                        <h5>$120.00</h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="#" class="primary-btn view-card">VIEW CARD</a>
                                        <a href="#" class="primary-btn checkout-btn">CHECK OUT</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>카테고리</span>
                        <ul class="depart-hover">
                            <li class="active"><a href="#">간식</a></li>
                            <li><a href="#">케어용품</a></li>
                            <li><a href="#">장난감</a></li>
                            <li><a href="#">기획전</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li><a href="../index.html">메인</a></li>
                        <li><a href="../shop/shop.jsp">스토어</a></li>
                        <li><a href="#">상점</a>
                            <ul class="dropdown">
                                <li><a href="#">댕냥경험기</a></li>
                                <li><a href="#">댕냥노하우</a></li>
                                <li><a href="#">댕냥한컷</a></li>
                                <li><a href="#">이벤트</a></li>
                            </ul>
                        </li>
                        <li><a href="../community/blog.jsp">커뮤니티</a></li>
                        <li><a href="../shop/contact.jsp">고객지원</a></li>
                        <li><a href="#">사이트맵</a>
                            <ul class="dropdown">
                                <li><a href="./blog-details.html">기능</a></li>
                                <li><a href="./shopping-cart.html">장바구니</a></li>
                                <li><a href="./check-out.html">구매하기</a></li>
                                <li><a href="./faq.html">자주 묻는 질문</a></li>
                                <li><a href="./register.html">비회원 로그인</a></li>
                                <li><a href="./login.html">회원 로그인</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->