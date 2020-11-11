<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <c:import url="../template/bootstrap.jsp"></c:import>
  <link href ="../resources/css/common/default.css" rel="stylesheet">
  <script src="../resources/js/header.js"></script>
<c:import url="../template/header.jsp"></c:import>

</head>
<body>

	
	
	<div class="container">
	<h1>나의정보</h1>
	<br>
	
	<ul id="select">
		<li>
		<a href="./memberLevel">매니아 등급</a> ㅣ 
		<a href="./memberOrder">주문 내역</a> ㅣ 
		<a href="#">쿠폰함</a> ㅣ 
		<a href="./memberEquirly">1:1 문의</a> ㅣ 
		<a href="./memberCheck">정보 수정</a> 
		</li>
	</ul>
	<div class="myLevel">
		<div class="myCheck">본인여부 확인</div>
		<div></div>
		<div class="myCheck2">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시한번 확인합니다.</div>
	</div>
	
	<form action="./memberCheck" method="post">
	<table class="memberCheck">
		<tr>
			<td>아이디</td><td><input type="text" name="member_id" value="${member.member_id}" readonly="readonly"></td>
		</tr>
		<tr>
			<td></td><td></td>
		</tr>
		<tr>
			<td>비밀번호</td><td><input type="password" name="member_pw"><input type="submit" value="확인"></td>
		</tr>
		
		
	</table>
	</form>
	
	</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>