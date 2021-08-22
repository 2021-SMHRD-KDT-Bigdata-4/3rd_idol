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
							<label for="labelLogout" onclick="logoutFn()">Logout</label>
							<a id ="labelLogout" type="button" style="display: none;" onclick="logoutFn()">Logout</a> 
						</div>
					</c:otherwise>
				</c:choose>
			</div>
           <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/summer.jpg);">
         <div class="overlay"></div>
         <div class="container-fluid px-0">
           <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
             <div class="col-md-12 ftco-animate text-center">
               <h1 class="bread">summer</h1>
             </div>
           </div>
         </div>
      </section>

       <section class="ftco-section ftco-no-pb ftco-no-pt">
       
			<div class="col-md-12 blog-wrap" style="text-align: center;">
				<br>
               <div class="row no-gutters align-items-center">
	                  <img style="height: 50%; width: 50%;" alt="얼굴이미지" src="${pageContext.request.contextPath}/resources/images/result/<%=imgname%>">
	                  <div class="col-md-6">
	                     <div class="text p-md-5 p-4 ftco-animate">
                  <h2 class="mb-4">당신의 퍼스널 컬러는</h2>
                  <h2 class="mb-4">'여름 쿨톤' 입니다.</h2>
                  <p>여름 쿨톤인 사람은 대체적으로 깨끗한 이미지를 가지고 있습니다.
                  <br>또한 여름 타입은 시원하고 부드러운 스타일이 주로 많습니다.
                  <br>여름 타입은 흰색과 파랑을 지닌 차가운 유형으로 
                  <br>연한 톤과 밝은 잿빛 톤의 시원스럽고 화려함을 느끼게 합니다.
                  <br>핑크빛과 붉은빛이 감도는 혈색 좋은 피부 톤을 가지고 있습니다.
                  <br>지적이고 세련되며 우아한 인상이 여름 타입의 특징입니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/summerSpectrum1.png);">
                  </div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4">'여름 쿨'의 컬러 팔레트</h2>
                        <p>흰색과 파란색을 머금고 있는 여름 컬러들은
                        <br>소프트하고 밝은 컬러, 그레이쉬한 컬러들로 이루어져 있어 시원하고 화려한 인상을 줍니다.
                        <br>여름 쿨톤의 컬러들은 블루 베이스로 이루어져 있고 난색이어도 차가운 느낌을 가집니다.
                     <br>여름 타입에게 잘 어울리는 컬러는 
                     <br>화이트, 그레이, 네이비 등의 컬러를 기본색으로 그레이쉬한 파스텔톤과 함께 사용할 수 있는데
                     <br>대표적인 컬러는 연핑크, 민트, 연보라, 파스텔블루 등 
                     <br>안개가 낀 듯 뿌옇고 부드럽게 보이는 게 특징입니다.
                     <br>여름의 컬러는 시원함과 시크함, 세련된 느낌의 이미지를 보여줍니다.</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
                   <div class="row no-gutters align-items-center">
                      <div class="col-md-6 img js-fullheight">
                          <c:forEach var="vo" items="${list}" begin="3" end="5" step="1">
                            <img src = "${vo.item_img_url}" width="300" height="300" style="margin-left: 30%;">
                          </c:forEach>
                      </div>
                      
                      <div class="col-md-6">
                         <div class="text p-md-5 p-4 ftco-animate">
                           <h2 class="mb-4">'여름 쿨'에 어울리는 향수</h2>
                           <br>
                           <br>
                            <c:forEach var="vo" items="${list}" begin="3" end="5" step="1">
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
                  <div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/summerhair2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4"><a href="blog-single.html">'여름 쿨'의 헤어 컬러 추천</a></h2>
                        <p>애쉬 계열의 블론드, 붉은 계열의 쿨 브라운, 와인 브라운이 
                        <br>시원한 블루 베이스의 여름 쿨톤에게 가장 어울리는 컬러예요.
                        <br>웜톤과는 달리 옐로 계열은 어울리지 않는답니다. 
                        <br>헤어스타일은 스트레이트, 자연스러운 웨이브, 본연의 색, 애쉬 염색을 추천합니다.  </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-12 blog-wrap">
               <div class="row no-gutters align-items-center">
                  <div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/summerstar2.jpg);"></div>
                  <div class="col-md-6">
                     <div class="text p-md-5 p-4 ftco-animate">
                        <h2 class="mb-4"><a href="blog-single.html">유사톤을 지닌 '여름 쿨' 연예인 </a></h2>
                        <p>차은우, 이도현, 방탄소년단 진, 은지원, 방탄소년단 지민, 유연석</p>
                        
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