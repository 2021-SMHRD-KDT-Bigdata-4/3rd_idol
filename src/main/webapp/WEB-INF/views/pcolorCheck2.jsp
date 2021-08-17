<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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
	    $(document).ready(function() {
			$("#div_load_image").hide();
			$('#take').submit(function(){
			$("#div_load_image").show();
			});
          });
	
/*       function callAjax(test, test2){ 
    	  var sendData; 
    	  sendData = JSON.stringify({ 
    		  "test" : test, 
    		  "test2": test2 
    		  }); 
    	  $("#div_load_image").show(); 
    	  $.ajax({ 
    		  type : 'POST', 
    		  url : "/test", 
    		  contentType: "application/json;charset=UTF-8", 
    		  data : sendData, 
    		  dataType : 'json', 
    		  success : function(data){ // 조회성공 
    			  $("#div_load_image").hidden(); 
    		  }, 
    		  error: function(jqXHR, textStatus, errorThrown){ 
    			  alert("오류가 발생하였습니다."); 
    			  $("#div_load_image").hidden(); 
    			  } 
    		  }); 
    	  }
 */
	</script>
</head>
<body>
	<div id="div_load_image" style="position:absolute; top:50%; left:44%;width:0px;height:0px; z-index:9999; background:#f0f0f0; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; text-align:center"> <img src="${pageContext.request.contextPath}/resources/images/loadingbar3.gif" style="width:200px; height:200px;"> </div>
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
   	    <section class="ftco-section ftco-no-pb ftco-no-pt">
	    	<div class="container-fluid px-0">
	    		<div class="row no-gutters">
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center" style="background-color: black;">
 	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/pcc3.png);"></div>
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/pcc4.png);"></div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate" style="width: 200%;">
									<!-- 웹 카메라 연결 코드 -->
									<!-- <video id="video" width="320" height="240" autoplay></video>
									   <canvas id="canvas" width="960" height="720"></canvas>
									   <button type="button" id="webcamBtn">캡쳐하기</button> -->
									   
									<!-- 안드로이드 카메라 연결 코드 -->
								    <form id="take" action="${cpath}/uploadFormActionPersonal.do?user_id=${sessionScope.userVO.user_id}" method="POST" enctype="multipart/form-data" style="text-align: center;"> 
								    	<label for="cap" class="btn btn-outline-light" style="width: 150px; height: 40px; font-size: 20px; margin-right: 1%;">사진업로드     <span class="ion-ios-arrow-forward"></span></label>
								    	<!-- <input type="file" id= "cap" name="personalPhoto" accept="image/*" capture="camera" id="camera" style="display:none;"/> -->
								    	<input type="file" id="cap" name="uploadFile" multiple="multiple" style="display:none;">
								    	<label for="cap2" class="btn btn-outline-light" style="width: 150px; height: 40px; font-size: 20px; margin-left: 1%;">진단하기     <span class="ion-ios-arrow-forward"></span></label>
								    	<button id="cap2" style="display:none;">진단</button>
								    </form>
	    						</div>
	    					</div>
	    					<!--로딩바
							<div id="loading" style="margin-left: 0px;">
								<img src="${pageContext.request.contextPath}/resources/images/loadingbar.gif">
								<p>변환중입니다..잠시기다려주세요.</p>
							</div>-->	    					
	    				</div>
	    			</div>

	    		</div>
	    	</div>
	    </section>
	 </div>
	</div>
   <script>
      if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
         navigator.mediaDevices.getUserMedia({
            video : true
         }).then(function(stream) {
            var video = document.getElementById('video');
            video.srcObject = stream;
            video.play();
         });
      }

          
      var canvas = document.getElementById('canvas');
      var context = canvas.getContext('2d');
      var video = document.getElementById('video');
      document.getElementById("webcamBtn").addEventListener("click",
            function() {
               context.drawImage(video, 0, 0, 960, 720);
            });
   </script>
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
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>