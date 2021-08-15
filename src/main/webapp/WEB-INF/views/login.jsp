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
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
			function gosignupFn() {
				location.href = "${cpath}/signup.do";			
			}		
		    function loginFn(){
	             var user_id=$("#user_id").val();
	             var user_password=$("#user_password").val();
	             $.ajax({
	                url : "loginUser.do",
	                 data : {"user_id":user_id,"user_password":user_password},
	                 success : function(data){
	                    if(data=="NO"){
	                       alert("회원인증에 실패했습니다.");
	                    }else{
	                       alert("환영합니다.")
	                       location.href="home.do"; // 메인화면으로
	                    }    
	                 },       
	                 error : function(){alert("error");}            
	             });   
	          }
	          function logoutFn(){
	                $.ajax({
	                   url: "logout.do",
	                   type:"get",
	                   success:function(){ 
	                      location.href="login.do"
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
        <div class="img" style="background-image: url(${pageContext.request.contextPath  }/resources/images/bg_1.jpg);"></div>
        <div class="colorlib-table-cell js-fullheight">
          <div class="row no-gutters">
            <div class="col-md-12 text-center">
              <h1 class="mb-4"><a href="home.do" class="logo">PALETTE</a></h1>
              <ul>
               	<jsp:include page="menu.jsp">
                  <jsp:param name="pageSelection" value="6" />
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
	          <a class="colorlib-logo" href="home.do">PALETTE</a>
	        </div>
	        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/gradation.jpg);">
      	<div class="overlay"></div>
	      <div class="container-fluid px-0">
	        <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-12 ftco-animate text-center">
	            <!-- <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p> -->
	            <h1 class="bread">Login</h1>
	          </div>
	        </div>
	      </div>
      </section>
		<div style="height:100px"></div>
	
		<section class="ftco-section ftco-no-pt ftco-no-pb ftco-about ftco-counter">
				<div class="container" style="width: 400px; text-align:left;">
					
					<!-- 폼 넣을 곳 -->
						
						<form method="post">
						  <fieldset>
						  	<div align="center">
						    <h1><strong>로그인</strong></h1>
						    <br>
						    </div>
						    <div class="form-group">
						      <label for="staticEmail">ID</label>
						      <input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디를 입력해주세요.">     
						      </div>
						    
						    <div class="form-group">
						      <label for="exampleInputPassword1">Password</label>
						      <input type="password" class="form-control" name="user_password" id="user_password" placeholder="패스워드를 입력해주세요.">
						    </div>
						    <br>
						    <br>
						    <div align="center">
						    <button type="button" class="btn btn-dark" style="width: 80px;height: 40px;" onclick="loginFn()">LOGIN</button>
							<button type="button" class="btn btn-dark" style="width: 80px;height: 40px;" onclick="gosignupFn()">JOIN</button>	
							</div>	    
						  </fieldset>
						</form>
						<!-- 폼 넣을 곳 -->	
					</div>				
			</section>
				<div style="height:100px"></div>
				
		
		

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