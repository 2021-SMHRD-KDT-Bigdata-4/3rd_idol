<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<%
   response.setCharacterEncoding("utf-8");
   String spring = request.getParameter("spring");
   String summer = request.getParameter("summer");
   String fall = request.getParameter("fall");
   String winter = request.getParameter("winter");
   String imgname = request.getParameter("imgname");
%>

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
              <h1 class="mb-4"><a href="home.do" class="logo">palette</a></h1>
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
      
      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/spring.jpg);">
         <div class="overlay"></div>
         <div class="container-fluid px-0">
           <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
             <div class="col-md-12 ftco-animate text-center">
               <h1 class="bread">spring</h1>
             </div>
           </div>
         </div>
      </section>

   <section class="ftco-section ftco-no-pb ftco-no-pt">
   			
            <div class="col-md-12 blog-wrap" style="text-align: center;">
            <div class="col-md-12 blog-wrap">
            		<br>
	               <div class="row no-gutters align-items-center">
	                  <img style="height: 50%; width: 50%;" alt="얼굴이미지" src="${pageContext.request.contextPath}/resources/images/result/<%=imgname%>">
	                  <div class="col-md-6">
	                     <div class="text p-md-5 p-4 ftco-animate">
							<h2 class="mb-4">당신의 퍼스널 컬러는</h2>
							<h2 class="mb-4">'봄 웜' 입니다.</h2>
							<p>한국인의 많은 사람이 봄 웜톤의 피부색을 가지고 있습니다.
							<br>봄 웜톤인 사람은 봄의 느낌처럼 밝고 노란빛의 피부를 가지고 있습니다.
							<br>봄 타입은 노란색을 지닌 따듯한 유형으로
							<br>선명 하고 밝은 톤과 엷은 톤으로 생동감과 에너지를 느끼게 합니다.
							<br>피부는 밝으면서 매끄럽고 투명한 분들이 많고 피부가 얇아서 주근깨 같은 잡티가 있는 경우도 있습니다.</p>
	                     </div>
	                  </div>
	               </div>
	            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/springSpectrum1.png);">
                  </div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'봄 웜'의 컬러 팔레트</h2>
                        <p>봄 컬러들은 전체적으로 노란색을 가지고 있는 그룹으로 
                        <br>밝고 따뜻한 색이 이루어져 있어 활기찬 느낌이 나는 탄력 있는 팔레트입니다.
                        <br>따라서 봄의 맑은 이미지를 생각하며 스타일링 하는 것을 추천합니다.
                       <br>봄 타입에게 잘 어울리는 컬러는 
                       <br>아이보리 베이지와 같은 밝은 톤과 알록달록한 선명한 컬러를 사용할 수 있는데 
                       <br>대표적인 컬러는 복숭아 핑크, 오렌지 레드, 옐로우, 그린, 퍼플 등
                       <br>싱그러운 과일이나 햇살을 듬뿍 머금은 선명한 컬러입니다.</p>
                     </div>
                  </div>
               </div>
            </div>
             <div class="col-md-12 blog-wrap">
                <div class="row no-gutters align-items-center">
                   <div class="col-md-6 img js-fullheight">
                         <c:forEach var="vo" items="${list}" begin="0" end="2" step="1">
                            <img src = "${vo.item_img_url}" width="300" height="300" style="margin-left: 30%;">
                         </c:forEach>
                   </div>
                   
                 <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'봄 웜'에 어울리는 향수</h2>
                        <br>
                        <br>
                        <c:forEach var="vo" items="${list}" begin="0" end="2" step="1">
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
                  <div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/springhair2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'봄 웜'의 헤어 컬러 추천</h2>
                        <p>골드 브라운, 밀크 브라운 등 옐로우 계열의 브라운 컬러를 추천해요.
                        <br>톤 다운을 고민하는 분들이라면 검정 머리보다는 어두운 브라운 계열이 자연스럽게 이쁘답니다.
                        <br>곡선의 귀여운 스타일, 옐로우 베이스 염색을 추천해요. </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/springstar2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">유사톤을 지닌 '봄 웜' 연예인</h2>
                        <p>윤시윤, 정우, 이종석, 차태현, 육성재, 강호동</p>
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
    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
    
  </body>
</html>