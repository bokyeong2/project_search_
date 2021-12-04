<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
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
                        <a href="#"><i class="far fa-comments"></i> 커뮤니티</a>
                        <span>댕냥 한 컷</span>
	                    <div class="breadcrumb-button">
	                        <input type="button" class="b-btn"  value="글쓰기">
	                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->


<%-- 												<c:if test="${blog ne null }"> --%>
<%-- 				                            	<c:forEach var="blog" varStatus="status" items="${blog}"> --%>
<!-- 				                             		<tr> -->
<%-- 				                             			<td>${status.count }</td> --%>
<%-- 				                             			<td>${blog.board_title}</td> --%>
<%-- 				                             			<td>${blog.user_id}</td> --%>
<%-- 				                             			<td>${blog.board_contents}</td> --%>
<%-- 				                             			<td>${blog.board_createDate}</td> --%>
<%-- 				                             			<td>${blog.board_hit}</td> --%>
<!-- 				                             		</tr> -->
<!-- 				                             	</c:forEach>				                            -->
<!-- 				                             	</c:if> -->
<%-- 				                             	<c:if test="${empty blog}"> --%>
<!-- 				                             		<tr> -->
<!-- 				                             			<td colspan="5">등록된 글이 없습니다.</td> -->
<!-- 				                             		</tr> -->
<!-- 				                             	</c:if>	 -->
	<!-- Related Commumity Section -->
	  <div class="related-commumity spad">
        <div class="container">
            <div class="row">
	<c:if test="${blog ne null }">
    <c:forEach var="blog" varStatus="status" items="${blog}">
                <div class="col-lg-3 col-sm-6">
                    <div class="community-img">
                        <div class="ci-pic">
                            <img src="../img/blog/cat-1.jpg" alt="">
                        </div>
                        <div class="ci-text">
                            <a href="../community/blog_details.jsp">
                            <p>${status.count }</p>
                                <h5>${blog.board_title}</h5>
                            </a>
                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>${blog.user_id}</div>
                            <div class="ci-nic"> 등록일 ${blog.board_createDate}</div>
                            <span>조회수 ${blog.board_hit} </span>
                        </div>
                    </div>
                </div>
                </c:forEach>				                           
				</c:if>
				<c:if test="${empty blog}">
                     <tr>
                        <td colspan="5">등록된 글이 없습니다.</td>
                     </tr>
                </c:if>	
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
                 <div class="col-lg-3 col-sm-6">
                    <div class="community-img">
                        <div class="ci-pic">
                            <img src="../img/blog/dog-4.jpg" alt="">
                        </div>
                        <div class="ci-text" value="${pageContext.request.contextPath}/community/blog-detail">
<%--                            <a href="../community/blog-details.jsp" value="${pageContext.request.contextPath}/community/blog-detail"> --%>
                                <h5>초코 산책 나와서 씐남ㅋㅋㅋ</h5>
<!--                             </a> -->
                            <div class="ci-nic"><i class="far fa-grin-hearts"></i>럽오브댕</div>
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
	<!-- Related Commumity Section End -->

    <!-- Blog Section Begin -->
                        <div class="col-lg-12">
                            <div class="loading-more">
                                <i class="icon_loading"></i>
                                <a href="#">
                                    Loading More
                                </a>
                            </div>
                        </div>
    <!-- Blog Section End -->

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