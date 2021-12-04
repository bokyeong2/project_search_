<%@page import="domain.BoardDTO"%>
<%@page import="dao.SearchBoardDAO"%>
<%@page import="java.util.List"%>
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
    <title>Fashi - 댕냥 한 컷</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <!-- Font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="../inc/top-community.jsp"></jsp:include>
    <!-- Header Section Begin -->

   <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#">검색 결과</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->



<!-- 게시판 -->
<%
// request.setCharacterEncoding("utf-8");
// String search = request.getParameter("search");
//BoardDAO 객체생성
// SearchBoardDAO boardDAO=new SearchBoardDAO();

//한화면에 보여줄 글개수  15개 설정
// int pageSize=15;
// 페이지 번호 가져오기
// String pageNum=request.getParameter("pageNum");
//페이지번호가 없으면 -> 1
// if(pageNum==null){
// 	pageNum="1";
// }
//시작하는 행번호 구하기
// int currentPage=Integer.parseInt(pageNum);
// int startRow=(currentPage-1)*pageSize+1;
//끝나는 행번호 구하기
// int endRow=startRow+pageSize-1;

// 메서드 호출
// List<BoardDTO> boardList=boardDAO.getBoardList2(startRow, pageSize, search);

// 게시판 글 갯수
// int count=boardDAO.getBoardCount(search);

%>
<table>
<c:forEach var="boardDTO" items="${blogList }">
   <tr><td>${boardDTO.board_number }</td>
      <td>${boardDTO.user_id }</td>
      <td><a href="${pageContext.request.contextPath}/community/blog_detail?board_number=${boardDTO.board_number }">
      ${boardDTO.board_title }</a></td>
      <td>${boardDTO.board_createDate }</td>
      <td>${boardDTO.board_hit }</td>
   </tr>
</c:forEach>
</table>
<h6>검색결과</h6>
<div>
	${list}
</div>
<div>
	${pageMaker}
</div>

			<!-- 스토어 검색결과 -->
			<div class="search-section">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12">
		                    <div class="search-text">
		                        스토어
		                        <span>'<%//=search %>' 검색어 글 개수 : <%//=count %> </span>
		                        <a href="#"> 더보기 <i class="fas fa-angle-right"></i></a>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="related-products spad">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-3 col-sm-6">
		                    <div class="product-item">
		                        <div class="pi-pic">
		                            <img src="../img/blog/canin.jpg" alt="">
		                            <div class="sale">Sale</div>
		                            <div class="icon">
		                                <i class="icon_heart_alt"></i>
		                            </div>
		                            <ul>
		                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
		                                <li class="quick-view"><a href="#">+ 상세보기</a></li>
		                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
		                            </ul>
		                        </div>
		                        <div class="pi-text">
		                            <div class="catagory-name">브랜드명 or 카테고리명</div>
		                            <a href="#">
		                                <h5>상품명</h5>
		                            </a>
		                            <div class="product-price">
		                                판매 가격
		                                <span>원가격</span>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-sm-6">
		                    <div class="product-item">
		                        <div class="pi-pic">
		                            <img src="../img/blog/canin2.jpg" alt="">
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
		                            <div class="catagory-name">브랜드명 or 카테고리명</div>
		                            <a href="#">
		                                <h5>상품명</h5>
		                            </a>
		                            <div class="product-price">
		                                판매 가격
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-3 col-sm-6">
		                    <div class="product-item">
		                        <div class="pi-pic">
		                            <img src="../img/blog/canin3.jpg" alt="">
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
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
		<!-- 스토어 검색결과 끝 -->
	
	
		<!-- 커뮤니티 검색결과 -->
		<div class="search-section">
			        <div class="container">
			            <div class="row">
			                <div class="col-lg-12">
			                    <div class="search-text">
			                        커뮤니티
			                        <span>'<%//=search %>' 검색어 글 개수 : <%//=count %> </span>
			                        <a href="#"> 더보기 <i class="fas fa-angle-right"></i></a>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
	
		  <div class="related-commumity spad">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-3 col-sm-6">
	                    <div class="community-img">
	                        <div class="ci-pic">
	                            <img src="../img/blog/cat-1.jpg" alt="">
	                        </div>
	                        <div class="ci-text">
	                            <a href="../community/blog-details.jsp">
	                                <h5>제목 들어올 곳</h5>
	                            </a>
	                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>아이디 들어올 곳</div>
	                            <div class="ci-nic">미정</div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-3 col-sm-6">
	                    <div class="community-img">
	                        <div class="ci-pic">
	                            <img src="../img/blog/cat-1.jpg" alt="">
	                        </div>
	                        <div class="ci-text">
	                            <a href="../community/blog-details.jsp">
	                                <h5>우리집 애기 노는 것 좀 보세요... 너무 귀여워</h5>
	                            </a>
	                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>냥냥집사</div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-3 col-sm-6">
	                    <div class="community-img">
	                        <div class="ci-pic">
	                            <img src="../img/blog/dog-2.jpg" alt="">
	                        </div>
	                        <div class="ci-text">
	                            <a href="../community/blog-details.jsp">
	                                <h5>공원 잔디에서 뒹군다고 신난 울 강쥐ㅋㅋㅋㅋ</h5>
	                            </a>
	                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>멍친구</div>
	                        </div>
	                    </div>
	                </div>
	                 <div class="col-lg-3 col-sm-6">
	                    <div class="community-img">
	                        <div class="ci-pic">
	                            <img src="../img/blog/cat-3.jpg" alt="">
	                        </div>
	                        <div class="ci-text">
	                            <a href="../community/blog-details.jsp">
	                                <h5>숨바꼭질하는 우리 냥이</h5>
	                            </a>
	                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>고양이는사랑</div>
	                        </div>
	                    </div>
	                </div>
	                 <div class="col-lg-3 col-sm-6">
	                    <div class="community-img">
	                        <div class="ci-pic">
	                            <img src="../img/blog/dog-4.jpg" alt="">
	                        </div>
	                        <div class="ci-text">
	                            <a href="../community/blog-details.jsp">
	                                <h5>초코 산책 나와서 씐남ㅋㅋㅋ</h5>
	                            </a>
	                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>럽오브댕</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
		<!-- 커뮤니티 검색결과 끝 -->

	


    <!-- Footer Section Begin -->
    	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>

</html>