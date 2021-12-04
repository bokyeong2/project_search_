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
    <title>회원가입</title>

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
    
    <!-- 제이쿼리 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">    
		$(document).ready(function(){
		//아이디 중복확인
			$('#user_id_check').click(function() {
				$.ajax('idCheck.jsp',{
					data:{user_id:$('#user_id').val()},
					success:function(rdata){
						$('#idmsg').html(rdata);
					}
				});
			});	
		});
	 
    </script>
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
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- 회원가입 Form -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        
                        <div class="switch-login">
                            <h5>이미 펫키지 회원이신가요?</h5> <a href="./login.jsp" class="or-login">로그인</a> 
                        </div><br>
                        
                        <form action="registerPro.jsp" method="post">
                            <div class="group-input">
                                <label for="user_id">아이디 *</label>
                                <input type="text" id="user_id" name="user_id">
                                <input type="button" id="user_id_check" value="아이디 중복확인">
                                <div id="idmsg"><br></div>
                            </div>
                            
                            <div class="group-input">
                                <label for="user_pwd">비밀번호 *</label>
                                <input type="password" id="user_pwd" name="user_pwd" onkeyup="pwdRegex()" placeholder="영문/숫자/특수문자 중 두가지를 포함한 8~20자를 입력해주세요.">
                           		<div id="pwd1"></div><br>
                            </div>
                            
                            <div class="group-input">
                                <label for="pass_check">비밀번호 확인 *</label>
                                <input type="password" id="pass_check" name="pass_check" onkeyup="pwdCheck()">
                                <div id="pwd2"></div><br>
                            </div>
                            
                             <div class="group-input">
                                <label for="user_name">이름 *</label>
                                <input type="text" id="user_name" name="user_name">
                            </div>                            
                      
                            <div class="group-input">
                                <label for="user_phone">휴대폰번호 *</label>
                                <input type="text" id="user_phone" name="user_phone" placeholder="- 를 제외하고 입력해주세요.">
                                <input type="button" id="sms" value="SMS 인증">
                            </div>                            
                             
                             <div class="group-input">
                                <label for="user_email">이메일 *</label>
                                <input type="text" id="user_email" name="user_email" placeholder="@를 포함해주세요 어쩌구">
                            </div>                                                                          
                            
                        	<h5><input type="checkbox"> 이용약관 동의(필수) <button>내용보기</button></h5>
                         	<h5><input type="checkbox"> 개인정보 수집 및 이용 동의(필수) <button>내용보기</button></h5>
                            <h5><input type="checkbox"> 이벤트 및 프로모션 메일 수신 동의(선택) <button>내용보기</button> </h5>                 
                          
                            <button type="submit" class="site-btn register-btn" id="submitBtn">회원 가입</button>
                        </form>                        
                                                
                                             
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
        
    <script type="text/javascript">
    //1. 비밀번호 정규표현식 검사
    function pwdRegex(){
    	var pwd = document.getElementById("user_pwd").value;    	
    	var num = pwd.search(/[0-9]/g);
    	var eng = pwd.search(/[a-z]/ig);
    	var spe = pwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    	const pwdMsg = document.getElementById("pwd1");
    	
    	if(pwd.length < 8 || pwd.length > 20){
    		pwdMsg.innerHTML = "8자리 ~ 20자리 이내로 입력해주세요." ;
    	  return false;
    	 }else if(pwd.search(/\s/) != -1){
    		 pwdMsg.innerHTML = "비밀번호는 공백 없이 입력해주세요.";
    	  return false;
    	 }else if((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)){
    		 pwdMsg.innerHTML = "영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.";
    	  return false;
    	 }else {
    		pwdMsg.innerHTML = "사용할 수 있는 비밀번호입니다.";
    	    return true;
    	 }   	
    }
    
    //2. 비밀번호 일치 확인
    function pwdCheck(){
    	
    }
    
    </script> 
     
</body>

</html>