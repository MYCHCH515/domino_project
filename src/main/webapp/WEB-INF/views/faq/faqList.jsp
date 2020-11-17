<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <c:import url="../template/bootstrap.jsp"></c:import>
  <link href ="../resources/css/common/default.css" rel="stylesheet">
  <script src="../resources/js/header.js"></script>

	<style type="text/css">
		.detail_page{
			border-bottom: 2px solid black;
			padding: 20px 0;
		}		
		.detail_page span{
			float: right;
			font-size: 15px;
			padding: 1% 0;
		}
		
		.detail_page_Link {	
			text-align: left;
			color: black;
			padding: 0;
		}
	
		.faqnav ul{
			background-color: #f5f5f5; 
			border: none;
			margin-bottom: 3px;
		}
		
		
		.faqnav ul a{
			font-size: 16px;
			color: gray;
			font-weight: bold;
		}
		
		.faq_control{
			width: 100px;
			height: 50px;
			background-color: #222222;
			text-align: center;
			line-height: 50px;
			font-size: 18px;
			margin-top: 10px;
		}
	
		.faq_control a{
			color: white;
			font-weight: bold;
		}
		
		.faq_question, .faq_answer{
			border-bottom:  1px solid #888; height: 80px; padding: 15px 10px;
		} 
		
		#selected {
			background-color: #222222;
		}
	
	</style>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	
	<div class="container">
	
	  <div class="detail_page">
			<h2>공지사항<span style="font-size: 12px;">홈>고객센터>자주하는질문</span></h2>
					
			<div class="detail_page_Link">
				<a href="#">자주하는 질문</a><a href="#">온라인 신문고</a>
			</div>
	  </div>
	
	
	  <div style="padding: 1% 0";>
		 <div style="border-bottom: 1px solid #888; margin-bottom: 3%; padding: 1% 0 2% 0;">
			<p>도미노피자에 대한 궁금증을 바로 확인하실 수 있습니다.</p>
			<p class="txt_faq">도미노피자 고객만족센터 <a href="#">080-860-3082</a></p>
		 </div>
					
		 <div class="faqnav">
			  <ul class="nav nav-pills nav-justified">
			   		<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=1">피자 주문하기</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=2">주문확인</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=3">포장 주문</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=4">피자 선물하기</a></li>
			  </ul>
		
			  <ul class="nav nav-pills nav-justified" style="background-color: #f5f5f5; border: none;">
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=5">도미노콘</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=6">피자 상품권</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=7">홈페이지 관련</a></li>
					<li><a href="${pageContext.request.contextPath}/faq/faqList?faq_type=8">배달서비스 평가</a></li>
			  </ul>
		 </div>
			
	</div>
	
	<div style="border-top: 2px solid black;">
	
		<c:forEach items="${list}" var="dto" varStatus="vs">
			<div class="col-sm-12 faq_question">
				 <div class="col-sm-12">
				 	<strong style="color:#238ece; padding-right: 10px;">Q</strong> 
				 	<strong style="color:black;"> <a href=# class="faq_title">${dto.board_title}</a> </strong>
				 	<a href="#" class="btn faq_more" style="float: right">&or;</a>
				 </div>
			 </div>	 
			 
			 <div class="col-sm-12 faq_answer" style="background-color: #f5f5f5;">
			 	<div class="col-sm-12">
				 	<strong style="color:#ff143c;  padding-right: 10px;">A</strong>
				 	<strong style="color:black;"> ${dto.board_contents} </strong>
				 </div>
			 </div>		
		 </c:forEach>	
	</div>
	
	
	<div  class="faq_control" style="float: right;">
		<a href="./faqWrite">글작성</a>
	</div>
	
	</div>

 	<c:import url="../template/footer.jsp"></c:import>
	
	<script>
		$(document).ready(function(){
	  	$(".faqnav li a").click(function(){
	  		 $(this).attr("id","selected");
	   		 $(this).tab('show');
	  	});
		});
		
		 $(function(){ 
				$('.faq_answer').hide();
				$('.faq_more').click(function(){
					$('.faq_answer').slideToggle();
			});
		 });

	</script>
</body>
</html>