<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>PALETTE</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script type="text/javascript">
			// ๋ก๊ทธ์์
		    function logoutFn(){
		    	   $.ajax({
		    	      url: "logout.do",
		    	      type:"get",
		    	      success:function(){ 
		    	         location.href="home.do"
		    	      },
		    	     error:function(){alert("error");}	      
		    	   });	   
		    	}		 			
	</script>
</head>
<body>

	<div class="page">
		<nav id="colorlib-main-nav" role="navigation">
			<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
			<div class="js-fullheight colorlib-table">
				<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg);"></div>
				<div class="colorlib-table-cell js-fullheight">
					<div class="row no-gutters">
						<div class="col-md-12 text-center">
							<h1 class="mb-4">
								<a href="home.do" class="logo">palette</a>
							</h1>
							<ul>
								<jsp:include page="menu.jsp">
									<jsp:param name="pageSelection" value="1" />
								</jsp:include>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		</div>

		<div id="colorlib-page">
	      <header>
	         <div class="container">
	           <div class="colorlib-navbar-brand">
	             <a class="colorlib-logo" href="home.do" style="position: absolute; z-index: 2; top: 45px;">PALETTE</a>
	           </div>
		        <div method="post" action="${cpath}/login.do" class="loginForm">
					<c:choose>
						<c:when test="${sessionScope.userVO==null}">
							<a href = "${cpath}/login.do" style="color : white; margin-left: 2160%;">Login</a>
						</c:when>
						<c:otherwise>
							<div class="logoutForm">
								<button class="btn" style="color : white;">${sessionScope.userVO.user_name}</button>
								<label for="labelLogout" onclick="logoutFn()">Logout</label>
								<a id ="labelLogout" type="button" style="display: none;" onclick="logoutFn()">Logout</a> 
								<!-- <a type="button" style="font-size : 16px" onclick="logoutFn()">Logout</a> --> 
							</div>
						</c:otherwise>
					</c:choose>
				</div>
	           <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
	        </div>
	      </header>
		 </div>
	    	<section class="hero-wrap js-fullheight">
				<div class="container-fluid px-0">
					<div
						class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
						data-scrollax-parent="true">
						<div class="col-md-12 ftco-animate text-center">
							<div class="desc">
								<span class="subheading">Personal Color</span>
								<h1 style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg);">palette</h1>
								<span class="subheading-2">f a s h o i n    c o l o r</span>
							</div>
						</div>
					</div>
				</div>
			</section>
	    	<div class="container-fluid px-0">
	    		<div class="row no-gutters">
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    				
	    				
	    				
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/main5.jfif);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">์ข์ ์ฒซ์ธ์์ ์ํ 
	    							<br>๋๋ง์ 'ํผ์ค๋ ์ปฌ๋ฌ'์ '์คํ์ผ๋ง'</a></h2>
	    							<p>๋ชจ๋? ๋ง๋จ์ ์ฒซ์ธ์์ด ์ค์ํฉ๋๋ค.
	    							<br>ํนํ ์ทจ์ ์ต์ข ๊ด๋ฌธ์ธ ๋ฉด์?์์ ๊ฒฐ์?์?์ธ ์ญํ?์ ํ๊ณค ํ์ฃ?.
	    							<br>๊ธ์?์?์ธ ์ฒซ์ธ์์ ๋จ๊ธฐ๊ธฐ ์ํด์ ์ฌ๋ฌ๊ฐ์ง ์ค๋นํ? ๊ฒ์ด ๋ง์๋ฐ,
	    							<br>๊ทธ ์ค ๋ด๊ฒ ์ด์ธ๋ฆฌ๋ ์์ ์ฐพ๋ 'ํผ์ค๋ ์ปฌ๋ฌ'์ ์ค์์ฑ์ด ๋ ์ปค์ง๊ณ? ์์ต๋๋ค.
	    							<br>๋ฉด์?์ ์๋ ์ทจ์ค์์ ๋ฌผ๋ก? ๋๋ง์ ์์ ์ฐพ์ 
	    							<br>๋ณด๋ค ๋ฉ์ง ์คํ์ผ๋ง์ ์ํ๋ ๋ถ์ ์ํ ํผ์ค๋ ์ปฌ๋ฌ ์ง๋จ์ ํ๋ฌ ๊ฐ๋ณผ๊น์?</p>
	    							<p class="mb-0 mt-4"><a href="pcolor.do" class="btn btn-dark">์ง๋จํ๊ธฐ <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/clothes1.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">๋ด ์ท์ฅ์ ์ท๋ค๊ณผ 
	    							<br>๋์ 'ํผ์ค๋ ์ปฌ๋ฌ'์ ๋งค์นญ ์?ํฉ๋</a></h2>
	    							<p>์ด๋ฏธ์ง ๋ถ์ํ์ฌ ์ง๋จํ ๋ด ํผ์ค๋ ์ปฌ๋ฌ์
	    							<br>๋ด๊ฐ ๊ฐ์ง๊ณ? ์๋ ์ท๋ค์ด ์ผ๋ง๋ ์ด์ธ๋ฆด๊น?
	    							<br>
	    							<br>์?ํฉ๋๋ฅผ ํ์ธ ๋ฐ ๋ฒ?์คํธ ๋งค์นญ ์ปฌ๋ฌ ์์ดํ ์ถ์ฒ !</p>
	    							<p class="mb-0 mt-4"><a href="uploadForm.do" class="btn btn-dark">์ง๋จํ๊ธฐ <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/perfume.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<h2 class="mb-4"><a href="blog-single.html">'ํผ์ค๋ ์ปฌ๋ฌ'์ ๋ฐ๋ฅธ ํฅ์ ์ถ์ฒ ์๋น์ค </a></h2>
	    							<p>์ด๋ฏธ์ง ๋ถ์ํ์ฌ ์ง๋จํ ํผ์ค๋ ์ปฌ๋ฌ์ ๋ฐ๋ผ
	    							<br>๋ด ๋ถ์๊ธฐ์ ์ด์ธ๋ฆฌ๋ ํฅ์?
									<br>
									<br>ํค๋ณ ์ด์ธ๋ฆฌ๋ ๋ฒ?์คํธ ํฅ์ ์ถ์ฒ ํด๋๋ฆด๊ฒ์ :)</p>
	    							<p class="mb-0 mt-4"><a href="pcolor.do" class="btn btn-dark">์ง๋จํ๊ธฐ <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/hair1.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">
	    							'ํผ์ค๋ ์ปฌ๋ฌ'์ ๋ฐ๋ฅธ 
	    							<br>ํค์ด ์ปฌ๋ฌ ์ถ์ฒ ์๋น์ค </a></h2>
	    							<p>์ด๋ฏธ์ง ๋ถ์ํ์ฌ ์ง๋จํ ํผ์ค๋ ์ปฌ๋ฌ์ ๋ฐ๋ผ
	    							<br>๋ด ํผ๋ถํค๊ณผ ์ด์ธ๋ฆฌ๋ ํค์ด ์ปฌ๋ฌ๋ก ์คํ์ผ Up Up!</p>
	    							<p class="mb-0 mt-4"><a href="pcolor.do" class="btn btn-dark">์ง๋จํ๊ธฐ <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
					<div class="col-md-12 blog-wrap bg-darken">
					</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    				<img style="height: 100%; width: 100%;" alt="์ผ๊ตด์ด๋ฏธ์ง" src="${pageContext.request.contextPath}/resources/images/image_13.jpg">
	    			</div>
						<div class="col-md-12 blog-wrap">
						</div>
				</section>

		<footer class="ftco-footer ftco-section img" style="width: 100%;">
	    	<div class="overlay"></div>
	      <div class="container">
	        <div class="row mb-5">
	          <div class="col-lg-3">
	            <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2 logo"><a href="index.html">PALETTE</a></h2>
	              <p>Color types help stylize makeup, fashion. have you ever thought about your personal colors that perfectly suit your image?</p>
	              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
	                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
	                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
	                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-lg-4">
	            <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2">Recent Blog</h2>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_1.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_2.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-lg-2">
	             <div class="ftco-footer-widget mb-4 ml-md-4">
	              <h2 class="ftco-heading-2">Site Links</h2>
	              <ul class="list-unstyled">
	                <li><a href="home.do" class="py-2 d-block">main</a></li>
	                <li><a href="pcolor.do" class="py-2 d-block">personal color</a></li>
	                <li><a href="uploadForm.do" class="py-2 d-block">costume color</a></li>
	                <li><a href="boardList.do" class="py-2 d-block">community</a></li>
	                <li><a href="mypage.do" class="py-2 d-block">mypage</a></li>
	                <li><a href="login.do" class="py-2 d-block">login</a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-lg-3">
	            <div class="ftco-footer-widget mb-4">
	            	<h2 class="ftco-heading-2">Have a Questions?</h2>
	            	<div class="block-23 mb-3">
		              <ul>
		                <li><span class="icon icon-map-marker"></span><span class="text">3rd floor 31-15, Yesul-gil, Dong-gu, Gwangju, Republic of Korea</span></li>
		                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+81 10 5315 6111</span></a></li>
		                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">dkdk9998@naver.com</span></a></li>
		              </ul>
		            </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-12 text-center">

	            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Why is this working</p>
	          </div>
	        </div>
	      </div>
	</footer>
      <!-- loader -->
      <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

      </div>
    </div>

	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>