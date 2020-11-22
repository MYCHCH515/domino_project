<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<div id="kakaoLogin" align="center">
    <a id="kakao-login-btn">
    <img src="//k.kakaocdn.net/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="80%"/>
    </a>
    <a href="http://developers.kakao.com/logout"></a>
</div>


</body>
<script>
//카카오 로그인
Kakao.init('4f021c7b70403d52e52b92567f45b59a');
        
$("#kakao-login-btn").on("click", function(){
    //1. 로그인 시도
    Kakao.Auth.login({
        success: function(authObj) {
          //console.log(JSON.stringify(authObj));
          //console.log(Kakao.Auth.getAccessToken());
        
          //2. 로그인 성공시, API를 호출합니다.
          Kakao.API.request({
            url: '/v1/user/me',
            success: function(res) {
              //console.log(JSON.stringify(res));
              res.id += "@k";
              
              $.ajax({
                  url : "/user/json/checkDuplication/"+res.id,
                  headers : {
                      "Accept" : "application/json",
                      "Content-Type" : "application/json"
                    },
                    success : function(idChk){
                        
                        if(idChk==true){ //DB에 아이디가 없을 경우 => 회원가입
                            console.log("회원가입중...");
                            $.ajax({
                                url : "/user/json/addUser",
                                method : "POST",
                                headers : {
                                  "Accept" : "application/json",
                                  "Content-Type" : "application/json"
                                },
                                data : JSON.stringify({
                                userId : res.id,
                                userName : res.properties.nickname,
                                  password : "kakao123",
                                }),
                                success : function(JSONData){
                                   alert("회원가입이 정상적으로 되었습니다.");
                                   $("form").attr("method","POST").attr("action","/user/snsLogin/"+res.id).attr("target","_parent").submit();
                                }
                            })
                        }
                        if(idChk==false){ //DB에 아이디가 존재할 경우 => 로그인
                            console.log("로그인중...");
                            $("form").attr("method","POST").attr("action","/user/snsLogin/"+res.id).attr("target","_parent").submit();
                        }
                    }
              })
            },
            fail: function(error) {
              alert(JSON.stringify(error));
            }
          });
                  
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
        
})//e.o.kakao
</script>





</html>