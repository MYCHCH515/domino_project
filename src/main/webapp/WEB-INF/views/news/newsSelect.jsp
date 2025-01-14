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
  <link href ="../resources/css/common/board.css" rel="stylesheet">
 
  <style type="text/css">

	.select_header{
		padding:20px 30px; 
		border-bottom: 1px solid #ddd
	}
	
	.select_header strong{
		font-size: 18px;
	}
	
	.select_header ul{
		float: right;
	}
	
	.select_header ul li{
		float: right;
		padding-left: 20px;
		font-size: 13px;
		color: #888888;
	}
	
	.list_back{
		margin: 0 auto;
		margin-top: 50px;
		width: 240px;
		height: 60px;
		background-color:  #222222;
		text-align: center;
		line-height: 60px;
	}
	
	.list_back a, .sel_control a{
		color: white;
		font-size: 18px;	
	}
	
	.sel_control{
		float: right;
		width: 100px;
		height: 50px;
		background-color: #222222;
		color: white;
		text-align: center;
		line-height: 50px;
		margin-right: 5px;
		margin-top: 20px;
	}
  </style>  
</head>

<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	
		 <div class="order-title-wrap">
			<h2 class="order-title">공지사항</h2>
				<div class="depth-area">
					<ol>
						<li><a href="http://localhost/t1">홈</a></li>
						<li><a href="${pageContext.request.contextPath}/news/dominoNewsList">공지사항</a></li>
						
						<c:choose>
							<c:when test="${news eq 'dominoNews'}">
								<li><strong>도미노뉴스</strong></li>
							</c:when>
							
							<c:when test="${news eq 'press'}">
								<li><strong>보도자료</strong></li>
							</c:when>
							
						</c:choose>	
					</ol>
				</div>
			</div>
			
			<ul id="select" style="padding: 20px 0; border-bottom: 2px solid black;">
				<li>
					<a href="${pageContext.request.contextPath}/dominoNews/dominoNewsList">도미노뉴스</a> ㅣ 
					<a href="${pageContext.request.contextPath}/press/pressList">보도자료</a>   
				</li>
			</ul>

	<div>
		<div class="select_header"> 
			<strong>${dto.board_title}</strong>
			<ul>
				<li>조회 <span>${dto.hit}</span></li>
                <li>${dto.regDate}</li>
           </ul>
		</div>

 		<div style="padding: 15px 30px; border-bottom: 1px solid #ddd">
 			${dto.board_contents}
 			
 			
	 		<c:forEach items="${dto.boardFileDTOs}" var="file">
			 	<a href="./fileDown?file_Name=${file.file_Name}&ori_Name=${file.ori_Name}">${file.ori_Name}</a>
			 	<br>
			</c:forEach>
		 	
 		</div>
 	</div>
 	
	 <div class="list_back">
		<a href="./${news}List">목록</a>
	 </div>
	 
	 
	 <c:if test="${not empty member and member.member_id eq 'admin'}">
		 <div class="sel_control" id="news_del">
		 	<a href="./${news}Delete?board_num=${dto.board_num}">삭제</a>
		 </div>
		 
		 <div class="sel_control" id="news_upd">
		 	<a href="./${news}Update?board_num=${dto.board_num}">글수정</a>
		 </div>
	 </c:if>
	 
 </div>

 <c:import url="../template/footer.jsp"></c:import>
 
</body>
</html>