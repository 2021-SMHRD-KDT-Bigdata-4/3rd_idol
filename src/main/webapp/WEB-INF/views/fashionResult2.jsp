<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

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
              <h1 class="mb-4"><a href="home.do" class="logo">palette</a></h1>
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

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_5.gif);">
      	<div class="overlay"></div>
	      <div class="container-fluid px-0">
	        <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-12 ftco-animate text-center">
	            <h1 class="bread">fashion color</h1>
	          </div>
	        </div>
	      </div>
      </section>

	    <section class="ftco-section ftco-no-pb ftco-no-pt">
	    	<div class="container-fluid px-0">
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
		   					<!-- 왼쪽 공간 -->
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:82568217361"
												href="https://cr.shopping.naver.com/adcr.nhn?x=0J45GCyXKdq6mG8XlUXtJv%2F%2F%2Fw%3D%3Dsn6f%2FEd7DkjW%2BLB8a2WVBFnbWb%2BHuySarW58RfyvjAyszZMFZ2NPBunQBK1dzovIxlWQiz5I58xM9qaEYl2wtU0z2keabnMVQqL4%2FoDd6uI7yllzkKYY4EvmDRZD6SBjrkaImhbMjsD3by3Q7nO56SZMSDg1sgHZkpslap7Xr9%2FbIt9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20k3XwfW%2B2FSoY%2FAoLhnCLCC9OIeAywPy%2FG%2FnbIhhcM4ytnKZSH7tiUCDM8ZGVNk%2FV4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VhCaQ087GFSTMkjXdmX%2BwJdCXwIRG7ngh6cFBOY7X8HhYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqDK5sw%2FDr9FzxOaKfuTf2P%2FCpeHpck%2BV8i4m39L6M3yHaPHugNlduQw%2BX3vLtCNuiRTbfUhWBMSKheJFC58Q%2BowoMrf1135NPB49f4szkpBA6mR1yS3Gpr0PHsselRce9pQg7nqWwdXMTX7fElIawkq%2Bj5RgUbJzKrlKeF5Lgh5keDAG3aiXXtdjm1XKdGbzenlTnUHWSz0DXhgZj%2Fe0sTtFZ128XIHSd0NOPUn2V3B1pIAFqGmEp%2BNmHZnqgV6wVGCQewQWTrIB6KtxixwVCyzFT5%2FNSA%2BSW03Ij%2Btk463Tr%2BX0D1XLp0v1zEFqZunC3Njqh%2FZemCCOboDhnweAmG&amp;nvMid=82568217361&amp;catId=50000830"><img
												width="168" height="168" alt="[백화점] 폴로 랄프로렌 남성 클래식핏 반팔 티셔츠"
												src="https://shop-phinf.pstatic.net/20200809_111/1596957251494THm0c_PNG/Untitled-2.png?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82568217361,r:1"
													title="[백화점] 폴로 랄프로렌 남성 클래식핏 반팔 티셔츠"
													href="https://cr.shopping.naver.com/adcr.nhn?x=0J45GCyXKdq6mG8XlUXtJv%2F%2F%2Fw%3D%3Dsn6f%2FEd7DkjW%2BLB8a2WVBFnbWb%2BHuySarW58RfyvjAyszZMFZ2NPBunQBK1dzovIxlWQiz5I58xM9qaEYl2wtU0z2keabnMVQqL4%2FoDd6uI7yllzkKYY4EvmDRZD6SBjrkaImhbMjsD3by3Q7nO56SZMSDg1sgHZkpslap7Xr9%2FbIt9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20k3XwfW%2B2FSoY%2FAoLhnCLCC9OIeAywPy%2FG%2FnbIhhcM4ytnKZSH7tiUCDM8ZGVNk%2FV4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VhCaQ087GFSTMkjXdmX%2BwJdCXwIRG7ngh6cFBOY7X8HhYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqDK5sw%2FDr9FzxOaKfuTf2P%2FCpeHpck%2BV8i4m39L6M3yHaPHugNlduQw%2BX3vLtCNuiRTbfUhWBMSKheJFC58Q%2BowoMrf1135NPB49f4szkpBA6mR1yS3Gpr0PHsselRce9pQg7nqWwdXMTX7fElIawkq%2Bj5RgUbJzKrlKeF5Lgh5keDAG3aiXXtdjm1XKdGbzenlTnUHWSz0DXhgZj%2Fe0sTtFZ128XIHSd0NOPUn2V3B1pIAFqGmEp%2BNmHZnqgV6wVGCQewQWTrIB6KtxixwVCyzFT5%2FNSA%2BSW03Ij%2Btk463Tr%2BX0D1XLp0v1zEFqZunC3Njqh%2FZemCCOboDhnweAmG&amp;nvMid=82568217361&amp;catId=50000830">
													[백화점]폴로 랄프로렌 남성 클래식핏 반팔 티셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">69,000원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82568217361"
													title="언더독 UNDERDOG"
													href="https://smartstore.naver.com/underdogkr"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">언더독 UNDERDOG</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82568217361"
													href="https://cr.shopping.naver.com/adcr.nhn?x=0J45GCyXKdq6mG8XlUXtJv%2F%2F%2Fw%3D%3Dsn6f%2FEd7DkjW%2BLB8a2WVBFnbWb%2BHuySarW58RfyvjAyszZMFZ2NPBunQBK1dzovIxlWQiz5I58xM9qaEYl2wtU0z2keabnMVQqL4%2FoDd6uI7yllzkKYY4EvmDRZD6SBjrkaImhbMjsD3by3Q7nO56SZMSDg1sgHZkpslap7Xr9%2FbIt9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20k3XwfW%2B2FSoY%2FAoLhnCLCC9OIeAywPy%2FG%2FnbIhhcM4ytnKZSH7tiUCDM8ZGVNk%2FV4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VhCaQ087GFSTMkjXdmX%2BwJdCXwIRG7ngh6cFBOY7X8HhYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqDK5sw%2FDr9FzxOaKfuTf2P%2FCpeHpck%2BV8i4m39L6M3yHaPHugNlduQw%2BX3vLtCNuiRTbfUhWBMSKheJFC58Q%2BowoMrf1135NPB49f4szkpBA6mR1yS3Gpr0PHsselRce9pQg7nqWwdXMTX7fElIawkq%2Bj5RgUbJzKrlKeF5Lgh5keDAG3aiXXtdjm1XKdGbzenlTnUHWSz0DXhgZj%2Fe0sTtFZ128XIHSd0NOPUn2V3B1pIAFqGmEp%2BNmHZnqgV6wVGCQewQWTrIB6KtxixwVCyzFT5%2FNSA%2BSW03Ij%2Btk463Tr%2BX0D1XLp0v1zEFqZunC3Njqh%2FZemCCOboDhnweAmG&amp;nvMid=82568217361&amp;catId=50000830">리뷰
													<em class="imgList_num__K3JQN">279</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82568217361"
													href="https://cr.shopping.naver.com/adcr.nhn?x=0J45GCyXKdq6mG8XlUXtJv%2F%2F%2Fw%3D%3Dsn6f%2FEd7DkjW%2BLB8a2WVBFnbWb%2BHuySarW58RfyvjAyszZMFZ2NPBunQBK1dzovIxlWQiz5I58xM9qaEYl2wtU0z2keabnMVQqL4%2FoDd6uI7yllzkKYY4EvmDRZD6SBjrkaImhbMjsD3by3Q7nO56SZMSDg1sgHZkpslap7Xr9%2FbIt9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20k3XwfW%2B2FSoY%2FAoLhnCLCC9OIeAywPy%2FG%2FnbIhhcM4ytnKZSH7tiUCDM8ZGVNk%2FV4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VhCaQ087GFSTMkjXdmX%2BwJdCXwIRG7ngh6cFBOY7X8HhYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqDK5sw%2FDr9FzxOaKfuTf2P%2FCpeHpck%2BV8i4m39L6M3yHaPHugNlduQw%2BX3vLtCNuiRTbfUhWBMSKheJFC58Q%2BowoMrf1135NPB49f4szkpBA6mR1yS3Gpr0PHsselRce9pQg7nqWwdXMTX7fElIawkq%2Bj5RgUbJzKrlKeF5Lgh5keDAG3aiXXtdjm1XKdGbzenlTnUHWSz0DXhgZj%2Fe0sTtFZ128XIHSd0NOPUn2V3B1pIAFqGmEp%2BNmHZnqgV6wVGCQewQWTrIB6KtxixwVCyzFT5%2FNSA%2BSW03Ij%2Btk463Tr%2BX0D1XLp0v1zEFqZunC3Njqh%2FZemCCOboDhnweAmG&amp;nvMid=82568217361&amp;catId=50000830">구매
													<em class="imgList_num__K3JQN">999+</em>
												</a>
											</div>
										</div>
								</div>
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*A.image,r:53,i:23827612849"
												href="https://adcr.naver.com/adcr?x=Th2DnxNqgNsLc/I+mCiYsv///w==kNJ0qZrjrGhtJnsWc4HTk9DxuhsiVzN0zHH0suQVEiFXZVMoYVDnUF7qOOAeNbSh52i7UX2IhgQgM3tsFFvuSWAizXG4DRWXJ2Dwu7lTIi4qaf2goZp62vN1ExbWOg5CDicuDgjJCphuMukEJt1IXXjXXmw4dsidFDsWg/jWpai9/5ehoslSqOVk3OE0FQe1voY7yyThqx5Rn4KeBqgw7o0K2kOkI9x/1dEGqnQ0LPo2QIPLgi2sUKiimc4YstyNlcqg9Y17RWPRMCAv6TD0HbQPMW0Yhn+dnMmWhDS6dNJ2AqmgMHYdd+TlJfb+oV/lR3dT9xWNbf/P6esda+ygh06FPOuctibvV8HcX/SySgB72LznlfcFYyokm2TkTDmMM//ErDOzp8Ropm8xLoPk9aOYStyPjQ7x+/WAm+V+Jip1BruOnq6sZ6Wjzw5A1syddYpFAbEGj/McF/SX/jx2UizfpXXXeYCE9gtKz76gIKY65uOcHMZHWPyfhvuXpg7O3L/R1a573F4JkM/E5Pvl3oTDrau6sN8dppmEVVZ0+y9YfuzH9nyZE8/+UFHO9Bso/eG13WuvLw5vU8HX6IQRfwi8qH5HmFFeb2JtigiLEK0aRPD2n8Q/45yLjoahPteDJKKYdnMqhcF8N9Tl7+dW2uJrIpzIpt2cTrbgEIO8U/8Omh8EeAG0m2IQR0jHtQPHwTtNHTeu7cKqv194qVLfHYlmRdCuKh2vsNUuvHP6TMMCCmHpH231TfB0Ttd/LuuMGA0Noh6dcgunF7yWVQnP8EX9b2OsyZudbTAVJUVI+kU+c/LQ62ywzOICaf/uWxhlfdFG7ymQnjJqDbX4nq/T4wmhdzoMgAnysXqvRliKhMCiWiKuyI0yymRHlxmAR0q0u6n0PNSqu1PD2Bt3QUd4bzwYWcFL6mCzc+0mtlkLo76/MGK78VWO1BdmZ1jU6fhbwMCdRl+ry81PgyI1g+AbXBkSas2p/jQFOHp14IF41jJh0B/PmIXV9VVUF+Udlwgkdw9sFSu5+/s76XW4iPxJKjg=="><img
												width="168" height="168" alt="1+1 스탠다드 포켓 옥스포드 기본 카라셔츠"
												src="https://superstari.jpg3.kr/01/s47/s4748/s4748_white_01.jpg"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*A.title,i:23827612849,r:53"
													title="1+1 스탠다드 포켓 옥스포드 기본 카라셔츠"
													href="https://adcr.naver.com/adcr?x=Th2DnxNqgNsLc/I+mCiYsv///w==kNJ0qZrjrGhtJnsWc4HTk9DxuhsiVzN0zHH0suQVEiFXZVMoYVDnUF7qOOAeNbSh52i7UX2IhgQgM3tsFFvuSWAizXG4DRWXJ2Dwu7lTIi4qaf2goZp62vN1ExbWOg5CDicuDgjJCphuMukEJt1IXXjXXmw4dsidFDsWg/jWpai9/5ehoslSqOVk3OE0FQe1voY7yyThqx5Rn4KeBqgw7o0K2kOkI9x/1dEGqnQ0LPo2QIPLgi2sUKiimc4YstyNlcqg9Y17RWPRMCAv6TD0HbQPMW0Yhn+dnMmWhDS6dNJ2AqmgMHYdd+TlJfb+oV/lR3dT9xWNbf/P6esda+ygh06FPOuctibvV8HcX/SySgB72LznlfcFYyokm2TkTDmMM//ErDOzp8Ropm8xLoPk9aOYStyPjQ7x+/WAm+V+Jip1BruOnq6sZ6Wjzw5A1syddYpFAbEGj/McF/SX/jx2UizfpXXXeYCE9gtKz76gIKY65uOcHMZHWPyfhvuXpg7O3L/R1a573F4JkM/E5Pvl3oTDrau6sN8dppmEVVZ0+y9YfuzH9nyZE8/+UFHO9Bso/eG13WuvLw5vU8HX6IQRfwi8qH5HmFFeb2JtigiLEK0aRPD2n8Q/45yLjoahPteDJKKYdnMqhcF8N9Tl7+dW2uJrIpzIpt2cTrbgEIO8U/8Omh8EeAG0m2IQR0jHtQPHwTtNHTeu7cKqv194qVLfHYlmRdCuKh2vsNUuvHP6TMMCCmHpH231TfB0Ttd/LuuMGA0Noh6dcgunF7yWVQnP8EX9b2OsyZudbTAVJUVI+kU+c/LQ62ywzOICaf/uWxhlfdFG7ymQnjJqDbX4nq/T4wmhdzoMgAnysXqvRliKhMCiWiKuyI0yymRHlxmAR0q0u6n0PNSqu1PD2Bt3QUd4bzwYWcFL6mCzc+0mtlkLo76/MGK78VWO1BdmZ1jU6fhbwMCdRl+ry81PgyI1g+AbXBkSas2p/jQFOHp14IF41jJh0B/PmIXV9VVUF+Udlwgkdw9sFSu5+/s76XW4iPxJKjg==">1+1
													스탠다드 포켓 옥스포드 기본 카라셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">29,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*A.mall,i:23827612849,r:53"
													title="슈퍼스타아이"
													href="https://adcr.naver.com/adcr?x=Th2DnxNqgNsLc/I+mCiYsv///w==kNJ0qZrjrGhtJnsWc4HTk9DxuhsiVzN0zHH0suQVEiFXZVMoYVDnUF7qOOAeNbSh52i7UX2IhgQgM3tsFFvuSWAizXG4DRWXJ2Dwu7lTIi4qaf2goZp62vN1ExbWOg5CDicuDgjJCphuMukEJt1IXXjXXmw4dsidFDsWg/jWpai9/5ehoslSqOVk3OE0FQe1voY7yyThqx5Rn4KeBqgw7o0K2kOkI9x/1dEGqnQ0LPo2QIPLgi2sUKiimc4YstyNlcqg9Y17RWPRMCAv6TD0HbQPMW0Yhn+dnMmWhDS6dNJ2AqmgMHYdd+TlJfb+oV/lR3dT9xWNbf/P6esda+ygh06FPOuctibvV8HcX/SySgB72LznlfcFYyokm2TkTDmMM//ErDOzp8Ropm8xLoPk9aOYStyPjQ7x+/WAm+V+Jip1BruOnq6sZ6Wjzw5A1syddYpFAbEGj/McF/SX/jx2UizfpXXXeYCE9gtKz76gIKY65uOcHMZHWPyfhvuXpg7O3L/R1a573F4JkM/E5Pvl3oTDrau6sN8dppmEVVZ0+y9YfuzH9nyZE8/+UFHO9Bso/eG13WuvLw5vU8HX6IQRfwi8qH5HmFFeb2JtigiLEK0aRPD2n8Q/45yLjoahPteDJKKYdnMqhcF8N9Tl7+dW2uJrIpzIpt2cTrbgEIO8U/8Omh8EeAG0m2IQR0jHtQPHwTtNHTeu7cKqv194qVLfHYlmRdCuKh2vsNUuvHP6TMMCCmHpH231TfB0Ttd/LuuMGA0Noh6dcgunF7yWVQnP8EX9b2OsyZudbTAVJUVI+kU+c/LQ62ywzOICaf/uWxhlfdFG7ymQnjJqDbX4nq/T4wmhdzoMgAnysXqvRliKhMCiWiKuyI0yymRHlxmAR0q0u6n0PNSqu1PD2Bt3QUd4bzwYWcFL6mCzc+0mtlkLo76/MGK78VWO1BdmZ1jU6fhbwMCdRl+ry81PgyI1g+AbXBkSas2p/jQFOHp14IF41jJh0B/PmIXV9VVUF+Udlwgkdw9sFSu5+/s76XW4iPxJKjg=="><span
													class="imgList_mall_icon__vyfFG"></span><span
													class="imgList_mall_title__3fLr4">슈퍼스타아이</span></a>
											</div>
											<a target="_black" class="imgList_event__o7sjt"
												rel="noopener"
												data-nclick="N=a:img*A.des,i:23827612849,r:53"
												href="https://adcr.naver.com/adcr?x=Th2DnxNqgNsLc/I+mCiYsv///w==kNJ0qZrjrGhtJnsWc4HTk9DxuhsiVzN0zHH0suQVEiFXZVMoYVDnUF7qOOAeNbSh52i7UX2IhgQgM3tsFFvuSWAizXG4DRWXJ2Dwu7lTIi4qaf2goZp62vN1ExbWOg5CDicuDgjJCphuMukEJt1IXXjXXmw4dsidFDsWg/jWpai9/5ehoslSqOVk3OE0FQe1voY7yyThqx5Rn4KeBqgw7o0K2kOkI9x/1dEGqnQ0LPo2QIPLgi2sUKiimc4YstyNlcqg9Y17RWPRMCAv6TD0HbQPMW0Yhn+dnMmWhDS6dNJ2AqmgMHYdd+TlJfb+oV/lR3dT9xWNbf/P6esda+ygh06FPOuctibvV8HcX/SySgB72LznlfcFYyokm2TkTDmMM//ErDOzp8Ropm8xLoPk9aOYStyPjQ7x+/WAm+V+Jip1BruOnq6sZ6Wjzw5A1syddYpFAbEGj/McF/SX/jx2UizfpXXXeYCE9gtKz76gIKY65uOcHMZHWPyfhvuXpg7O3L/R1a573F4JkM/E5Pvl3oTDrau6sN8dppmEVVZ0+y9YfuzH9nyZE8/+UFHO9Bso/eG13WuvLw5vU8HX6IQRfwi8qH5HmFFeb2JtigiLEK0aRPD2n8Q/45yLjoahPteDJKKYdnMqhcF8N9Tl7+dW2uJrIpzIpt2cTrbgEIO8U/8Omh8EeAG0m2IQR0jHtQPHwTtNHTeu7cKqv194qVLfHYlmRdCuKh2vsNUuvHP6TMMCCmHpH231TfB0Ttd/LuuMGA0Noh6dcgunF7yWVQnP8EX9b2OsyZudbTAVJUVI+kU+c/LQ62ywzOICaf/uWxhlfdFG7ymQnjJqDbX4nq/T4wmhdzoMgAnysXqvRliKhMCiWiKuyI0yymRHlxmAR0q0u6n0PNSqu1PD2Bt3QUd4bzwYWcFL6mCzc+0mtlkLo76/MGK78VWO1BdmZ1jU6fhbwMCdRl+ry81PgyI1g+AbXBkSas2p/jQFOHp14IF41jJh0B/PmIXV9VVUF+Udlwgkdw9sFSu5+/s76XW4iPxJKjg==">신규가입
												무료배송!</a>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*A.comment,r:53,i:23827612849"
													href="https://adcr.naver.com/adcr?x=Th2DnxNqgNsLc/I+mCiYsv///w==kNJ0qZrjrGhtJnsWc4HTk9DxuhsiVzN0zHH0suQVEiFXZVMoYVDnUF7qOOAeNbSh52i7UX2IhgQgM3tsFFvuSWAizXG4DRWXJ2Dwu7lTIi4qaf2goZp62vN1ExbWOg5CDicuDgjJCphuMukEJt1IXXjXXmw4dsidFDsWg/jWpai9/5ehoslSqOVk3OE0FQe1voY7yyThqx5Rn4KeBqgw7o0K2kOkI9x/1dEGqnQ0LPo2QIPLgi2sUKiimc4YstyNlcqg9Y17RWPRMCAv6TD0HbQPMW0Yhn+dnMmWhDS6dNJ2AqmgMHYdd+TlJfb+oV/lR3dT9xWNbf/P6esda+ygh06FPOuctibvV8HcX/SySgB72LznlfcFYyokm2TkTDmMM//ErDOzp8Ropm8xLoPk9aOYStyPjQ7x+/WAm+V+Jip1BruOnq6sZ6Wjzw5A1syddYpFAbEGj/McF/SX/jx2UizfpXXXeYCE9gtKz76gIKY65uOcHMZHWPyfhvuXpg7O3L/R1a573F4JkM/E5Pvl3oTDrau6sN8dppmEVVZ0+y9YfuzH9nyZE8/+UFHO9Bso/eG13WuvLw5vU8HX6IQRfwi8qH5HmFFeb2JtigiLEK0aRPD2n8Q/45yLjoahPteDJKKYdnMqhcF8N9Tl7+dW2uJrIpzIpt2cTrbgEIO8U/8Omh8EeAG0m2IQR0jHtQPHwTtNHTeu7cKqv194qVLfHYlmRdCuKh2vsNUuvHP6TMMCCmHpH231TfB0Ttd/LuuMGA0Noh6dcgunF7yWVQnP8EX9b2OsyZudbTAVJUVI+kU+c/LQ62ywzOICaf/uWxhlfdFG7ymQnjJqDbX4nq/T4wmhdzoMgAnysXqvRliKhMCiWiKuyI0yymRHlxmAR0q0u6n0PNSqu1PD2Bt3QUd4bzwYWcFL6mCzc+0mtlkLo76/MGK78VWO1BdmZ1jU6fhbwMCdRl+ry81PgyI1g+AbXBkSas2p/jQFOHp14IF41jJh0B/PmIXV9VVUF+Udlwgkdw9sFSu5+/s76XW4iPxJKjg==">리뷰
													<em class="imgList_num__K3JQN">166</em>
												</a>
											</div>
										</div>
									<!-- 오른쪽 공간 -->
		   					
		   					</div>
	   					</div>
	   				</div>
	    			<div class="col-md-12 blog-wrap" style="text-align: center;">
		   				<div class="row no-gutters align-items-center">
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:82454624515"
												href="https://cr.shopping.naver.com/adcr.nhn?x=uLgeAcLV84CTv866r1krRv%2F%2F%2Fw%3D%3DshkLNx1xo2TfbJvXn%2FWWJuMtzETfCg3SV1m4mYW40XraV0Yd0%2FYU%2Bes0383ah6ajrWk0%2Br6eX19wFMHcNnixcj2YzPL%2FjX2nz1V78HqH69IFSz5YfybwIHdjj10UwgVJmgGwmPNX%2Fe%2BXkuZ30duRQYiNTg4vYVJt0qtKSwfXbvj61byEbt901Oe1nVrcCIPyBoIEtxFLfu41A4f1M7iVPe%2Boycb9o890jx3Kj0ThCYrbFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDf%2FtAsOFAJDgk%2Bw3jgq9kT6RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6onGXxzSwKUHMrWFE9hknvBEV2JNJXfAZDzTXhXvdQeg5l2tT2AG9M5jxdXEaCkbHF0Y9ztGQlZGtV%2BuxSvnFBznBXiWBNgGjTFkI%2FcoGnD8Q3fOeKKBQ3zwqf4KRFNW6qkOCnISfsZQphwh1qfW%2FCFyI1KQ6M579%2BppWVdtbR%2BeE%2BVidWLxzgcyJkMb6npuZfp2PzfGp7n5b0M2huBp7FyRr%2ByCj3bWLEdPDujmN53nCt5TTtNbDMjmKBRid6GFGHp7AXQGPwS25SN4fMhBv8f9jajDDVT3XAVOd0gZuz2CfdyEU5k6Zg1mc8%2FPC9h0XIsizWSqjBPSbu4CBWWB%2F%2BTvcmVPuh1Y9rWYYJaNyzrh6McgIRCk8vtGb7Z%2FKGMSEdE%3D&amp;nvMid=82454624515&amp;catId=50000830"><img
												width="168" height="168"
												alt="남자 머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠"
												src="https://shop-phinf.pstatic.net/20200424_144/1587730683969g6KRS_PNG/KakaoTalk_20200423_211147714_03.jpg.png?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82454624515,r:1"
													title="남자 머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠"
													href="https://cr.shopping.naver.com/adcr.nhn?x=uLgeAcLV84CTv866r1krRv%2F%2F%2Fw%3D%3DshkLNx1xo2TfbJvXn%2FWWJuMtzETfCg3SV1m4mYW40XraV0Yd0%2FYU%2Bes0383ah6ajrWk0%2Br6eX19wFMHcNnixcj2YzPL%2FjX2nz1V78HqH69IFSz5YfybwIHdjj10UwgVJmgGwmPNX%2Fe%2BXkuZ30duRQYiNTg4vYVJt0qtKSwfXbvj61byEbt901Oe1nVrcCIPyBoIEtxFLfu41A4f1M7iVPe%2Boycb9o890jx3Kj0ThCYrbFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDf%2FtAsOFAJDgk%2Bw3jgq9kT6RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6onGXxzSwKUHMrWFE9hknvBEV2JNJXfAZDzTXhXvdQeg5l2tT2AG9M5jxdXEaCkbHF0Y9ztGQlZGtV%2BuxSvnFBznBXiWBNgGjTFkI%2FcoGnD8Q3fOeKKBQ3zwqf4KRFNW6qkOCnISfsZQphwh1qfW%2FCFyI1KQ6M579%2BppWVdtbR%2BeE%2BVidWLxzgcyJkMb6npuZfp2PzfGp7n5b0M2huBp7FyRr%2ByCj3bWLEdPDujmN53nCt5TTtNbDMjmKBRid6GFGHp7AXQGPwS25SN4fMhBv8f9jajDDVT3XAVOd0gZuz2CfdyEU5k6Zg1mc8%2FPC9h0XIsizWSqjBPSbu4CBWWB%2F%2BTvcmVPuh1Y9rWYYJaNyzrh6McgIRCk8vtGb7Z%2FKGMSEdE%3D&amp;nvMid=82454624515&amp;catId=50000830">남자
													머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">24,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82454624515" title="와츠엔"
													href="https://smartstore.naver.com/whats_next"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">와츠엔</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82454624515"
													href="https://cr.shopping.naver.com/adcr.nhn?x=uLgeAcLV84CTv866r1krRv%2F%2F%2Fw%3D%3DshkLNx1xo2TfbJvXn%2FWWJuMtzETfCg3SV1m4mYW40XraV0Yd0%2FYU%2Bes0383ah6ajrWk0%2Br6eX19wFMHcNnixcj2YzPL%2FjX2nz1V78HqH69IFSz5YfybwIHdjj10UwgVJmgGwmPNX%2Fe%2BXkuZ30duRQYiNTg4vYVJt0qtKSwfXbvj61byEbt901Oe1nVrcCIPyBoIEtxFLfu41A4f1M7iVPe%2Boycb9o890jx3Kj0ThCYrbFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDf%2FtAsOFAJDgk%2Bw3jgq9kT6RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6onGXxzSwKUHMrWFE9hknvBEV2JNJXfAZDzTXhXvdQeg5l2tT2AG9M5jxdXEaCkbHF0Y9ztGQlZGtV%2BuxSvnFBznBXiWBNgGjTFkI%2FcoGnD8Q3fOeKKBQ3zwqf4KRFNW6qkOCnISfsZQphwh1qfW%2FCFyI1KQ6M579%2BppWVdtbR%2BeE%2BVidWLxzgcyJkMb6npuZfp2PzfGp7n5b0M2huBp7FyRr%2ByCj3bWLEdPDujmN53nCt5TTtNbDMjmKBRid6GFGHp7AXQGPwS25SN4fMhBv8f9jajDDVT3XAVOd0gZuz2CfdyEU5k6Zg1mc8%2FPC9h0XIsizWSqjBPSbu4CBWWB%2F%2BTvcmVPuh1Y9rWYYJaNyzrh6McgIRCk8vtGb7Z%2FKGMSEdE%3D&amp;nvMid=82454624515&amp;catId=50000830">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82454624515"
													href="https://cr.shopping.naver.com/adcr.nhn?x=uLgeAcLV84CTv866r1krRv%2F%2F%2Fw%3D%3DshkLNx1xo2TfbJvXn%2FWWJuMtzETfCg3SV1m4mYW40XraV0Yd0%2FYU%2Bes0383ah6ajrWk0%2Br6eX19wFMHcNnixcj2YzPL%2FjX2nz1V78HqH69IFSz5YfybwIHdjj10UwgVJmgGwmPNX%2Fe%2BXkuZ30duRQYiNTg4vYVJt0qtKSwfXbvj61byEbt901Oe1nVrcCIPyBoIEtxFLfu41A4f1M7iVPe%2Boycb9o890jx3Kj0ThCYrbFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDf%2FtAsOFAJDgk%2Bw3jgq9kT6RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6onGXxzSwKUHMrWFE9hknvBEV2JNJXfAZDzTXhXvdQeg5l2tT2AG9M5jxdXEaCkbHF0Y9ztGQlZGtV%2BuxSvnFBznBXiWBNgGjTFkI%2FcoGnD8Q3fOeKKBQ3zwqf4KRFNW6qkOCnISfsZQphwh1qfW%2FCFyI1KQ6M579%2BppWVdtbR%2BeE%2BVidWLxzgcyJkMb6npuZfp2PzfGp7n5b0M2huBp7FyRr%2ByCj3bWLEdPDujmN53nCt5TTtNbDMjmKBRid6GFGHp7AXQGPwS25SN4fMhBv8f9jajDDVT3XAVOd0gZuz2CfdyEU5k6Zg1mc8%2FPC9h0XIsizWSqjBPSbu4CBWWB%2F%2BTvcmVPuh1Y9rWYYJaNyzrh6McgIRCk8vtGb7Z%2FKGMSEdE%3D&amp;nvMid=82454624515&amp;catId=50000830">구매
													<em class="imgList_num__K3JQN">999+</em>
												</a>
											</div>
										</div>
									<!-- 왼쪽 공간 -->
		   					
		   					</div>
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:31,i:82438474724"
												href="https://cr.shopping.naver.com/adcr.nhn?x=v9VDyGpDnxD2v%2ByhYpgH2P%2F%2F%2Fw%3D%3DsMDWDXfMqhwGZo6fhDOsVp%2B3vpE456QgcaQ93lslu6GCuZOxFSu9q3x2edwyybfpbQMjLvO5kZ1PPuUf7FYVutFW3hg%2Fl2KzSUd%2FafP%2FD9GhyPOXI7rAs0TqZqxM0qdyOy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtSSP38JuAn86lrepoF1hDC1G2qmGPw9tFeHcna4I99HNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqurIZ0uTjGsNtzZYgOVlvjH9oHFgmoMPlckqBzNwmvjj7xtGyFkhaMzkhWMJXvaZtOtJh%2B3m6XToaggsLA0gbAxzp8r6387Rk2T9o7DrBUnkw0zhjqN%2F%2FvHaWVnwNrw2jYovYK6SLN1u%2FfaTrKHzpaBAxCchCqEeVUcz%2Be6rsOYtNFQOdlmsi4BThYCjUBVXF6nzJuzzX6HSpzAm51HJ%2BYwWaUemWLg1anevTCXYHNqsd9RCW4gyErJazqKiYBYlliJAAowKTrizwITIUG1P8TtzZvCbdvcrMM7Ev%2Fn42Vb31vtcwJAGD11xKakZv4WAnsdEQVjg4TbLlAjRbSGiswHNjqh%2FZemCCOboDhnweAmG&amp;nvMid=82438474724&amp;catId=50000831"><img
												width="168" height="168"
												alt="LAINE 레인 남자 여름 린넨 라운드 반팔 빅사이즈 니트 12컬러"
												src="https://shop-phinf.pstatic.net/20210408_58/1617858805608Cm53K_JPEG/SE-257a30f3-65e6-4f57-9c9d-0916fd05f403.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82438474724,r:31"
													title="LAINE 레인 남자 여름 린넨 라운드 반팔 빅사이즈 니트 12컬러"
													href="https://cr.shopping.naver.com/adcr.nhn?x=v9VDyGpDnxD2v%2ByhYpgH2P%2F%2F%2Fw%3D%3DsMDWDXfMqhwGZo6fhDOsVp%2B3vpE456QgcaQ93lslu6GCuZOxFSu9q3x2edwyybfpbQMjLvO5kZ1PPuUf7FYVutFW3hg%2Fl2KzSUd%2FafP%2FD9GhyPOXI7rAs0TqZqxM0qdyOy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtSSP38JuAn86lrepoF1hDC1G2qmGPw9tFeHcna4I99HNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqurIZ0uTjGsNtzZYgOVlvjH9oHFgmoMPlckqBzNwmvjj7xtGyFkhaMzkhWMJXvaZtOtJh%2B3m6XToaggsLA0gbAxzp8r6387Rk2T9o7DrBUnkw0zhjqN%2F%2FvHaWVnwNrw2jYovYK6SLN1u%2FfaTrKHzpaBAxCchCqEeVUcz%2Be6rsOYtNFQOdlmsi4BThYCjUBVXF6nzJuzzX6HSpzAm51HJ%2BYwWaUemWLg1anevTCXYHNqsd9RCW4gyErJazqKiYBYlliJAAowKTrizwITIUG1P8TtzZvCbdvcrMM7Ev%2Fn42Vb31vtcwJAGD11xKakZv4WAnsdEQVjg4TbLlAjRbSGiswHNjqh%2FZemCCOboDhnweAmG&amp;nvMid=82438474724&amp;catId=50000831">LAINE
													레인 남자 여름 린넨 라운드 반팔 빅사이즈 니트 12컬러</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">22,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:31,i:82438474724"
													title="소보맨즈" href="https://smartstore.naver.com/sambonam"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px;">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">소보맨즈</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:31,i:82438474724"
													href="https://cr.shopping.naver.com/adcr.nhn?x=v9VDyGpDnxD2v%2ByhYpgH2P%2F%2F%2Fw%3D%3DsMDWDXfMqhwGZo6fhDOsVp%2B3vpE456QgcaQ93lslu6GCuZOxFSu9q3x2edwyybfpbQMjLvO5kZ1PPuUf7FYVutFW3hg%2Fl2KzSUd%2FafP%2FD9GhyPOXI7rAs0TqZqxM0qdyOy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtSSP38JuAn86lrepoF1hDC1G2qmGPw9tFeHcna4I99HNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqurIZ0uTjGsNtzZYgOVlvjH9oHFgmoMPlckqBzNwmvjj7xtGyFkhaMzkhWMJXvaZtOtJh%2B3m6XToaggsLA0gbAxzp8r6387Rk2T9o7DrBUnkw0zhjqN%2F%2FvHaWVnwNrw2jYovYK6SLN1u%2FfaTrKHzpaBAxCchCqEeVUcz%2Be6rsOYtNFQOdlmsi4BThYCjUBVXF6nzJuzzX6HSpzAm51HJ%2BYwWaUemWLg1anevTCXYHNqsd9RCW4gyErJazqKiYBYlliJAAowKTrizwITIUG1P8TtzZvCbdvcrMM7Ev%2Fn42Vb31vtcwJAGD11xKakZv4WAnsdEQVjg4TbLlAjRbSGiswHNjqh%2FZemCCOboDhnweAmG&amp;nvMid=82438474724&amp;catId=50000831">리뷰
													<em class="imgList_num__K3JQN">350</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:31,i:82438474724"
													href="https://cr.shopping.naver.com/adcr.nhn?x=v9VDyGpDnxD2v%2ByhYpgH2P%2F%2F%2Fw%3D%3DsMDWDXfMqhwGZo6fhDOsVp%2B3vpE456QgcaQ93lslu6GCuZOxFSu9q3x2edwyybfpbQMjLvO5kZ1PPuUf7FYVutFW3hg%2Fl2KzSUd%2FafP%2FD9GhyPOXI7rAs0TqZqxM0qdyOy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtSSP38JuAn86lrepoF1hDC1G2qmGPw9tFeHcna4I99HNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqurIZ0uTjGsNtzZYgOVlvjH9oHFgmoMPlckqBzNwmvjj7xtGyFkhaMzkhWMJXvaZtOtJh%2B3m6XToaggsLA0gbAxzp8r6387Rk2T9o7DrBUnkw0zhjqN%2F%2FvHaWVnwNrw2jYovYK6SLN1u%2FfaTrKHzpaBAxCchCqEeVUcz%2Be6rsOYtNFQOdlmsi4BThYCjUBVXF6nzJuzzX6HSpzAm51HJ%2BYwWaUemWLg1anevTCXYHNqsd9RCW4gyErJazqKiYBYlliJAAowKTrizwITIUG1P8TtzZvCbdvcrMM7Ev%2Fn42Vb31vtcwJAGD11xKakZv4WAnsdEQVjg4TbLlAjRbSGiswHNjqh%2FZemCCOboDhnweAmG&amp;nvMid=82438474724&amp;catId=50000831">구매
													<em class="imgList_num__K3JQN">857</em>
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