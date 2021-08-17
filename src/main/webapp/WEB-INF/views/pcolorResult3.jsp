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
              <h1 class="mb-4"><a class="logo" href="home.do">palette</a></h1>
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

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/fall.jpg);">
         <div class="overlay"></div>
         <div class="container-fluid px-0">
           <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
             <div class="col-md-12 ftco-animate text-center">
               <h1 class="bread">autumn</h1>
             </div>
           </div>
         </div>
      </section>

       <section class="ftco-section ftco-no-pb ftco-no-pt">
       
			<div class="col-md-12 blog-wrap" style="text-align: center;">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4"><a>퍼스널컬러 진단의 결과</a></h2>
                     </div>
                  </div>
                  <div class="col-md-6 img js-fullheight">
                  	 <br><br><br>
                     <img style="height: 80%; width: 80%;" alt="얼굴이미지" src="${pageContext.request.contextPath}/resources/images/result/<%=imgname%>">   
                  </div>
               </div>
            </div>       
       
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight" style="background-image: url(https://cdn.jsdelivr.net/gh/hoonsbory/mycolor-deploy/images/fallColor.png);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                  <h2 class="mb-4">당신의 퍼스널 컬러는</h2>
                  <h2 class="mb-4">'가을 웜톤' 입니다.</h2>
                  <p>가을 웜톤인 사람은 클래식하고 깊고 풍성한 느낌을 가집니다. 
                  <br>또한 포근하고 부드러우며 차분하고 원숙한 이미지를 지니고 있습니다.
                  <br>상대방에게 친근함과 편안함을 느끼게 하는 이미지입니다.
                  <br>가을 타입은 황색을 지닌 따듯한 유형으로 강한 톤, 깊은 톤, 중후한 톤으로 
                  <br>편안함과 고급스러운 이미지를 느끼게 합니다.
                  <br>가을 타입은 누르스름한 피부 톤에 혈색이 있습니다.
                  <br>믿음직스럽고 그윽함이 특징입니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/fallSpectrum1.png);">
                  </div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'가을 웜'의 컬러 팔레트</h2>
                        <p>가을 컬러들은 노란색보다 짙은 황색을 지니고 있는 색의 그룹으로 
                        <br>깊고 강하면서 고급스럽고 편안한 컬러들이 주를 이루며 차분한 이미지를 가지고 있는 팔레트입니다.
                     <br>가을 타입에게 잘 어울리는 컬러는
                     <br>아이보리 베이지, 브라운과 같은 진한 톤에서 어두운 톤까지 많은 영역의 컬러를 사용할 수 있습니다.
                     <br>대표적인 컬러는 살색, 골드 등 가을의 자연에서 흔히 볼 수 있는 컬러입니다.
                     <br>가을의 컬러는 따듯함과 안정감 편안한 이미지를 줍니다.</p>
                     </div>
                  </div>
               </div>
            </div>
         <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight">
                      <c:forEach var="vo" items="${list}" begin="6" end="8" step="1">
                           <img src = "${vo.item_img_url}" width="300" height="300" style="margin-left: 30%;">
                      </c:forEach>
                  </div>
                  
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                     <h2 class="mb-4">'가을 웜'에 어울리는 향수</h2>
                     <br>
                     <br>
                        <c:forEach var="vo" items="${list}" begin="6" end="8" step="1">
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
                  <div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/autumnhair2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'가을 웜 '의 헤어 컬러 추천</h2>
                        <p>골드 색상을 베이스로 골드 브라운, 갈색 컬러인 미디움, 다크 브라운 등 
                        <br>봄 웜톤보다는 어두운 계열 브라운의 컬러를 추천해요.
                        <br>붉은 계열의 버건디나 마르살라는 피하는 것이 좋습니다.
                        <br>풍성한 웨이브, 갈색, 황색 베이스 염색을 추천합니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/autumnstar2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">유사톤을 지닌 '가을 웜' 연예인</h2>
                        <p>공유, 이진욱, 박성웅, 이민호, 마동석, 전현무</p>
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