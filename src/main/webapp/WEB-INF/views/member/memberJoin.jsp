<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
</head>
<body>
	<h1>Member Join Page</h1>
	<div class="container">
		<form action="./memberJoin" method="post" id="frm">
				<div class="form-group">
				<label for="name">이름 </label>
				<input type="text" id="name">
			</div>
			
			<div class="form-group">
				<label for="id">아이디 </label>
				<input type="text" id="id">
			</div>
			
			<div class="form-group">
				<label for="pw">비밀번호 </label>
				<input type="password" id="pw">
			</div>
			
			<div class="form-group">
				<label for="pw2">비밀번호 확인</label>
				<input type="password" id="pw2">
			</div>
			
			<div class="form-group">
				<label for="phome">휴대전화 </label>
				<input type="text">
				<button>중복확인</button>
			</div>
			
			<div class="form-group">
				<label for="eamil">이메일 </label>
				<input type="email">
				<button>중복확인</button>
			</div>
			
			<div class="form-group">
				<label for="agg">개인정보 유효기간 선택</label>
  				<label class="radio-inline"><input type="radio" name="optradio" value="1">1년</label>
				<label class="radio-inline"><input type="radio" name="optradio" value="3">3년</label>
				<label class="radio-inline"><input type="radio" name="optradio" value="5">5년</label>
			</div>
			
			<div class="form-group">
				<label for="aggAll">약관 및 광고성 정보수신 전체 동의</label>
				<div class="checkbox">
  					<label><input type="checkbox" value="" id="checkAll">전체 동의하기</label>
				</div>
				
				<label for="aggAll">약관 전체동의</label>
				<div class="checkbox">
  					<label><input type="checkbox" value="" id="checkAll2">전체 동의하기</label>
				</div>
  				<div class="checkbox">
  					<label><input type="checkbox" value="" id="check1" class="chk2">개인정보 수집 및 이용동의(필수)</label>
				</div>
				
				<div class="checkbox">
 					 <label><input type="checkbox" value="" id="check2" class="chk2">이용약관 동의(필수)</label>
				</div>
				
				<div class="checkbox disabled">
  					<label><input type="checkbox" value="" id="check3" class="chk2">위치기반 서비스 약관 동의(필수)</label>
				</div>
				
				<label for="aggAll">광고성 정보 수신 전체 동의</label>
				<div class="checkbox">
  					<label><input type="checkbox" value="" id="checkAll3">전체 동의하기</label>
				</div>
  				<div class="checkbox">
  					<label><input type="checkbox" value="" id="check4" class="chk">문자 메세지(선택)</label>
				</div>
				
				<div class="checkbox">
 					 <label><input type="checkbox" value="" id="check5" class="chk">이메일(선택)</label>
				</div>
				
				<div class="checkbox disabled">
  					<label><input type="checkbox" value="" id="check6" class="chk">DM 우편(최근 배달주소로 배송)(선택)</label>
				</div>
			</div>
			<button type="submit">가입하기</button>
		</form>
	</div>
</body>
<script type="text/javascript">
	$("#checkAll2").click(function() {
		if($("#checkAll2").is(":checked")){
			$(".chk2").prop("checked",true);
		}else{
			$(".chk2").prop("checked",false);
		}
	});
	
	$("#checkAll3").click(function() {
		if($("#checkAll3").is(":checked")){
			$(".chk").prop("checked",true);
		}else{
			$(".chk").prop("checked",false);
		}
		
	});
	
	$("#checkAll").click(function() {
		if($("input:checkbox[id=checkAll]").prop("checked")) {
			$("input[type=checkbox]").prop("checked", true);
		}else {
			$("input[type=checkbox]").prop("checked", false);
		}
		
	});

	
	

</script>
</html>