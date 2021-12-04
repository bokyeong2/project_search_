<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="description" content="Fashi Template">
	    <meta name="keywords" content="Fashi, unica, creative, html">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>장바구니</title>
	
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
	                        <a href="#"><i class="fa fa-home"></i>메인</a>
	                        <a href="./shop.jsp">스토어</a>
	                        <span>장바구니</span>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- Breadcrumb Section Begin -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th>상품정보</th>
                                    <th class="p-name">품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>total</th>
                                    <th><i class="ti-close"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="cart-pic first-row"><img src="../img/cart-page/product-1.jpg" alt=""></td>
                                    <td class="cart-title first-row">
                                        <h5>강아지밥</h5>
                                    </td>
                                    <td class="p-price first-row">$60.00</td>
                                    <td class="qua-col first-row">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price first-row">$60.00</td>
                                    <td class="close-td first-row"><i class="ti-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="cart-pic"><img src="../img/cart-page/product-2.jpg" alt=""></td>
                                    <td class="cart-title">
                                        <h5>강아지밥</h5>
                                    </td>
                                    <td class="p-price">$60.00</td>
                                    <td class="qua-col">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price">$60.00</td>
                                    <td class="close-td"><i class="ti-close"></i></td>
                                </tr>
                                <tr>
                                    <td class="cart-pic"><img src="../img/cart-page/product-3.jpg" alt=""></td>
                                    <td class="cart-title">
                                        <h5>고양이밥</h5>
                                    </td>
                                    <td class="p-price">$60.00</td>
                                    <td class="qua-col">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="total-price">$60.00</td>
                                    <td class="close-td"><i class="ti-close"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="cart-buttons">
                                <a href="#" class="primary-btn continue-shop">다른 상품보러가기</a>
                                <a href="#" class="primary-btn up-cart">새로고침</a>
                            </div>
<!--                             <div class="discount-coupon">
                                <h6>Discount Codes</h6>
                                <form action="#" class="coupon-form">
                                    <input type="text" placeholder="Enter your codes">
                                    <button type="submit" class="site-btn coupon-btn">Apply</button>
                                </form>
                            </div> -->
                            
                            <!-- 할인코드? 넣는 곳 -->
                        </div>
                        <div class="col-lg-4 offset-lg-4">
                            <div class="proceed-checkout">
                                <ul>
                                    <li class="subtotal">가격 <span>$240.00</span></li>
                                    <li class="cart-total">total <span>$240.00</span></li>
                                </ul>
                                <a href="#" class="proceed-btn">결제하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->
    
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