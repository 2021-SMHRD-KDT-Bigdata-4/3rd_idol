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
          function goDel(){
             var user_id=$("#user_id").val();
                $.ajax({
                   url : "userDelete.do",
                    data : {"user_id":user_id},
                    success : function(data){  
                    	 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
                    	     document.removefrm.submit();
                    	     location.href="home.do";
                    	 }else{   //취소
                    	     return false;
                    	 }                       
                    },       
                    error : function(){alert("error");}            
                });
           }

        
   </script>  
   <style type="text/css">
   strong{
   font-weight: 700;
   }
   </style>  
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
                   <jsp:param name="pageSelection" value="5" />
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
      
      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/gradation2.png);">
         <div class="overlay"></div>
         <div class="container-fluid px-0">
           <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
             <div class="col-md-12 ftco-animate text-center">
               <h1 class="bread">mypage</h1>
             </div>
           </div>
         </div>
      </section>

       <section class="ftco-section ftco-no-pt ftco-no-pb ftco-about ftco-counter">
       <br>
       <br>
            <div class="container" style="width: 600px;">
               <div class="panel panel-default">
               
               <!-- 폼 넣을 곳 -->
                  <div style="height:50px"></div>
                  <form id="frm" method="post" action="${cpath}/userUpdate.do">
                    <fieldset>
                       <div align="center">
                      <h1><strong>회원정보</strong></h1>
                      </div>
                      <br>
                      <div class="form-group">
                        <label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
                        <input type="text" class="form-control" readonly="readonly" name="user_id" id="user_id" value="${vo.user_id}"  placeholder="${vo.user_id}">     
                        </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" name="user_password" id="user_password" value="${vo.user_password}" placeholder="${vo.user_password}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" class="form-control" name="user_name" id="user_name" value="${vo.user_name}" placeholder="${vo.user_name}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Age</label>
                        <input type="text" class="form-control" name="user_age" id="user_age" value="${vo.user_age}" placeholder="${vo.user_age}">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Gender</label>
                        <input type="text" class="form-control" name="user_gender" id="user_gender" value="${vo.user_gender}" placeholder="${vo.user_gender}">
                      </div>
                      <br>
                      <div align="center">
                      <input type="submit" value="수정" class="btn btn-dark" style="width: 80px; height: 40px;" onclick="updateFn()">   
                     <a href="${cpath}/goResult.do?user_id=${vo.user_id}"><input type='button' value='진단내역' class="btn btn-dark" style="width: 110px; height: 40px;"></a>
                     <br>
                     <br>
                     <a style="font-size:14px;">회원탈퇴를 원하십니까? > </a>
                     <a type="button" style="font-size : 14px" onclick="goDel()"> 회원탈퇴</a>   
                     </div>
                    </fieldset>
                  </form>
                  </div>
                  <br>
                  <!-- 폼 넣을 곳 -->                  
               </div>
         </section>
            </div>
		         <br><br><br>
		         
         <jsp:include page="footer.jsp">
         	<jsp:param name="pageSelection" value="footer" />
      	 </jsp:include>

      <!-- loader -->
      <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

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