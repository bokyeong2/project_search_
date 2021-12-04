<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>    
	<meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품 상세페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- Header Section Begin -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="#"><i class="fa fa-home">카테고리</i></a>
                        <a href="./shop.jsp">댕댕이</a>
                        <span>수제간식</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="filter-widget">
                        <h4 class="fw-title">카테고리</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">댕댕이</a></li>
                            <li><a href="#">냥냥이</a></li>
                            <li><a href="#">기획전</a></li>
                        </ul>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">브랜드(?)</h4>
                        <div class="fw-brand-check">
                            <div class="bc-item">
                                <label for="bc-calvin">
                                    Calvin Klein
                                    <input type="checkbox" id="bc-calvin">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-diesel">
                                    Diesel
                                    <input type="checkbox" id="bc-diesel">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-polo">
                                    Polo
                                    <input type="checkbox" id="bc-polo">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-tommy">
                                    Tommy Hilfiger
                                    <input type="checkbox" id="bc-tommy">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="filter-widget">
                        <h4 class="fw-title">가격대</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="33" data-max="98">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn">Filter</a>
                    </div>
                    
                    <div class="filter-widget">
                        <h4 class="fw-title">Tags</h4>
                        <div class="fw-tags">
                            <a href="#">Towel</a>
                            <a href="#">Shoes</a>
                            <a href="#">Coat</a>
                            <a href="#">Dresses</a>
                            <a href="#">Trousers</a>
                            <a href="#">Men's hats</a>
                            <a href="#">Backpack</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                <img class="product-big-img" src="../img/product-single/product-1.jpg" alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <span>브랜드명</span>
                                    <h3>이거면 댕냥 보드랍댕 250g</h3>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p>한의사, 수의사가 함께 만든 강아지 한방 영양식품입니다.</p>
                                    <h4>27,500원 <span>66,000</span></h4>
                                </div>
                                
                                <ul class="pd-tags">
                                    <li><span>회원가</span>&nbsp;&nbsp;&nbsp;25,300원 ~ 27,500원</li>
                                    <li><span>배송</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;택배(주문시 결제) <a href="#"> 자세히<!-- 위트페이지참고. ajax구현인듯함. --></a><br>
                                    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3,000원 (50,000원 이상 무료)<br>
                                    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가배송비 5,000원 (지역별)</li>
                                </ul>
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                                <a href="#" class="primary-btn pd-cart">찜버튼</a>
                                <a href="#" class="primary-btn pd-cart">장바구니</a>
                                <a href="#" class="primary-btn pd-cart">구매하기</a>
                                <h5>네이버페이 api 넣을까요?</h5>
                                
                                
                            </div>
                        </div>
                    </div>
