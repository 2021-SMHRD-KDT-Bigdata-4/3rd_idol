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
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:253,i:82029268851"
												href="https://cr.shopping.naver.com/adcr.nhn?x=bIOUlc6IyadVqrzPwq801P%2F%2F%2Fw%3D%3Dsqe%2BGv8rwIwTbqT8xV9uShhVKgDmADPRd%2FdKZik%2BrhAEnaHjJhg2Adnt05TFsF%2BtRPr10peK2q%2BR%2FZrXfKovAYm%2FE8qt3%2FgvBqILJeR97GrjrT2fiTCW%2FpT9TxktDNSFLy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBuCMDjNG%2Bsmp%2BRiUGASU7TPFmZQg0v2WIa50DjBgR8R%2FtbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjDlje5qs0C8%2BeQxoUz4YSjf6lSFjySdiYZ%2FQ52thSvmlFYfrXhi4GXEIdnVQJs0Pc6qddgXJltLjOdaUzY0vkgNFpa8RNduTp%2B%2BiWG%2F5qNNq6RnDtp7xaAbG6HY78tr9twHbL0kq3i8EfHunu7J6Uyvct5mATHq2WtFfuvJpZE56i6q2axJpDH56%2BKW%2B3q9E3xrJURITf7l7K65KyCSs2pToNC6qV92qHEqPgg9OtoQJT3kKrbM6qXDCLq1fy1Gu2L6forsNDEHQiKIN58eINTTpn2tpyLIIsxodFGlp6feSKMhT%2BC1GwJL6YgL6p1ERz4HUVQbWSsErFN%2BqgpknXYDfkLIyuldBS3f8m8e6nLmzUhNzs2VE%2B%2Bisqs3JAEppg%3D%3D&amp;nvMid=82029268851&amp;catId=50000833"><img
												width="168" height="168"
												alt="폴로 랄프로렌 21SS 버튼다운 린넨셔츠(다크네이비&amp;화이트포니)"
												src="https://shop-phinf.pstatic.net/20200404_73/1585993609893dLkuj_JPEG/C0BD1953-992C-4D14-95BC-BDD4CDFF3556.jpeg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82029268851,r:253"
													title="폴로 랄프로렌 21SS 버튼다운 린넨셔츠(다크네이비&amp;화이트포니)"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bIOUlc6IyadVqrzPwq801P%2F%2F%2Fw%3D%3Dsqe%2BGv8rwIwTbqT8xV9uShhVKgDmADPRd%2FdKZik%2BrhAEnaHjJhg2Adnt05TFsF%2BtRPr10peK2q%2BR%2FZrXfKovAYm%2FE8qt3%2FgvBqILJeR97GrjrT2fiTCW%2FpT9TxktDNSFLy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBuCMDjNG%2Bsmp%2BRiUGASU7TPFmZQg0v2WIa50DjBgR8R%2FtbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjDlje5qs0C8%2BeQxoUz4YSjf6lSFjySdiYZ%2FQ52thSvmlFYfrXhi4GXEIdnVQJs0Pc6qddgXJltLjOdaUzY0vkgNFpa8RNduTp%2B%2BiWG%2F5qNNq6RnDtp7xaAbG6HY78tr9twHbL0kq3i8EfHunu7J6Uyvct5mATHq2WtFfuvJpZE56i6q2axJpDH56%2BKW%2B3q9E3xrJURITf7l7K65KyCSs2pToNC6qV92qHEqPgg9OtoQJT3kKrbM6qXDCLq1fy1Gu2L6forsNDEHQiKIN58eINTTpn2tpyLIIsxodFGlp6feSKMhT%2BC1GwJL6YgL6p1ERz4HUVQbWSsErFN%2BqgpknXYDfkLIyuldBS3f8m8e6nLmzUhNzs2VE%2B%2Bisqs3JAEppg%3D%3D&amp;nvMid=82029268851&amp;catId=50000833">폴로
													랄프로렌 21SS 버튼다운 린넨셔츠(다크네이비&amp;화이트포니)</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">169,000원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:253,i:82029268851"
													title="6032호-formen"
													href="https://smartstore.naver.com/6032_formen"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px;">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">6032호-formen</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:253,i:82029268851"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bIOUlc6IyadVqrzPwq801P%2F%2F%2Fw%3D%3Dsqe%2BGv8rwIwTbqT8xV9uShhVKgDmADPRd%2FdKZik%2BrhAEnaHjJhg2Adnt05TFsF%2BtRPr10peK2q%2BR%2FZrXfKovAYm%2FE8qt3%2FgvBqILJeR97GrjrT2fiTCW%2FpT9TxktDNSFLy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBuCMDjNG%2Bsmp%2BRiUGASU7TPFmZQg0v2WIa50DjBgR8R%2FtbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjDlje5qs0C8%2BeQxoUz4YSjf6lSFjySdiYZ%2FQ52thSvmlFYfrXhi4GXEIdnVQJs0Pc6qddgXJltLjOdaUzY0vkgNFpa8RNduTp%2B%2BiWG%2F5qNNq6RnDtp7xaAbG6HY78tr9twHbL0kq3i8EfHunu7J6Uyvct5mATHq2WtFfuvJpZE56i6q2axJpDH56%2BKW%2B3q9E3xrJURITf7l7K65KyCSs2pToNC6qV92qHEqPgg9OtoQJT3kKrbM6qXDCLq1fy1Gu2L6forsNDEHQiKIN58eINTTpn2tpyLIIsxodFGlp6feSKMhT%2BC1GwJL6YgL6p1ERz4HUVQbWSsErFN%2BqgpknXYDfkLIyuldBS3f8m8e6nLmzUhNzs2VE%2B%2Bisqs3JAEppg%3D%3D&amp;nvMid=82029268851&amp;catId=50000833">리뷰
													<em class="imgList_num__K3JQN">928</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:253,i:82029268851"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bIOUlc6IyadVqrzPwq801P%2F%2F%2Fw%3D%3Dsqe%2BGv8rwIwTbqT8xV9uShhVKgDmADPRd%2FdKZik%2BrhAEnaHjJhg2Adnt05TFsF%2BtRPr10peK2q%2BR%2FZrXfKovAYm%2FE8qt3%2FgvBqILJeR97GrjrT2fiTCW%2FpT9TxktDNSFLy7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBuCMDjNG%2Bsmp%2BRiUGASU7TPFmZQg0v2WIa50DjBgR8R%2FtbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjDlje5qs0C8%2BeQxoUz4YSjf6lSFjySdiYZ%2FQ52thSvmlFYfrXhi4GXEIdnVQJs0Pc6qddgXJltLjOdaUzY0vkgNFpa8RNduTp%2B%2BiWG%2F5qNNq6RnDtp7xaAbG6HY78tr9twHbL0kq3i8EfHunu7J6Uyvct5mATHq2WtFfuvJpZE56i6q2axJpDH56%2BKW%2B3q9E3xrJURITf7l7K65KyCSs2pToNC6qV92qHEqPgg9OtoQJT3kKrbM6qXDCLq1fy1Gu2L6forsNDEHQiKIN58eINTTpn2tpyLIIsxodFGlp6feSKMhT%2BC1GwJL6YgL6p1ERz4HUVQbWSsErFN%2BqgpknXYDfkLIyuldBS3f8m8e6nLmzUhNzs2VE%2B%2Bisqs3JAEppg%3D%3D&amp;nvMid=82029268851&amp;catId=50000833">구매
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
												data-nclick="N=a:img*N.image,r:1,i:80354707980"
												href="https://cr.shopping.naver.com/adcr.nhn?x=bqX9%2FxXj4Lf0UVJo60dW3v%2F%2F%2Fw%3D%3Ds9tkr53wkIdkAqsbduziFo3OfKGI5eIw2jYXfca0M%2B%2BQv54IXjpy5WbToTeVk4jSET4IUp8%2BP1dyuorUXZXS0Qy98MEpEOOeLCxpnt5C73aodhm5EPQ88DkcxMBlrbuXjL1b7PrrDM%2BlKj9pfSiEQKIZnlrSZr8PDPdBCvs8uWtdKzInqKADQtYsSu9KSIlX74q1D7LcAvmFnZwgOrpWCUmMXOOJkQZEgrxlj23m1fmnndIsb6Z108QukWKGHXGbb5QP%2FA8RbBWuWDPlcnJwAIkuG%2FicFY3q9hGdjro9%2BnxRAGSKJLvD8usoUHABLXPLC8Lg8Ok%2BjT1ZEy1NQyGTlJZE%2BmbzyUIArw4F5Z3OwXIxD4P%2Bj2CVvS6QkrpszyaIoCuwrUM2Vi5bq9fxYHuPhKdBPJ3xLURa3UC%2FAsCdFN%2B6X7j5OLT6X1b5aH3w8Eqc4kXm92LLWkqiRw2mZU0WFLFYKQ8bO2fuxOJHwYGA0O6ArZrW9g8Cvbc9zTe5rEOznen1c%2FHkt9XJGFBts3aGKBtzuENTVQB0YsqIo1c6s5vY9uIEGcxidyZ6vhLLIOrwEZPuLJ0kFhnw654%2FHgC7jzUQ0%2FL7tQV7teTRH%2BsCjjQp5G9Mcf2P%2B3mXeybWz6vAWl4wS7hPIyYBH6lZiCkbzNWT3v74or6Zavou8I0Imv%2BkooPsF9vN3oXDMOcfeCnmma4r0pZytSTaAazLNCxSzOBSAakrCFloHAKbTgkfh%2BjVWhZ3SMHTcLlpircdRzUgq1JIslBmdxaTx7xO1%2BPPoWw%3D%3D&amp;nvMid=80354707980&amp;catId=50000833"><img
												width="168" height="168"
												alt="폴로 랄프로렌 21SS 스트라이프 린넨셔츠 (네이비/스카이블루)"
												src="https://shop-phinf.pstatic.net/20200802_261/1596352708281MIvEy_JPEG/C6E71984-32C3-462F-9F13-57649A879940.jpeg?type=w860"
												style="height: 80%; width: 80%;"></a>
											<div class="thumbnail_btn_box__3_V2T">
											</div>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:80354707980,r:1"
													title="폴로 랄프로렌 21SS 스트라이프 린넨셔츠 (네이비/스카이블루)"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bqX9%2FxXj4Lf0UVJo60dW3v%2F%2F%2Fw%3D%3Ds9tkr53wkIdkAqsbduziFo3OfKGI5eIw2jYXfca0M%2B%2BQv54IXjpy5WbToTeVk4jSET4IUp8%2BP1dyuorUXZXS0Qy98MEpEOOeLCxpnt5C73aodhm5EPQ88DkcxMBlrbuXjL1b7PrrDM%2BlKj9pfSiEQKIZnlrSZr8PDPdBCvs8uWtdKzInqKADQtYsSu9KSIlX74q1D7LcAvmFnZwgOrpWCUmMXOOJkQZEgrxlj23m1fmnndIsb6Z108QukWKGHXGbb5QP%2FA8RbBWuWDPlcnJwAIkuG%2FicFY3q9hGdjro9%2BnxRAGSKJLvD8usoUHABLXPLC8Lg8Ok%2BjT1ZEy1NQyGTlJZE%2BmbzyUIArw4F5Z3OwXIxD4P%2Bj2CVvS6QkrpszyaIoCuwrUM2Vi5bq9fxYHuPhKdBPJ3xLURa3UC%2FAsCdFN%2B6X7j5OLT6X1b5aH3w8Eqc4kXm92LLWkqiRw2mZU0WFLFYKQ8bO2fuxOJHwYGA0O6ArZrW9g8Cvbc9zTe5rEOznen1c%2FHkt9XJGFBts3aGKBtzuENTVQB0YsqIo1c6s5vY9uIEGcxidyZ6vhLLIOrwEZPuLJ0kFhnw654%2FHgC7jzUQ0%2FL7tQV7teTRH%2BsCjjQp5G9Mcf2P%2B3mXeybWz6vAWl4wS7hPIyYBH6lZiCkbzNWT3v74or6Zavou8I0Imv%2BkooPsF9vN3oXDMOcfeCnmma4r0pZytSTaAazLNCxSzOBSAakrCFloHAKbTgkfh%2BjVWhZ3SMHTcLlpircdRzUgq1JIslBmdxaTx7xO1%2BPPoWw%3D%3D&amp;nvMid=80354707980&amp;catId=50000833">폴로
													랄프로렌 21SS 스트라이프 린넨셔츠 (네이비/스카이블루)</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">169,000원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:80354707980"
													title="6032호-formen"
													href="https://smartstore.naver.com/6032_formen"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">6032호-formen</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:80354707980"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bqX9%2FxXj4Lf0UVJo60dW3v%2F%2F%2Fw%3D%3Ds9tkr53wkIdkAqsbduziFo3OfKGI5eIw2jYXfca0M%2B%2BQv54IXjpy5WbToTeVk4jSET4IUp8%2BP1dyuorUXZXS0Qy98MEpEOOeLCxpnt5C73aodhm5EPQ88DkcxMBlrbuXjL1b7PrrDM%2BlKj9pfSiEQKIZnlrSZr8PDPdBCvs8uWtdKzInqKADQtYsSu9KSIlX74q1D7LcAvmFnZwgOrpWCUmMXOOJkQZEgrxlj23m1fmnndIsb6Z108QukWKGHXGbb5QP%2FA8RbBWuWDPlcnJwAIkuG%2FicFY3q9hGdjro9%2BnxRAGSKJLvD8usoUHABLXPLC8Lg8Ok%2BjT1ZEy1NQyGTlJZE%2BmbzyUIArw4F5Z3OwXIxD4P%2Bj2CVvS6QkrpszyaIoCuwrUM2Vi5bq9fxYHuPhKdBPJ3xLURa3UC%2FAsCdFN%2B6X7j5OLT6X1b5aH3w8Eqc4kXm92LLWkqiRw2mZU0WFLFYKQ8bO2fuxOJHwYGA0O6ArZrW9g8Cvbc9zTe5rEOznen1c%2FHkt9XJGFBts3aGKBtzuENTVQB0YsqIo1c6s5vY9uIEGcxidyZ6vhLLIOrwEZPuLJ0kFhnw654%2FHgC7jzUQ0%2FL7tQV7teTRH%2BsCjjQp5G9Mcf2P%2B3mXeybWz6vAWl4wS7hPIyYBH6lZiCkbzNWT3v74or6Zavou8I0Imv%2BkooPsF9vN3oXDMOcfeCnmma4r0pZytSTaAazLNCxSzOBSAakrCFloHAKbTgkfh%2BjVWhZ3SMHTcLlpircdRzUgq1JIslBmdxaTx7xO1%2BPPoWw%3D%3D&amp;nvMid=80354707980&amp;catId=50000833">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:80354707980"
													href="https://cr.shopping.naver.com/adcr.nhn?x=bqX9%2FxXj4Lf0UVJo60dW3v%2F%2F%2Fw%3D%3Ds9tkr53wkIdkAqsbduziFo3OfKGI5eIw2jYXfca0M%2B%2BQv54IXjpy5WbToTeVk4jSET4IUp8%2BP1dyuorUXZXS0Qy98MEpEOOeLCxpnt5C73aodhm5EPQ88DkcxMBlrbuXjL1b7PrrDM%2BlKj9pfSiEQKIZnlrSZr8PDPdBCvs8uWtdKzInqKADQtYsSu9KSIlX74q1D7LcAvmFnZwgOrpWCUmMXOOJkQZEgrxlj23m1fmnndIsb6Z108QukWKGHXGbb5QP%2FA8RbBWuWDPlcnJwAIkuG%2FicFY3q9hGdjro9%2BnxRAGSKJLvD8usoUHABLXPLC8Lg8Ok%2BjT1ZEy1NQyGTlJZE%2BmbzyUIArw4F5Z3OwXIxD4P%2Bj2CVvS6QkrpszyaIoCuwrUM2Vi5bq9fxYHuPhKdBPJ3xLURa3UC%2FAsCdFN%2B6X7j5OLT6X1b5aH3w8Eqc4kXm92LLWkqiRw2mZU0WFLFYKQ8bO2fuxOJHwYGA0O6ArZrW9g8Cvbc9zTe5rEOznen1c%2FHkt9XJGFBts3aGKBtzuENTVQB0YsqIo1c6s5vY9uIEGcxidyZ6vhLLIOrwEZPuLJ0kFhnw654%2FHgC7jzUQ0%2FL7tQV7teTRH%2BsCjjQp5G9Mcf2P%2B3mXeybWz6vAWl4wS7hPIyYBH6lZiCkbzNWT3v74or6Zavou8I0Imv%2BkooPsF9vN3oXDMOcfeCnmma4r0pZytSTaAazLNCxSzOBSAakrCFloHAKbTgkfh%2BjVWhZ3SMHTcLlpircdRzUgq1JIslBmdxaTx7xO1%2BPPoWw%3D%3D&amp;nvMid=80354707980&amp;catId=50000833">구매
													<em class="imgList_num__K3JQN">999+</em>
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
												data-nclick="N=a:img*N.image,r:1,i:82045736177"
												href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833"><img
												width="168" height="168" alt="[특별기획] 8color 오버핏 여름 폴리 린넨셔츠"
												src="https://shop-phinf.pstatic.net/20190506_159/500194392_1557146388774Yltos_JPEG/image_2226831411557145785086.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82045736177,r:1"
													title="[특별기획] 8color 오버핏 여름 폴리 린넨셔츠"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">[특별기획]
													8color 오버핏 여름 폴리 린넨셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">17,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82045736177" title="엠프로"
													href="https://smartstore.naver.com/m_pro"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">엠프로</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82045736177"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82045736177"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">구매
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
												data-nclick="N=a:img*N.image,r:14,i:82551626990"
												href="https://cr.shopping.naver.com/adcr.nhn?x=C3RFdKeq4OgJRb48drVRgv%2F%2F%2Fw%3D%3DsoHV0giYDg7iv%2BGAAYLEz536xWn9eV3XqpTUQGcl%2Fm1RzgRAwfFhnBPEvO3QhYlvYsHGQxDQEeWfuUAi8MaCNnagHiSYdlmabMHuRd3JN4PYsL%2FlDahwY%2Bje3ZGwn8dz9y7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtPFfvzgQ7SQSOYpd53GHeIT7jB%2BOimYQJCRwPjmmhbVNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjWju%2BRXF%2FvMDOXit42UPLN0kkvZ7Qty3rpkbYNbB9xAlFYfrXhi4GXEIdnVQJs0PWovZSJWZrT3xOS5zCeTJzhFV1gJ750btEX9VRF5fbsqEevbZw9EOpMPO9NJeBFrRW9d%2FAalJhvFG%2FEMKb9fy8yXPwwEcQ7oppuVqHQ%2FHEiEm%2BayBs7ZAoBeNYqRF1uunOJproZKqs8KjSdGzcX9dmIzgM4%2Fi3Ooc4epROCFz%2B1SdDEc7UxFOCUtpr%2BygQLzcIQQBOT8iK3kLw8LsdgLzTjP3bqI%2BuNfWjhj54My471oUA1Zs%2FU4TdBY4vHKszWg3stVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82551626990&amp;catId=50000830"><img
												width="168" height="168"
												alt="[욱사장픽] 1+1 맨즈 헨리넥 머슬핏 반팔티 6color"
												src="https://shop-phinf.pstatic.net/20210709_37/1625819112753k1Ufb_JPEG/5.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82551626990,r:14"
													title="[욱사장픽] 1+1 맨즈 헨리넥 머슬핏 반팔티 6color"
													href="https://cr.shopping.naver.com/adcr.nhn?x=C3RFdKeq4OgJRb48drVRgv%2F%2F%2Fw%3D%3DsoHV0giYDg7iv%2BGAAYLEz536xWn9eV3XqpTUQGcl%2Fm1RzgRAwfFhnBPEvO3QhYlvYsHGQxDQEeWfuUAi8MaCNnagHiSYdlmabMHuRd3JN4PYsL%2FlDahwY%2Bje3ZGwn8dz9y7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtPFfvzgQ7SQSOYpd53GHeIT7jB%2BOimYQJCRwPjmmhbVNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjWju%2BRXF%2FvMDOXit42UPLN0kkvZ7Qty3rpkbYNbB9xAlFYfrXhi4GXEIdnVQJs0PWovZSJWZrT3xOS5zCeTJzhFV1gJ750btEX9VRF5fbsqEevbZw9EOpMPO9NJeBFrRW9d%2FAalJhvFG%2FEMKb9fy8yXPwwEcQ7oppuVqHQ%2FHEiEm%2BayBs7ZAoBeNYqRF1uunOJproZKqs8KjSdGzcX9dmIzgM4%2Fi3Ooc4epROCFz%2B1SdDEc7UxFOCUtpr%2BygQLzcIQQBOT8iK3kLw8LsdgLzTjP3bqI%2BuNfWjhj54My471oUA1Zs%2FU4TdBY4vHKszWg3stVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82551626990&amp;catId=50000830">[욱사장픽]
													1+1 맨즈 헨리넥 머슬핏 반팔티 6color</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">19,900원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:14,i:82551626990"
													title="피앤콤마" href="https://smartstore.naver.com/dailydays_"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px;">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">피앤콤마</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:14,i:82551626990"
													href="https://cr.shopping.naver.com/adcr.nhn?x=C3RFdKeq4OgJRb48drVRgv%2F%2F%2Fw%3D%3DsoHV0giYDg7iv%2BGAAYLEz536xWn9eV3XqpTUQGcl%2Fm1RzgRAwfFhnBPEvO3QhYlvYsHGQxDQEeWfuUAi8MaCNnagHiSYdlmabMHuRd3JN4PYsL%2FlDahwY%2Bje3ZGwn8dz9y7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtPFfvzgQ7SQSOYpd53GHeIT7jB%2BOimYQJCRwPjmmhbVNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjWju%2BRXF%2FvMDOXit42UPLN0kkvZ7Qty3rpkbYNbB9xAlFYfrXhi4GXEIdnVQJs0PWovZSJWZrT3xOS5zCeTJzhFV1gJ750btEX9VRF5fbsqEevbZw9EOpMPO9NJeBFrRW9d%2FAalJhvFG%2FEMKb9fy8yXPwwEcQ7oppuVqHQ%2FHEiEm%2BayBs7ZAoBeNYqRF1uunOJproZKqs8KjSdGzcX9dmIzgM4%2Fi3Ooc4epROCFz%2B1SdDEc7UxFOCUtpr%2BygQLzcIQQBOT8iK3kLw8LsdgLzTjP3bqI%2BuNfWjhj54My471oUA1Zs%2FU4TdBY4vHKszWg3stVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82551626990&amp;catId=50000830">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:14,i:82551626990"
													href="https://cr.shopping.naver.com/adcr.nhn?x=C3RFdKeq4OgJRb48drVRgv%2F%2F%2Fw%3D%3DsoHV0giYDg7iv%2BGAAYLEz536xWn9eV3XqpTUQGcl%2Fm1RzgRAwfFhnBPEvO3QhYlvYsHGQxDQEeWfuUAi8MaCNnagHiSYdlmabMHuRd3JN4PYsL%2FlDahwY%2Bje3ZGwn8dz9y7WsjvL6fGBruqRzbSMBoQdLXoybizBOVFY0bnGAXBtPFfvzgQ7SQSOYpd53GHeIT7jB%2BOimYQJCRwPjmmhbVNbxZdaW1S8RTxjehdRECszDpmNu2Rs3tEPrV0ZTODsbWqyaFa2xLbpwGCJChqMDqjWju%2BRXF%2FvMDOXit42UPLN0kkvZ7Qty3rpkbYNbB9xAlFYfrXhi4GXEIdnVQJs0PWovZSJWZrT3xOS5zCeTJzhFV1gJ750btEX9VRF5fbsqEevbZw9EOpMPO9NJeBFrRW9d%2FAalJhvFG%2FEMKb9fy8yXPwwEcQ7oppuVqHQ%2FHEiEm%2BayBs7ZAoBeNYqRF1uunOJproZKqs8KjSdGzcX9dmIzgM4%2Fi3Ooc4epROCFz%2B1SdDEc7UxFOCUtpr%2BygQLzcIQQBOT8iK3kLw8LsdgLzTjP3bqI%2BuNfWjhj54My471oUA1Zs%2FU4TdBY4vHKszWg3stVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82551626990&amp;catId=50000830">구매
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