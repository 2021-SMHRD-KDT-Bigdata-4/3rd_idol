
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<%
   response.setCharacterEncoding("utf-8");
   String spring = request.getParameter("spring");
   String summer = request.getParameter("summer");
   String fall = request.getParameter("fall");
   String winter = request.getParameter("winter");
   String imgname = request.getParameter("imgname");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>PALETTE</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap"
   rel="stylesheet">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/style.css">

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
   function logoutFn() {
      $.ajax({
         url : "logout.do",
         type : "get",
         success : function() {
            location.href = "home.do"
         },
         error : function() {
            alert("error");
         }
      });
   }
   $(document).ready(function() {
	   $('html, body').animate({scrollTop:$(#come).position().top}, 'slow');
	}); 
</script>

</head>
<body>

   <div class="page">
      <nav id="colorlib-main-nav" role="navigation">
         <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
         <div class="js-fullheight colorlib-table">
            <div class="img"
               style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg);"></div>
            <div class="colorlib-table-cell js-fullheight">
               <div class="row no-gutters">
                  <div class="col-md-12 text-center">
                     <h1 class="mb-4">
                        <a href="home.do" class="logo">palette</a>
                     </h1>
                     <ul>

                        <jsp:include page="menu.jsp">
                           <jsp:param name="pageSelection" value="3" />
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
                  <a class="colorlib-logo" href="home.do"
                     style="position: absolute; z-index: 2; top: 45px;">PALETTE</a>
               </div>
               <div method="post" action="${cpath}/login.do" class="loginForm">
                  <c:choose>
                     <c:when test="${sessionScope.userVO==null}">
                        <a href="${cpath}/login.do"
                           style="color: white; margin-left: 2160%;">Login</a>
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

         <section class="hero-wrap js-fullheight"
            style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_5.gif);">
            <div class="overlay"></div>
            <div class="container-fluid px-0">
               <div
                  class="row no-gutters text align-items-end js-fullheight justify-content-center"
                  data-scrollax-parent="true">
                  <div class="col-md-12 ftco-animate text-center">
                     <h1 class="bread">fashion color</h1>
                  </div>
               </div>
            </div>
         </section>

         <section class="ftco-section ftco-no-pb ftco-no-pt">
            <div class="container-fluid px-0" id="come">
               <div class="row no-gutters">

                  <div class="col-md-12 blog-wrap" style="text-align: center;">
                     <div class="row no-gutters align-items-center">
                        <div class="col-md-6 img js-fullheight">
                           <img style="height: 80%; width: 80%;" alt="의상이미지" src="${pageContext.request.contextPath}/resources/images/result/<%=imgname%>">   
                        </div>
                        <div class="col-md-6">
                           <div class="text p-md-5 p-4 ftco-animate">
                              <h2 class="mb-4"><a>당신의 의상 진단의 결과</a></h2>
                              <br>
                              <div class="progress" style="height: 50%">
                                 <b style="font-size: 15px; width: 10%;">봄 웜</b>
                                 <div class="progress-bar progress-bar-striped"
                                    role="progressbar" style="width: <%=spring%>%;" aria-valuenow="10"
                                    aria-valuemin="0" aria-valuemax="100"><%=spring%>%</div>
                              </div>
                              <br>
                              <div class="progress" style="height: 50%">
                                 <b style="font-size: 15px; width: 10%;">여름 쿨</b>
                                 <div class="progress-bar progress-bar-striped bg-success"
                                    role="progressbar" style="width: <%=summer%>%;" aria-valuenow="25"
                                    aria-valuemin="0" aria-valuemax="100"><%=summer%>%</div>
                              </div>
                              <br>
                              <div class="progress" style="height: 50%">
                                 <b style="font-size: 15px; width: 10%;">가을 웜</b>
                                 <div class="progress-bar progress-bar-striped bg-info"
                                    role="progressbar" style="width: <%=fall%>%;" aria-valuenow="50"
                                    aria-valuemin="0" aria-valuemax="100"><%=fall%>%</div>
                              </div>
                              <br>
                              <div class="progress" style="height: 50%">
                                 <b style="font-size: 15px; width: 10%;">겨울 쿨</b>
                                 <div class="progress-bar progress-bar-striped bg-warning"
                                    role="progressbar" style="width: <%=winter%>%;" aria-valuenow="75"
                                    aria-valuemin="0" aria-valuemax="100"><%=winter%>%</div>
                              </div>
                              <br><br>
                              <p>웜톤인 분들에게 잘 어울리는 옷 색상은 밝은 그린이나 오렌지 색상인<br>색감이 있는 옷들이 잘 어울리고 블랙 앤 화이트도 잘 어울립니다.</p>
                              <p>쿨톤인 분들은 밝은 톤에 여러 가지 색상이 잘 어울리고<br> 네이비색이나 블랙 앤 화이트 컬러가 잘 어울립니다.</p>

                           </div>
                        </div>
                     </div>
                  </div>

                  <!-- 작업공간 -->

                  <div class="col-md-12 blog-wrap" style="text-align: center;">
                     <div class="row no-gutters align-items-center">
                        <div class="col-md-6 img js-fullheight">
                           <div class="thumbnail_thumb_wrap__1pEkS _wrapper">
                              <a target="_blank" class="thumbnail_thumb__3Agq6"
                                 rel="noopener"
                                 data-nclick="N=a:img*N.image,r:55,i:27860085040"
                                 href="https://cr.shopping.naver.com/adcr.nhn?x=CZkHJXqz0dXqUCcq1QUsJv%2F%2F%2Fw%3D%3DsIJXLBkaa3btZ6hLzNM4dapV6a3sHAf9G%2BKfbss9%2BXn8UN9nb3L%2FHULtLoeUJq8lIp18zemDz%2FSRqadvbFr0ORsv%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX43AOm9Ya1ekv8zrXXe1kelpitC9vKM5u%2Bl2d%2FJzrPEzhu7tbnLsu0VCQVzJvP88MNjtB3JTfdunBHG39%2F8Dxb9Zi%2BfXE9TVJV%2Bj6i%2B7ShJQj3hX%2BcOXRfV9nH%2FK3lsjnOnQqAn3ZQC%2FjSct4AKqvxmsbV2i1QfHHe2h1Sfv7Z7GcQDjDu%2BJjZgDcPM6N3ViqCL1Pss%2BwZk5GkX1zPCIym9oiID8WP3efeQIWRMPHUu56qdbxRX6XYs4N49lvk4uAzWvqVO%2FzeQBuRAcVDqvh%2BKnJEzNGbp9yKqW%2F80axdXsLvG0bIWSFozOSFYwle9pm0zZrActSC2PHJrCPwV6kkZQdTjgcnQ8P%2FfaqsiJ%2BjseZyYwzdQuNAjqv%2FyjK6%2Bjk9%2FuTmJ8vu2MkVLXVVLykO22am1h0mLdIAyffi9hw71H6CyvSibW0gcbHjmNqif0EuPXeq0anrcc%2FY%2BcTWi756Z4XLZ1afpqBKX9VDLvfFMPlyEl40HEX%2B9BO%2FzAVEj2TNG5EzeaYNwX8538PT%2BynWET7Ul88jQlO3v0I2gsyoKl5S2NlNFZ7p12xuLAlO%2BivaKqCrAhVtXerv0rE8ciZMJVdznR4EhPC6BI08fc6TT2xWkbDrUFJ2hBG8QaB8WVzn&amp;nvMid=27860085040&amp;catId=50000830"><img
                                 width="168" height="168"
                                 alt="[무신사 스탠다드] 쉐르파 플리스 스웨트셔츠 [애시드 그린] MITL5005-AE"
                                 src=${pageContext.request.contextPath}/resources/images/s1.jpg
                                 style="height: 80%; width: 80%;"></a>
                           </div>
                           <div class="imgList_info_area__-L6s4">
                              <div class="imgList_title__3yJlT">
                                 <div class="imgList_label_wrap__36Uhj"></div>
                                 <a target="_black" class="imgList_link__XUg6J" rel="noopener"
                                    data-nclick="N=a:img*N.title,i:27860085040,r:55"
                                    title="[무신사 스탠다드] 쉐르파 플리스 스웨트셔츠 [애시드 그린] MITL5005-AE"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=CZkHJXqz0dXqUCcq1QUsJv%2F%2F%2Fw%3D%3DsIJXLBkaa3btZ6hLzNM4dapV6a3sHAf9G%2BKfbss9%2BXn8UN9nb3L%2FHULtLoeUJq8lIp18zemDz%2FSRqadvbFr0ORsv%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX43AOm9Ya1ekv8zrXXe1kelpitC9vKM5u%2Bl2d%2FJzrPEzhu7tbnLsu0VCQVzJvP88MNjtB3JTfdunBHG39%2F8Dxb9Zi%2BfXE9TVJV%2Bj6i%2B7ShJQj3hX%2BcOXRfV9nH%2FK3lsjnOnQqAn3ZQC%2FjSct4AKqvxmsbV2i1QfHHe2h1Sfv7Z7GcQDjDu%2BJjZgDcPM6N3ViqCL1Pss%2BwZk5GkX1zPCIym9oiID8WP3efeQIWRMPHUu56qdbxRX6XYs4N49lvk4uAzWvqVO%2FzeQBuRAcVDqvh%2BKnJEzNGbp9yKqW%2F80axdXsLvG0bIWSFozOSFYwle9pm0zZrActSC2PHJrCPwV6kkZQdTjgcnQ8P%2FfaqsiJ%2BjseZyYwzdQuNAjqv%2FyjK6%2Bjk9%2FuTmJ8vu2MkVLXVVLykO22am1h0mLdIAyffi9hw71H6CyvSibW0gcbHjmNqif0EuPXeq0anrcc%2FY%2BcTWi756Z4XLZ1afpqBKX9VDLvfFMPlyEl40HEX%2B9BO%2FzAVEj2TNG5EzeaYNwX8538PT%2BynWET7Ul88jQlO3v0I2gsyoKl5S2NlNFZ7p12xuLAlO%2BivaKqCrAhVtXerv0rE8ciZMJVdznR4EhPC6BI08fc6TT2xWkbDrUFJ2hBG8QaB8WVzn&amp;nvMid=27860085040&amp;catId=50000830">[무신사
                                    스탠다드] 쉐르파 플리스 스웨트셔츠 [애시드 그린] MITL5005-AE</a>
                              </div>
                              <strong class="imgList_price_area__30DeO"><span><span
                                    class="price_num__2WUXn">33,900원</span></span></strong>
                              <div class="imgList_mall_area__2dEKM">
                                 <a target="_blank" class="imgList_mall__qWV4h" rel="noopener"
                                    data-nclick="N=a:img*N.mall,r:55,i:27860085040" title="무신사"
                                    href="http://store.musinsa.com/app/?source=NVSH_LOGO"><span
                                    class="imgList_mall_icon__vyfFG"><em><span><span
                                             class="n_ico_npay__fcmAd" style="margin-left: 4px;">네이버페이</span></span></em></span><em
                                    class="imgList_mall_title__3fLr4">무신사</em></a>
                              </div>
                              <div class="imgList_etc_box__37vcN">
                                 <a target="_black" class="imgList_etc__uDOVv" rel="noopener"
                                    data-nclick="N=a:img*N.comment,r:55,i:27860085040"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=CZkHJXqz0dXqUCcq1QUsJv%2F%2F%2Fw%3D%3DsIJXLBkaa3btZ6hLzNM4dapV6a3sHAf9G%2BKfbss9%2BXn8UN9nb3L%2FHULtLoeUJq8lIp18zemDz%2FSRqadvbFr0ORsv%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX43AOm9Ya1ekv8zrXXe1kelpitC9vKM5u%2Bl2d%2FJzrPEzhu7tbnLsu0VCQVzJvP88MNjtB3JTfdunBHG39%2F8Dxb9Zi%2BfXE9TVJV%2Bj6i%2B7ShJQj3hX%2BcOXRfV9nH%2FK3lsjnOnQqAn3ZQC%2FjSct4AKqvxmsbV2i1QfHHe2h1Sfv7Z7GcQDjDu%2BJjZgDcPM6N3ViqCL1Pss%2BwZk5GkX1zPCIym9oiID8WP3efeQIWRMPHUu56qdbxRX6XYs4N49lvk4uAzWvqVO%2FzeQBuRAcVDqvh%2BKnJEzNGbp9yKqW%2F80axdXsLvG0bIWSFozOSFYwle9pm0zZrActSC2PHJrCPwV6kkZQdTjgcnQ8P%2FfaqsiJ%2BjseZyYwzdQuNAjqv%2FyjK6%2Bjk9%2FuTmJ8vu2MkVLXVVLykO22am1h0mLdIAyffi9hw71H6CyvSibW0gcbHjmNqif0EuPXeq0anrcc%2FY%2BcTWi756Z4XLZ1afpqBKX9VDLvfFMPlyEl40HEX%2B9BO%2FzAVEj2TNG5EzeaYNwX8538PT%2BynWET7Ul88jQlO3v0I2gsyoKl5S2NlNFZ7p12xuLAlO%2BivaKqCrAhVtXerv0rE8ciZMJVdznR4EhPC6BI08fc6TT2xWkbDrUFJ2hBG8QaB8WVzn&amp;nvMid=27860085040&amp;catId=50000830">리뷰
                                    <em class="imgList_num__K3JQN">916</em>
                                 </a>
                              </div>
                           </div>
                           <!-- 왼쪽 공간 -->

                        </div>
                        <div class="col-md-6 img js-fullheight">
                           <div class="thumbnail_thumb_wrap__1pEkS _wrapper">
                              <a target="_blank" class="thumbnail_thumb__3Agq6"
                                 rel="noopener"
                                 data-nclick="N=a:img*N.image,r:23,i:21432125996"
                                 href="https://cr.shopping.naver.com/adcr.nhn?x=7b9zwdRGYH3atwIgw6Ew6P%2F%2F%2Fw%3D%3DsZjXel3HGRsUNgJDvrPwoPOA0i%2F6JCDATLZ%2Fqcn%2B3x2PJqG%2F4DZok%2FECS0uKJwy26YKUfEU7C0560r8RhvSF718v%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX4hNVgxIXxvpll17Ba8%2F01BU0wMCDrDnIbqrimnHA7FX0YRYxqPP6IEd8ht3OS2rucuVG%2F9eddMFrpL1SrCphLI89Ly6RQr2uCC8VUFWULhWz3XF%2BE%2FIz2aJbf4FEhW6FLyGv2dEKnIsssf08T95o%2BV4hUih%2F4vt4zOQr7Bjvlon9ZQ8wKxRlBjFX8asa8aNjeTIHqxkFdtOnnagjXRlMh9SoAv4lTzI06I860I2v7rAqy%2FJPBziuq%2FEBn3ErXrfRK7oSnGQLFwUoA7YPGsWyQ5jFY%2FYtDZLqBu5mjEO5GKuj598NP1WyQEqJc2uNeqEQyJ3ETljFMlmC0y5LNB%2FNIWc92wt87y80RUW0I4PzeXyHxsmOr2zwb6jZnGG0hvnNsaduiTLukEmHEP0LOcg6iuauTk7Mt4LhqknrzMzpU8wcjYZdpFxPvHsVaxgOf9dLTogtGnGwLUYrF%2BIFOmEEkSfRRs2Tl2LVXyNQxua0eKL8GruH08DlKshetxY8KUEZb&amp;nvMid=21432125996&amp;catId=50000830"><img
                                 width="168" height="168" alt="오버핏 데일리 긴팔 티셔츠 (당일출고)"
                                 src=${pageContext.request.contextPath}/resources/images/s2.jpg
                                 style="height: 80%; width: 80%;"></a>
                              <div class="thumbnail_btn_box__3_V2T"></div>
                           </div>
                           <div class="imgList_info_area__-L6s4">
                              <div class="imgList_title__3yJlT">
                                 <div class="imgList_label_wrap__36Uhj"></div>
                                 <a target="_black" class="imgList_link__XUg6J" rel="noopener"
                                    data-nclick="N=a:img*N.title,i:21432125996,r:23"
                                    title="오버핏 데일리 긴팔 티셔츠 (당일출고)"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=7b9zwdRGYH3atwIgw6Ew6P%2F%2F%2Fw%3D%3DsZjXel3HGRsUNgJDvrPwoPOA0i%2F6JCDATLZ%2Fqcn%2B3x2PJqG%2F4DZok%2FECS0uKJwy26YKUfEU7C0560r8RhvSF718v%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX4hNVgxIXxvpll17Ba8%2F01BU0wMCDrDnIbqrimnHA7FX0YRYxqPP6IEd8ht3OS2rucuVG%2F9eddMFrpL1SrCphLI89Ly6RQr2uCC8VUFWULhWz3XF%2BE%2FIz2aJbf4FEhW6FLyGv2dEKnIsssf08T95o%2BV4hUih%2F4vt4zOQr7Bjvlon9ZQ8wKxRlBjFX8asa8aNjeTIHqxkFdtOnnagjXRlMh9SoAv4lTzI06I860I2v7rAqy%2FJPBziuq%2FEBn3ErXrfRK7oSnGQLFwUoA7YPGsWyQ5jFY%2FYtDZLqBu5mjEO5GKuj598NP1WyQEqJc2uNeqEQyJ3ETljFMlmC0y5LNB%2FNIWc92wt87y80RUW0I4PzeXyHxsmOr2zwb6jZnGG0hvnNsaduiTLukEmHEP0LOcg6iuauTk7Mt4LhqknrzMzpU8wcjYZdpFxPvHsVaxgOf9dLTogtGnGwLUYrF%2BIFOmEEkSfRRs2Tl2LVXyNQxua0eKL8GruH08DlKshetxY8KUEZb&amp;nvMid=21432125996&amp;catId=50000830">오버핏
                                    데일리 긴팔 티셔츠</a>
                              </div>
                              <strong class="imgList_price_area__30DeO"><span><span
                                    class="price_num__2WUXn">9,800원</span></span></strong>
                              <div class="imgList_mall_area__2dEKM">
                                 <a target="_blank" class="imgList_mall__qWV4h" rel="noopener"
                                    data-nclick="N=a:img*N.mall,r:23,i:21432125996" title="룩핀"
                                    href="http://www.lookpin.co.kr"><span
                                    class="imgList_mall_icon__vyfFG"><em><span><span
                                             class="n_ico_npay__fcmAd" style="margin-left: 4px;">네이버페이</span></span></em></span><em
                                    class="imgList_mall_title__3fLr4">룩핀</em></a>
                              </div>
                              <div class="imgList_etc_box__37vcN">
                                 <a target="_black" class="imgList_etc__uDOVv" rel="noopener"
                                    data-nclick="N=a:img*N.comment,r:23,i:21432125996"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=7b9zwdRGYH3atwIgw6Ew6P%2F%2F%2Fw%3D%3DsZjXel3HGRsUNgJDvrPwoPOA0i%2F6JCDATLZ%2Fqcn%2B3x2PJqG%2F4DZok%2FECS0uKJwy26YKUfEU7C0560r8RhvSF718v%2BjB2erv%2BZ%2Brrs5VHOiTT%2Fs8htyn7qbZ155SxFlMX4hNVgxIXxvpll17Ba8%2F01BU0wMCDrDnIbqrimnHA7FX0YRYxqPP6IEd8ht3OS2rucuVG%2F9eddMFrpL1SrCphLI89Ly6RQr2uCC8VUFWULhWz3XF%2BE%2FIz2aJbf4FEhW6FLyGv2dEKnIsssf08T95o%2BV4hUih%2F4vt4zOQr7Bjvlon9ZQ8wKxRlBjFX8asa8aNjeTIHqxkFdtOnnagjXRlMh9SoAv4lTzI06I860I2v7rAqy%2FJPBziuq%2FEBn3ErXrfRK7oSnGQLFwUoA7YPGsWyQ5jFY%2FYtDZLqBu5mjEO5GKuj598NP1WyQEqJc2uNeqEQyJ3ETljFMlmC0y5LNB%2FNIWc92wt87y80RUW0I4PzeXyHxsmOr2zwb6jZnGG0hvnNsaduiTLukEmHEP0LOcg6iuauTk7Mt4LhqknrzMzpU8wcjYZdpFxPvHsVaxgOf9dLTogtGnGwLUYrF%2BIFOmEEkSfRRs2Tl2LVXyNQxua0eKL8GruH08DlKshetxY8KUEZb&amp;nvMid=21432125996&amp;catId=50000830">리뷰
                                    <em class="imgList_num__K3JQN">999+</em>
                                 </a>
                              </div>
                           </div>
                           <!-- 오른쪽 공간 -->

                        </div>
                     </div>
                  </div>
                  <div class="col-md-12 blog-wrap" style="text-align: center;">
                     <!-- <div style="height: 100px;"></div> -->
                     <div class="row no-gutters align-items-center">
                        <div class="col-md-6 img js-fullheight">
                           <div>
                              <a
                                 href="https://adcr.naver.com/adcr?x=NY6Zb1dhYfXzN/bBokhbwv///w==kxEqORzKPSQ9aD9jGnyq92uxB8k1txwr0lPXAJPrNRwnUCFbaFfXiNIdMMyIkerbqUSW/dNsrc09tVCJB0cVCn8cLE5GoPqJ9+945ShcrbCKVc4832Q+xWU6ybxUo+by6IXlZB9lmFOifkrS/DtUi4e9wroTYs5PvYDTDkCXseb59NGYJw38bMItBVZjgOZFd919RJdnCEPB2iNDJQHnHm23oOIW7ifZm2n0RBktBajd2Fm0kDA79k61ZDOXto1lykXCH+Mvf6luXw2T3pXdK7pQiNG8ko/M6hBug4Orf+cb2UFfiDocZEOSQNYRP52rO95bjMqzC6+cYzn7x3o+2nKEZJxn8Joa0rlpcSautMhh6SHDRsJSdU3TFF3ZHxWYeB+CQds1lrwupgjIsqnIAZRhT1u9wmEwoB/Fq7Uxb6aEzGOfcMsqpU5Q9JZlkHslrIl70dOc3Ky7z+oGti1NktLIHqHBZVFDVN/zXqDQhR/lI47b/mvuFUepM7P20Lyz44yv2BJ/BLG9qW4ofDi5BuNsm7QCJvrBtHMSDfNleq86WrntrtqTyQf4PTGM9km4I2cDX6FeiBFT1RQDNWZ/fEqO2f5LcNEU+zLEubqlBDCH2dyCTPYuF1yAtOYF0uWsmdGg1IFZSxrc2y1d8xmiVT6ntLKLHFDqY2PeaF1LHl4SKRdSqsP+SLhq4V+65uBwyp92gFFKRiRULjGHFo4UPgbLlKCMrUBI3588GVsllfO008nXjvuGCr3OLrtfjkWFzSwr9jSGijCDHdt66gRaYFnVykIj7pyc0FqHVGwkRcxi7pmQ88VUolmjCCPWRu/uzCfRM5VuRHyZxQcwzpxLus4mlHJS9q+09ezwz/36LEMSDZoKPFnyGPWviFV3r/+xLmxkaEL5T7RCZMN88YjwHbnzpTmd8U0xjLT+sbc8F99XY3hetijLMwVRmD8lkyG3eOPpkAIDmEiIatw00uybgwGTpLawNOR79lqGpwovU3d4q2ApOsP9mmJJ+XBbI0bbhooyqvzKpvmoTw5XuBHr3lcFfHyIwnFXRMVLViOre6vBxhZGJCS555T0KMbNl/jQL"><img
                                 src="https://image.adidas.co.kr/upload/prod/basic/source/GL5681-02-03.jpg"
                                 style="height: 80%; width: 80%;"></a>
                           </div>
                           <div class="imgList_info_area__-L6s4">
                              <div class="imgList_title__3yJlT">
                                 <div class="imgList_label_wrap__36Uhj"></div>
                                 <a target="_black" class="imgList_link__XUg6J" rel="noopener"
                                    data-nclick="N=a:img*A.title,i:26606266611,r:51"
                                    title="[공홈]M 퓨쳐아이콘 우븐 TT/GL5681"
                                    href="https://adcr.naver.com/adcr?x=NY6Zb1dhYfXzN/bBokhbwv///w==kxEqORzKPSQ9aD9jGnyq92uxB8k1txwr0lPXAJPrNRwnUCFbaFfXiNIdMMyIkerbqUSW/dNsrc09tVCJB0cVCn8cLE5GoPqJ9+945ShcrbCKVc4832Q+xWU6ybxUo+by6IXlZB9lmFOifkrS/DtUi4e9wroTYs5PvYDTDkCXseb59NGYJw38bMItBVZjgOZFd919RJdnCEPB2iNDJQHnHm23oOIW7ifZm2n0RBktBajd2Fm0kDA79k61ZDOXto1lykXCH+Mvf6luXw2T3pXdK7pQiNG8ko/M6hBug4Orf+cb2UFfiDocZEOSQNYRP52rO95bjMqzC6+cYzn7x3o+2nKEZJxn8Joa0rlpcSautMhh6SHDRsJSdU3TFF3ZHxWYeB+CQds1lrwupgjIsqnIAZRhT1u9wmEwoB/Fq7Uxb6aEzGOfcMsqpU5Q9JZlkHslrIl70dOc3Ky7z+oGti1NktLIHqHBZVFDVN/zXqDQhR/lI47b/mvuFUepM7P20Lyz44yv2BJ/BLG9qW4ofDi5BuNsm7QCJvrBtHMSDfNleq86WrntrtqTyQf4PTGM9km4I2cDX6FeiBFT1RQDNWZ/fEqO2f5LcNEU+zLEubqlBDCH2dyCTPYuF1yAtOYF0uWsmdGg1IFZSxrc2y1d8xmiVT6ntLKLHFDqY2PeaF1LHl4SKRdSqsP+SLhq4V+65uBwyp92gFFKRiRULjGHFo4UPgbLlKCMrUBI3588GVsllfO008nXjvuGCr3OLrtfjkWFzSwr9jSGijCDHdt66gRaYFnVykIj7pyc0FqHVGwkRcxi7pmQ88VUolmjCCPWRu/uzCfRM5VuRHyZxQcwzpxLus4mlHJS9q+09ezwz/36LEMSDZoKPFnyGPWviFV3r/+xLmxkaEL5T7RCZMN88YjwHbnzpTmd8U0xjLT+sbc8F99XY3hetijLMwVRmD8lkyG3eOPpkAIDmEiIatw00uybgwGTpLawNOR79lqGpwovU3d4q2ApOsP9mmJJ+XBbI0bbhooyqvzKpvmoTw5XuBHr3lcFfHyIwnFXRMVLViOre6vBxhZGJCS555T0KMbNl/jQL">[공홈]M
                                    퓨쳐아이콘 우븐 TT/GL5681</a>
                              </div>
                              <strong class="imgList_price_area__30DeO"><span><span
                                    class="price_num__2WUXn">66,500원</span></span></strong>
                              <div class="imgList_mall_area__2dEKM">
                                 <a target="_blank" class="imgList_mall__qWV4h" rel="noopener"
                                    data-nclick="N=a:img*A.mall,i:26606266611,r:51"
                                    title="아디다스공식온라인스토어"
                                    href="https://adcr.naver.com/adcr?x=NY6Zb1dhYfXzN/bBokhbwv///w==kxEqORzKPSQ9aD9jGnyq92uxB8k1txwr0lPXAJPrNRwnUCFbaFfXiNIdMMyIkerbqUSW/dNsrc09tVCJB0cVCn8cLE5GoPqJ9+945ShcrbCKVc4832Q+xWU6ybxUo+by6IXlZB9lmFOifkrS/DtUi4e9wroTYs5PvYDTDkCXseb59NGYJw38bMItBVZjgOZFd919RJdnCEPB2iNDJQHnHm23oOIW7ifZm2n0RBktBajd2Fm0kDA79k61ZDOXto1lykXCH+Mvf6luXw2T3pXdK7pQiNG8ko/M6hBug4Orf+cb2UFfiDocZEOSQNYRP52rO95bjMqzC6+cYzn7x3o+2nKEZJxn8Joa0rlpcSautMhh6SHDRsJSdU3TFF3ZHxWYeB+CQds1lrwupgjIsqnIAZRhT1u9wmEwoB/Fq7Uxb6aEzGOfcMsqpU5Q9JZlkHslrIl70dOc3Ky7z+oGti1NktLIHqHBZVFDVN/zXqDQhR/lI47b/mvuFUepM7P20Lyz44yv2BJ/BLG9qW4ofDi5BuNsm7QCJvrBtHMSDfNleq86WrntrtqTyQf4PTGM9km4I2cDX6FeiBFT1RQDNWZ/fEqO2f5LcNEU+zLEubqlBDCH2dyCTPYuF1yAtOYF0uWsmdGg1IFZSxrc2y1d8xmiVT6ntLKLHFDqY2PeaF1LHl4SKRdSqsP+SLhq4V+65uBwyp92gFFKRiRULjGHFo4UPgbLlKCMrUBI3588GVsllfO008nXjvuGCr3OLrtfjkWFzSwr9jSGijCDHdt66gRaYFnVykIj7pyc0FqHVGwkRcxi7pmQ88VUolmjCCPWRu/uzCfRM5VuRHyZxQcwzpxLus4mlHJS9q+09ezwz/36LEMSDZoKPFnyGPWviFV3r/+xLmxkaEL5T7RCZMN88YjwHbnzpTmd8U0xjLT+sbc8F99XY3hetijLMwVRmD8lkyG3eOPpkAIDmEiIatw00uybgwGTpLawNOR79lqGpwovU3d4q2ApOsP9mmJJ+XBbI0bbhooyqvzKpvmoTw5XuBHr3lcFfHyIwnFXRMVLViOre6vBxhZGJCS555T0KMbNl/jQL"><span
                                    class="imgList_mall_icon__vyfFG"></span><span
                                    class="imgList_mall_title__3fLr4">아디다스공식온라인스토어</span></a>
                              </div>
                              <a target="_black" class="imgList_event__o7sjt" rel="noopener"
                                 data-nclick="N=a:img*A.des,i:26606266611,r:51"
                                 href="https://adcr.naver.com/adcr?x=NY6Zb1dhYfXzN/bBokhbwv///w==kxEqORzKPSQ9aD9jGnyq92uxB8k1txwr0lPXAJPrNRwnUCFbaFfXiNIdMMyIkerbqUSW/dNsrc09tVCJB0cVCn8cLE5GoPqJ9+945ShcrbCKVc4832Q+xWU6ybxUo+by6IXlZB9lmFOifkrS/DtUi4e9wroTYs5PvYDTDkCXseb59NGYJw38bMItBVZjgOZFd919RJdnCEPB2iNDJQHnHm23oOIW7ifZm2n0RBktBajd2Fm0kDA79k61ZDOXto1lykXCH+Mvf6luXw2T3pXdK7pQiNG8ko/M6hBug4Orf+cb2UFfiDocZEOSQNYRP52rO95bjMqzC6+cYzn7x3o+2nKEZJxn8Joa0rlpcSautMhh6SHDRsJSdU3TFF3ZHxWYeB+CQds1lrwupgjIsqnIAZRhT1u9wmEwoB/Fq7Uxb6aEzGOfcMsqpU5Q9JZlkHslrIl70dOc3Ky7z+oGti1NktLIHqHBZVFDVN/zXqDQhR/lI47b/mvuFUepM7P20Lyz44yv2BJ/BLG9qW4ofDi5BuNsm7QCJvrBtHMSDfNleq86WrntrtqTyQf4PTGM9km4I2cDX6FeiBFT1RQDNWZ/fEqO2f5LcNEU+zLEubqlBDCH2dyCTPYuF1yAtOYF0uWsmdGg1IFZSxrc2y1d8xmiVT6ntLKLHFDqY2PeaF1LHl4SKRdSqsP+SLhq4V+65uBwyp92gFFKRiRULjGHFo4UPgbLlKCMrUBI3588GVsllfO008nXjvuGCr3OLrtfjkWFzSwr9jSGijCDHdt66gRaYFnVykIj7pyc0FqHVGwkRcxi7pmQ88VUolmjCCPWRu/uzCfRM5VuRHyZxQcwzpxLus4mlHJS9q+09ezwz/36LEMSDZoKPFnyGPWviFV3r/+xLmxkaEL5T7RCZMN88YjwHbnzpTmd8U0xjLT+sbc8F99XY3hetijLMwVRmD8lkyG3eOPpkAIDmEiIatw00uybgwGTpLawNOR79lqGpwovU3d4q2ApOsP9mmJJ+XBbI0bbhooyqvzKpvmoTw5XuBHr3lcFfHyIwnFXRMVLViOre6vBxhZGJCS555T0KMbNl/jQL">멤버스
                                 위크 할인!</a>
                              <div class="imgList_npay_box__2vGkv">
                                 <span><span class="n_ico_npay__fcmAd">네이버페이</span></span><span
                                    class="n_npay_info__2GhW_"><span>포인트 1,995원</span></span>
                              </div>
                           </div>
                           <!-- 왼쪽 공간 -->

                        </div>
                        <div class="col-md-6 img js-fullheight">
                           <div class="thumbnail_thumb_wrap__1pEkS _wrapper">
                              <a target="_blank" class="thumbnail_thumb__3Agq6"
                                 rel="noopener"
                                 data-nclick="N=a:img*N.image,r:1,i:82418653882"
                                 href="https://cr.shopping.naver.com/adcr.nhn?x=8McUVuqKPPxe1VdQrWT2Jf%2F%2F%2Fw%3D%3DsBQ9%2BdbbhfG1VAEguiWOX8lJN1u6C4S4He%2BkqjO5DB4QIHE6tnqLaZJMuSjyNWWs%2B%2F7x2jivKdgh1AoQzzPPoTN9%2BKy%2Fm0d%2BgYWHtEf61Jo4hrX7i8ROREiNblWok2%2BM41d8SgqqqoNX%2F9d0NzeYi8tDAPwr%2FFT3kDCemAd0osunZ4sBf7SMcG1x6szpHFXyFy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBusI6FpMcM1Azq%2B631DB0uWhahuRE8GyA1W8tj6auxFDaglD7LFWMnpwYWOIxOH8OdNn311COTjP3Da96%2Fvw9yoXmVHoDoCgs5Q2ROmR90a7KBAPNmwLocyDSy0uiRVz0hc3tk2zN7oJYimtHGvdXEFodVedJb9%2FVFJDQRgpKbnSNihF8AUxlUAT4sgKKyQlo3MLRZ9YXXr1P1y9Vw38Tddw42W359%2Ftb05aZOaPc3cQHOXckpo%2BTe9KaTiALaheOMxMvFBBsLPbCOYGQZQdJR%2FmVAJlHdfUGqgGbL0h2AiVpHaonzdigxeh7HgGLl%2FmkuKqr1eh%2B6k%2BRhTkqUyD%2BEIj8HrSOr7BtGExhOHmwzxpA7YC%2FRCEujuKULJR55DvK7dHD49JmnYaWOMDvN5aAHfskBaQVMYB2BVEMs2CnPiWBU%2FZ7KdrgohB5WwWgc%2FoFv0UbNk5di1V8jUMbmtHii%2FBq7h9PA5SrIXrcWPClBGWw%3D%3D&amp;nvMid=82418653882&amp;catId=50000830"><img
                                 width="168" height="168"
                                 alt="트리플에이 무지티 레이어드 기본 라운드 반팔 (18수 면,남녀공용,빅사이즈)"
                                 src="https://shop-phinf.pstatic.net/20200826_23/1598423754749liySy_JPEG/35783589280440436_1309521990.jpg?type=m510"
                                 style="height: 80%; width: 80%;"></a>
                           </div>
                           <div class="imgList_info_area__-L6s4">
                              <div class="imgList_title__3yJlT">
                                 <div class="imgList_label_wrap__36Uhj"></div>
                                 <a target="_black" class="imgList_link__XUg6J" rel="noopener"
                                    data-nclick="N=a:img*N.title,i:82418653882,r:1"
                                    title="트리플에이 무지티 레이어드 기본 라운드 반팔 (18수 면,남녀공용,빅사이즈)"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=8McUVuqKPPxe1VdQrWT2Jf%2F%2F%2Fw%3D%3DsBQ9%2BdbbhfG1VAEguiWOX8lJN1u6C4S4He%2BkqjO5DB4QIHE6tnqLaZJMuSjyNWWs%2B%2F7x2jivKdgh1AoQzzPPoTN9%2BKy%2Fm0d%2BgYWHtEf61Jo4hrX7i8ROREiNblWok2%2BM41d8SgqqqoNX%2F9d0NzeYi8tDAPwr%2FFT3kDCemAd0osunZ4sBf7SMcG1x6szpHFXyFy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBusI6FpMcM1Azq%2B631DB0uWhahuRE8GyA1W8tj6auxFDaglD7LFWMnpwYWOIxOH8OdNn311COTjP3Da96%2Fvw9yoXmVHoDoCgs5Q2ROmR90a7KBAPNmwLocyDSy0uiRVz0hc3tk2zN7oJYimtHGvdXEFodVedJb9%2FVFJDQRgpKbnSNihF8AUxlUAT4sgKKyQlo3MLRZ9YXXr1P1y9Vw38Tddw42W359%2Ftb05aZOaPc3cQHOXckpo%2BTe9KaTiALaheOMxMvFBBsLPbCOYGQZQdJR%2FmVAJlHdfUGqgGbL0h2AiVpHaonzdigxeh7HgGLl%2FmkuKqr1eh%2B6k%2BRhTkqUyD%2BEIj8HrSOr7BtGExhOHmwzxpA7YC%2FRCEujuKULJR55DvK7dHD49JmnYaWOMDvN5aAHfskBaQVMYB2BVEMs2CnPiWBU%2FZ7KdrgohB5WwWgc%2FoFv0UbNk5di1V8jUMbmtHii%2FBq7h9PA5SrIXrcWPClBGWw%3D%3D&amp;nvMid=82418653882&amp;catId=50000830">트리플에이
                                    무지티 레이어드 기본 라운드 반팔 (18수 면,남녀공용,빅사이즈)</a>
                              </div>
                              <strong class="imgList_price_area__30DeO"><span><span
                                    class="price_num__2WUXn">3,850원</span></span></strong>
                              <div class="imgList_mall_area__2dEKM">
                                 <a target="_blank" class="imgList_mall__qWV4h" rel="noopener"
                                    data-nclick="N=a:img*N.mall,r:1,i:82418653882" title="킬미타이거"
                                    href="https://smartstore.naver.com/killmetiger"><span
                                    class="imgList_mall_icon__vyfFG"><em><span><span
                                             class="n_ico_npay_plus__1pi8I" style="margin-left: 4px;">네이버플러스멤버십</span></span></em></span><em
                                    class="imgList_mall_title__3fLr4">킬미타이거</em></a>
                              </div>
                              <div class="imgList_etc_box__37vcN">
                                 <a target="_black" class="imgList_etc__uDOVv" rel="noopener"
                                    data-nclick="N=a:img*N.comment,r:1,i:82418653882"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=8McUVuqKPPxe1VdQrWT2Jf%2F%2F%2Fw%3D%3DsBQ9%2BdbbhfG1VAEguiWOX8lJN1u6C4S4He%2BkqjO5DB4QIHE6tnqLaZJMuSjyNWWs%2B%2F7x2jivKdgh1AoQzzPPoTN9%2BKy%2Fm0d%2BgYWHtEf61Jo4hrX7i8ROREiNblWok2%2BM41d8SgqqqoNX%2F9d0NzeYi8tDAPwr%2FFT3kDCemAd0osunZ4sBf7SMcG1x6szpHFXyFy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBusI6FpMcM1Azq%2B631DB0uWhahuRE8GyA1W8tj6auxFDaglD7LFWMnpwYWOIxOH8OdNn311COTjP3Da96%2Fvw9yoXmVHoDoCgs5Q2ROmR90a7KBAPNmwLocyDSy0uiRVz0hc3tk2zN7oJYimtHGvdXEFodVedJb9%2FVFJDQRgpKbnSNihF8AUxlUAT4sgKKyQlo3MLRZ9YXXr1P1y9Vw38Tddw42W359%2Ftb05aZOaPc3cQHOXckpo%2BTe9KaTiALaheOMxMvFBBsLPbCOYGQZQdJR%2FmVAJlHdfUGqgGbL0h2AiVpHaonzdigxeh7HgGLl%2FmkuKqr1eh%2B6k%2BRhTkqUyD%2BEIj8HrSOr7BtGExhOHmwzxpA7YC%2FRCEujuKULJR55DvK7dHD49JmnYaWOMDvN5aAHfskBaQVMYB2BVEMs2CnPiWBU%2FZ7KdrgohB5WwWgc%2FoFv0UbNk5di1V8jUMbmtHii%2FBq7h9PA5SrIXrcWPClBGWw%3D%3D&amp;nvMid=82418653882&amp;catId=50000830">리뷰
                                    <em class="imgList_num__K3JQN">999+</em>
                                 </a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
                                    data-nclick="N=a:img*N.purchase,r:1,i:82418653882"
                                    href="https://cr.shopping.naver.com/adcr.nhn?x=8McUVuqKPPxe1VdQrWT2Jf%2F%2F%2Fw%3D%3DsBQ9%2BdbbhfG1VAEguiWOX8lJN1u6C4S4He%2BkqjO5DB4QIHE6tnqLaZJMuSjyNWWs%2B%2F7x2jivKdgh1AoQzzPPoTN9%2BKy%2Fm0d%2BgYWHtEf61Jo4hrX7i8ROREiNblWok2%2BM41d8SgqqqoNX%2F9d0NzeYi8tDAPwr%2FFT3kDCemAd0osunZ4sBf7SMcG1x6szpHFXyFy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBusI6FpMcM1Azq%2B631DB0uWhahuRE8GyA1W8tj6auxFDaglD7LFWMnpwYWOIxOH8OdNn311COTjP3Da96%2Fvw9yoXmVHoDoCgs5Q2ROmR90a7KBAPNmwLocyDSy0uiRVz0hc3tk2zN7oJYimtHGvdXEFodVedJb9%2FVFJDQRgpKbnSNihF8AUxlUAT4sgKKyQlo3MLRZ9YXXr1P1y9Vw38Tddw42W359%2Ftb05aZOaPc3cQHOXckpo%2BTe9KaTiALaheOMxMvFBBsLPbCOYGQZQdJR%2FmVAJlHdfUGqgGbL0h2AiVpHaonzdigxeh7HgGLl%2FmkuKqr1eh%2B6k%2BRhTkqUyD%2BEIj8HrSOr7BtGExhOHmwzxpA7YC%2FRCEujuKULJR55DvK7dHD49JmnYaWOMDvN5aAHfskBaQVMYB2BVEMs2CnPiWBU%2FZ7KdrgohB5WwWgc%2FoFv0UbNk5di1V8jUMbmtHii%2FBq7h9PA5SrIXrcWPClBGWw%3D%3D&amp;nvMid=82418653882&amp;catId=50000830">구매
                                    <em class="imgList_num__K3JQN">999+</em>
                                 </a>
                              </div>
                           </div>
                           <!-- 오른쪽 공간 -->

                        </div>
                     </div>
                  </div>
                  <!-- 작업공간 -->
               </div>
            </div>
         </section>


         <jsp:include page="footer.jsp">
            <jsp:param name="pageSelection" value="footer" />
         </jsp:include>

         <!-- loader -->
         <div id="ftco-loader" class="show fullscreen">
            <svg class="circular" width="48px" height="48px">
               <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
                  stroke-width="4" stroke="#eeeeee" />
               <circle class="path" cx="24" cy="24" r="22" fill="none"
                  stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
         </div>

      </div>
   </div>


   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script
      src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>