<!-- 상품설명 탭 -->
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">상세설명</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">상품후기</a>
                                </li>
                                 <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">상품문의</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-4" role="tab">교환/반품/배송</a>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                            
                            <!-- 탭 1 -->
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <h5>HOW TO 급여방법과 급여량</h5>
                                                <p> - 애견의 나이,크기와 운동량, 컨디션에 따라 급여량을 조절해서 주세요<br>
                                                	- 나이가 어리거나 이가 약한 아이들은 물에 불리거나 작게 잘라서 주세요<br>
                                                	- 입맛이 까다로운 아이에겐 사료와 섞어주시고 놀이와 함께 급여해주시면 금방 익숙해져요<br>
                                                	(급여량은 적정량의 급여를 위한 참고사랑일 뿐입니다. 예를 들어 대형견 친구들의 경우 '무조건' 하루 10개 이상씩을 급여하실 필요는 없어요.<br>
                                                	그보다는 매일 꾸준하게 급여하는 좋은 습관을 만드셔서 강아지의 몸에 지속적으로 좋은 성분이 자리잡도록 노력하시는 것이 무엇보다 중요합니다!)	</p>
                                                <h5>NOTICE 유의사항</h5>
                                                <p> - 전 연령대의 모든 견종에게 급여가 가능합니다. 생후 3개월 이하 어린 강아지에게는 적응기간이 필요하며,<br>
                                                	  특별한 관리나 치료가 필요한 질병을 가진 애견이라면 수의사와 상담 후 급여해주세요.<br>
                                                	- 사료 대신 급여하지 마시고 영양균형을 위하여 '간식' 혹은 '특식'으로 급여해주세요.<br>
                                                	- 전 연령대의 모든 견종에게 급여가 가능합니다. 생후 3개월 이하 어린 강아지에게는 적응기간이 필요하며,<br>
                                                	  특별한 관리나 치료가 필요한 질병을 가진 애견이라면 수의사와 상담 후 급여해주세요.<br>
                                                	- 사료 대신 급여하지 마시고 영양균형을 위하여 '간식' 혹은 '특식'으로 급여해주세요.</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                                             
                                <!-- 탭 2 -->
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="customer-review-option">
                                        <h4>사용후기(n개)</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="../img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>김이름<span>작성날짜</span></h5>
                                                    <div class="at-reply">사용후기 뜨는 자리</div>
                                                </div>
                                            </div>
                                            
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="../img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>김이름<span>작성날짜</span></h5>
                                                    <div class="at-reply">사용후기 조희</div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="leave-comment">
                                            <h4>로그인 후 이용이 가능합니다.</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="아이디">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="비밀번호">
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="소중한 상품후기를 적어주세요"></textarea>
                                                        <button type="submit" class="site-btn">사용후기 게시하기</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- 탭 3 -->
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="product-content">
                                        <div class="col-lg-7">
                                                <h5>상품문의</h5>
                                                <p> 상품문의 게시판 구현부 </p>
                                            
                                            </div>
                                    </div>
                                </div>
                                
                                <!-- 탭 4 -->
                                <div class="tab-pane fade" id="tab-4" role="tabpanel">
                                    <div class="product-content">
                                        <div class="col-lg-7">
                                                <h5>배송정보</h5>
                                                <p>- 배송은 결제일로부터 3일이내 발송됩니다. (단, 주말 및 공휴일은 배송일에서 제외됩니다.)<br>
												   - 주문제작의 상품의 경우 상품에 따라 배송기간이 상이할수 있습니다.<br>
												   - 각 공급사마다 추가 배송비가 부과될수 있으며, 배송비 부과 기준에 따라 별도의 배송비가 책정될 수도 있습니다. (일부 도서·산간 지역의 경우 추가배송비가 발생할 수 있습니다.)<br>
												   - 직접수령은 불가하며 온라인 주문/배송만 가능합니다.<br>
												   - 공급사의 배송실수나 착오로 인한 반품 배송비용은 공급사에서 부담합니다.<br>
												   - 상품의 재고상황에 따라 배송일이 다소 지연되거나 품절취소 될 수도 있으니, 이 점 양해하여 주시기 바랍니다.</p>
                                                <h5>교환/반품</h5>
                                                <p> - 교환/반품/취소/환불 신청은 배송완료 후 7일 이내 가능합니다.(단, 일부 제품의 경우 신청이 제한될 수 있습니다.)<br>
													- 환불승인 후 영업일 기준 3~7일 이내 환불 및 취소여부 확인 가능합니다.<br>
													- 상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.<br>
													- 상품가치가 훼손된 경우 반품/환불이 불가합니다. (제품포장 개봉 및 주문제작상품/밀봉포장상품 및 스티커부착 상품 / 식품 등)<br>
													- 출고 이후 반품/환불 요청 시 상품 회수 후 처리됩니다.<br>
													- 상품페이지에 교환/환불/AS에 대한 브랜드 개별기준이 있는 경우에는 해당 내용이 우선 적용 됩니다.</p>
                                            </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>관련상품(?) or 인기상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-1.jpg" alt="">
                            <div class="sale">Sale</div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Coat</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $14.00
                                <span>$35.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-2.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Shoes</div>
                            <a href="#">
                                <h5>Guangzhou sweater</h5>
                            </a>
                            <div class="product-price">
                                $13.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-3.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-4.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Converse Shoes</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->


 	<!-- Footer Section Begin -->
    	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/jquery.countdown.min.js"></script>
    <script src="../js/jquery.nice-select.min.js"></script>
    <script src="../js/jquery.zoom.min.js"></script>
    <script src="../js/jquery.dd.min.js"></script>
    <script src="../js/jquery.slicknav.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/main.js"></script>
</body>

</html>