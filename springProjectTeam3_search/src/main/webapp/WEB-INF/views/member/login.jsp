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
    <title>로그인</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/style.css" type="text/css">
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
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i>메인</a>
                        <span>로그인</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>로그인</h2>
                        <form action="${pageContext.request.contextPath}/member/loginPro" method="post">
                            <div class="group-input">
                                <label for="username">아이디</label>
                                <input type="text" id="username" name="id">
                            </div>
                            <div class="group-input">
                                <label for="pass">비밀번호</label>
                                <input type="text" id="pass" name="pass">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        아이디 저장
                                        <input type="checkbox" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                   
                                </div>
                            </div>
                            <button type="submit" class="site-btn login-btn">로그인</button>
                        </form>
                        <div>
	                         <a href="#" class="forget-pass">아이디 찾기</a>&nbsp;&nbsp;
	                         <a href="#" class="forget-pass">비밀번호 찾기</a>&nbsp;&nbsp;
	                         <a href="#" class="forget-pass">회원가입</a>
                         </div>
                         
                         <h5>SNS 간편 로그인</h5>
                         <div>
                         	<button type="button" class="site-btn login-btn">네이버 계정으로 사용하기</button>
                         </div>
                          <div>
                         	<button type="button" class="site-btn login-btn">카카오 계정으로 사용하기</button>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    
 	<!-- Footer Section Begin -->
    	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources//js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources//js/main.js"></script>
</body>

</html>