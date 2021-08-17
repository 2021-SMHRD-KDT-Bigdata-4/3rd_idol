<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PALETTE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">      
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
              <h1 class="mb-4"><a href="index.html" class="logo">palette</a></h1>
              <ul>
                 
                 <jsp:include page="menu.jsp">
                   <jsp:param name="pageSelection" value="2" />
                </jsp:include>
                 
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
    
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
							<label for="labelLogout">Logout</label>
							<a id ="labelLogout" type="button" style="display: none;" onclick="logoutFn()">Logout</a> 
						</div>
					</c:otherwise>
				</c:choose>
			</div>
           <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/winter.jpg);">
         <div class="overlay"></div>
         <div class="container-fluid px-0">
           <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
             <div class="col-md-12 ftco-animate text-center">
               <h1 class="bread">winter</h1>
             </div>
           </div>
         </div>
      </section>
       <section class="ftco-section ftco-no-pb ftco-no-pt">
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight" style="background-image: url(https://cdn.jsdelivr.net/gh/hoonsbory/mycolor-deploy/images/winterColor.png);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                  <h2 class="mb-4">당신의 퍼스널 컬러는</h2>
                  <h2 class="mb-4">'겨울 쿨톤' 입니다.</h2>
                  <p>겨울 쿨톤인 사람은 카리스마 있고 세련된 이미지를 지니는 사람이 많습니다.
                  <br>전형적인 모던한 스타일로 선명하고 액티브한 이미지를 지니고 있어 도시적인 느낌을 지닌 유형입니다.
                  <br>겨울 타입은 파랑과 흰색 검정을 지닌 차가운 유형으로 선명 하고 엷은 톤, 어두운 톤의 모던하며 도시적인 강렬함을 느끼게 합니다.
                  <br>겨울 타입은 핏기가 없어 보일 정도의 투명한 피부 톤을 가집니다.
                  <br>눈동자는 푸른빛, 갈색빛으로 강렬하고 개성 있으며 카리스마가 있습니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/winterSpectrum1.png);">
                  </div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4"><a href="blog-single.html">'겨울 쿨'의 컬러 팔레트</a></h2>
                        <p>겨울 컬러들은 파란색, 흰색, 검정을 내포하고 있는 차갑고 강렬한 컬러들의 그룹입니다.
                        <br>선명하고 강한  컬러들이 속해 모던하고 도회적인 이미지를 가지고 있는 팔레트입니다.
                     <br>겨울 타입에게 잘 어울리는 컬러는 
                     <br>화이트 블랙과 같은 모노톤과 차갑고 선명한 색을 사용할 수 있습니다.
                     <br>대표적인 컬러는  블루, 핫핑크, 레드, 레몬옐로우, 그린 등  차갑고 강한 컬러들입니다. 
                     <br>겨울의 컬러는 차가움과 모던함 카리스마 있는 이미지를 줍니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight">
                      <c:forEach var="vo" items="${list}" begin="9" end="11" step="1">
                     <img src = "${vo.item_img_url}" width="300" height="300" style="margin-left: 30%;">
                      </c:forEach>
                  </div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                     <h2 class="mb-4">'겨울 쿨'에 어울리는 향수</h2>
                     <br>
                     <br>
                        <c:forEach var="vo" items="${list}" begin="9" end="11" step="1">
                        <div width="300" height="300">
                         <h3 class="mb-4">${vo.item_name}</h3>
                         <p style=" font-size: 12px;">${vo.item_tag}</p>
                         <p style=" font-size: 15px;">${vo.item_explain}</p>
                         <a style=" font-size: 15px;" href="${vo.item_product_url}">${vo.item_product_url}</a>
                     </div>
                     <br>
                     </c:forEach>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/winterhair2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'겨울 쿨'의 헤어 컬러 추천</h2>
                        <p>블루 베이스의 겨울 쿨톤은
                        <br>블랙 컬러와 같이 진하고 어두운 컬러가 잘 어울려 본인의 헤어 컬러 그대로를 유지하는 것이 좋지만,
                        <br>다른 컬러로 염색을 한다면 어떤 컬러든지 전체적으로 톤을 최대한 낮춰서 하는 것이 좋습니다.
                        <br>또한 와인 계열의 염색이 잘 어울립니다. </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/winterstar2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">유사톤을 지닌 '겨울 쿨' 연예인 </h2>
                        <p>조정석, 하정우, 김수현, 이동욱, 이정재, 엑소 디오</p>
                     </div>
                  </div>
               </div>
            </div>
       </section>
      
         <jsp:include page="footer.jsp">
         <jsp:param name="pageSelection" value="footer" />
      </jsp:include>

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