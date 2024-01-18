<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="/css/login.css" />
<!-- 네이버 로그인에 필요한 라이브러리 시작 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- 네이버 로그인에 필요한 라이브러리 끝 -->
<!-- 카카오 로그인에 필요한 라이브러리 시작 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 로그인에 필요한 라이브러리 끝 -->
<!-- 구글 로그인에 필요한 라이브러리 시작 -->
<meta name ="google-signin-client_id" content="735176904148-sao9i6bkcrquin8d5e2v0m0fnfint3uk.apps.googleusercontent.com">
<!-- 구글 로그인에 필요한 라이브러리 끝 -->

	 <form method="post" id="myForm" action="login.do" onsubmit="return logincheck();"><!-- <form> 시작 -->
	 <div class="logwrap">
	 	<div class="login">
	 		<a href="/main"><img alt="" src="/images/header/logo.png"></a>
	 	</div>
	 	<div class="loginput">
	 	<div class="userid">
		     <input id="member_id" type="text" name="member_id" value="">
		</div>
		<div class="userpw">
		     <input id="member_pw" type="password" name="member_pw">
		 </div>
 	</div>
 	<div>
 		<span>
	    <input type="checkbox" id="idcheckbox" name="idcheckbox">
	    <label class="check_label" for="idcheckbox" th:onclick="toggleCheckbox()" onselectstart="return false;">아이디저장</label>
	    </span>
	    <span>
		    <a href="/member/member.do">회원가입 | </a>
		    <a href="#">아이디찾기 | </a>
		    <a href="#">비밀번호찾기</a>
	    </span>
	</div>
	<div class="logbox">
			<button class="fmos" type="submit"></button>
		<div class="sociallog">
			<span><a href="#" id="naver_id_login"></a></span>
			<span><a href="javascript:kakaoLogin();" class="kakaobutt"><img alt="" src="/images/kakao_login.png"></a></span>
		</div>
	</div>
 </div>
 </form> <!-- form 끝 -->
 
<!-- 구글 로그인 시작 -->
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<ul>
 <li id="GgCustomLogin">
  <a href="javascript:void(0)">
   <span>Login with Google</span>
  </a>
 </li>
</ul>
<script>

	//처음 실행하는 함수
	function init() {
		gapi.load('auth2', function() {
			gapi.auth2.init();
			options = new gapi.auth2.SigninOptionsBuilder();
			options.setPrompt('select_account');
	        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
			options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
	        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
	        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
			gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
		})
	}
	function onSignIn(googleUser) {
		var access_token = googleUser.getAuthResponse().access_token
		$.ajax({
	    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
			url: 'https://people.googleapis.com/v1/people/me'
	        // key에 자신의 API 키를 넣습니다.
			, data: {personFields:'birthdays', key:'AIzaSyBvqNeRAT4k53uehTL0y52pZPQs2oN9Ue4', 'access_token': access_token}
			, method:'GET'
		})
		.done(function(e){
	        //프로필을 가져온다.
			var profile = googleUser.getBasicProfile();
	        console.log("Google Profile Information:");
	        console.log("ID: " + profile.getId());
	        console.log("Name: " + profile.getName());
	        console.log("Email: " + profile.getEmail());
	        console.log("Gender: " + profile.getGender());
	        
	        console.log("Birthday Information from People API:");
	        console.log(e);
		})
		.fail(function(e){
			console.log(e);
		})
	}
	function onSignInFailure(t){		
		console.log(t);
	}

	</script>
<!-- 구글 api 사용을 위한 스크립트 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<!-- 구글 로그인 끝 -->

<!-- 네이버 로그인 시작 -->
	  <script type="text/javascript">
	  	var naver_id_login = new naver_id_login("McJvK_Tuse_oW1YOJ1Oi", "http://localhost:9095/member/login.do");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2,40);
	  	naver_id_login.setDomain("http://localhost:9095/login.do");
	  	naver_id_login.setState(state);
	  	naver_id_login.init_naver_id_login();
	  	
	  	  naver_id_login.get_naver_userprofile("naverSignInCallback()");
	  	  function naverSignInCallback() {
	  	    var member_email = naver_id_login.getProfileData('email');
	  	    var member_name = naver_id_login.getProfileData('name');
	  	    var member_gender = naver_id_login.getProfileData('gender');
	  	    
	  	    if(member_gender == 'M'){
	  	    	member_gender = 0;
	  	    } else{
	  	    	member_gender = 1;
	  	    }
	  	    
		  	  const redirectUrl = 'http://localhost:9095/member/social_log' +
	          '?member_name=' + encodeURIComponent(member_name) +
	          '&member_email=' + encodeURIComponent(member_email) +
	          '&member_gender=' + encodeURIComponent(member_gender) +
	          '&member_means=' + encodeURIComponent("네이버");
			   window.location.href = redirectUrl;
	  	  }
	  	  
	 // 네이버 로그아웃 : http://nid.naver.com/nidlogin.logout
	  </script>
<!-- 네이버 로그인 끝 -->

<!-- 카카오 로그인 시작 -->
	<script>
    	window.Kakao.init("f95805f8f77d9deff00c93e10ba90efb");

	    document.getElementById("kakaoLoginButton").addEventListener("click", function() {
	        kakaoLogin();
	    });

    function kakaoLogin(){
        Kakao.Auth.login({
            scope:'profile_nickname, account_email, gender',
            success: function(authObj){
                console.log(authObj);
                window.Kakao.API.request({
                    url:'/v2/user/me',
                    success: res => {
                    	var kakao_account = res.kakao_account;
                        var member_name = res.kakao_account.profile.nickname;
                        var member_email = res.kakao_account.email;
                        var member_gender = res.kakao_account.gender;
                        console.log(kakao_account);
                        console.log(Kakao.Auth.getAccessToken());
                        if (res.kakao_account.gender == 'male') {
                        	member_gender = 0; // 값 할당
                        } else {
                        	member_gender = 1; // 값 할당
                        }
                        const redirectUrl = 'http://localhost:9095/member/social_log' +
                            '?member_name=' + encodeURIComponent(member_name) +
                            '&member_email=' + encodeURIComponent(member_email) +
                            '&member_gender=' + encodeURIComponent(member_gender) +
                            '&member_means=' + encodeURIComponent("카카오");
                        window.location.href = redirectUrl;
       	            }
                });
            }
        });
    }
    function Logout(){
        sessionStorage.clear();
    }
    // 카카오 로그아웃: https://developers.kakao.com/logout
</script>
<!-- 카카오 로그인 끝 -->

<!-- 아이디,비밀번호 5~15글자 제약 시작 -->
  <script>
  function logincheck() {
	    var member_id = document.getElementById("member_id").value;
	    var member_pw = document.getElementById("member_pw").value;
	    var check = 1;

	    if (member_id.length < 4 || member_id.length >= 15) {
	      alert("아이디는 4~15 글자로 작성해주세요");
	      return false;
	    }
	    if (member_pw.length < 4 || member_pw.length >= 15) {
	      alert("비밀번호는 4~15 글자로 작성해주세요");
	      return false;
	    }
		    if (member_pw.length >= 4 && member_pw.length <= 15 && member_id.length >= 4 && member_id.length <= 15) {
		      $.ajax({
		        url: '/member/loginfailcheck.do',
		        type: 'get',
		        data: {
		        	'member_id': member_id
		        },
		        error: function (error) {
		          alert(error);
		        },
		        success: function (result) {
		        	var check = result
		        	if (result == 0) {
		 	  	    	Swal.fire({
		 	  	    	  title: "로그인에 실패하셨습니다.",
		 	  	    	  width: 600,
		 	  	    	  padding: "3em",
		 	  	    	  color: "#716add",
			 	  	    	html: `
			 	  	    	 <div><span style="font-size: 30px; font-weight: 600;" >다시 시도해 주세요!!</span></div> 
			 	  	         <div style="background: #fff url(/images/trees.png) no-repeat center/cover; padding: 20px;">
			 	  	           <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
			 	  	           <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
			 	  	           <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
			 	  	           <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
			 	  	         </div>
			 	  	       `,
		 	  	    	  backdrop: `
		 	  	    	    rgba(128,128,128,.5)
		 	  	    	    url("/images/nyan-cat.gif")
		 	  	    	    center 70px
		 	  	    	    no-repeat
		 	  	    	  `
		 	  	    	}).then(() => {
		 	  	         $("#member_id").val('');
		 	  	         $("#member_pw").val('');
		 	  	       });
		 	  	    } 
		        }
		      });
		    }
		    if (check == 1) {
		        $.ajax({
		            url: '/member/logincussesscheck.do',
		            type: 'get',
		            data: {
		                'member_id': member_id,
		                'member_pw': member_pw
		            },
		            error: function (error) {
		                alert(error);
		            },
		            success: function (result) {
		                if (result == 1) {
		                    Swal.fire({
		                        title: "로그인 성공!",
		                        text: "환영합니다.",
		                        icon: "success"
		                    }).then((result) => {
		                        if (result.value) {
		                            document.getElementById("myForm").submit();
		                        }
		                    });
		                } else {
		                    Swal.fire({
		                        title: "로그인에 실패하셨습니다.",
		                        width: 600,
		                        padding: "3em",
		                        color: "#716add",
		                        html: `
		                        <div><span style="font-size: 30px; font-weight: 600;">다시 시도해 주세요!!</span></div> 
		                            <div style="background: #fff url(/images/trees.png) no-repeat center/cover; padding: 20px;">
		                                <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
		                                <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
		                                <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
		                                <img src="/images/nyan-cat.gif" alt="Image 1" style="width: 80px; height: 80px; margin-right: 2px;">
		                            </div>
		                        `,
		                        backdrop: `
		                            rgba(128,128,128,.5)
		                            url("/images/nyan-cat.gif")
		                            center 30px
		                            no-repeat
		                        `
		                    }).then(() => {
		                        $("#member_id").val('');
		                        $("#member_pw").val('');
		                    });
		                }
		            }
		        });
		    }
		    return false;
  	}
  </script>
<!-- 아이디,비밀번호 5~15글자 제약 시작 끝 -->
 
<!-- 쿠키 가져오기 + 아이디저장 기능 관련 시작 -->
<script>
	function getCookie(cookieName) {
	    const name = cookieName + "=";
	    const decodedCookie = decodeURIComponent(document.cookie);
	    const cookieArray = decodedCookie.split(';');
	
	    for (let i = 0; i < cookieArray.length; i++) {
	        let cookie = cookieArray[i].trim();
	        if (cookie.indexOf(name) === 0) {
	            return cookie.substring(name.length, cookie.length);
	        }
	    }
	
	    return "";
	}
	
	// 사용 예시
	const cIDCookie = getCookie("c_id");
	const idCheckcookie = getCookie("idcheck");
	const idcheckbox = document.getElementById("idcheckbox");
	document.getElementById("member_id").value = cIDCookie;

	if (idCheckcookie === "1") {
		idcheckbox.checked = true;
	}
<!-- 쿠키 가져오기 + 아이디저장 기능 관련 끝 -->	
</script>

<!-- ID저장 checkbox 체크시1 체크안할시2가 출력되도록 해주는 기능 시작 -->
 	 <script>
		 var checkbox = document.getElementById("idcheckbox"); 
		
		 function CheckboxChange(checkbox) {
			    if (checkbox.checked) {
			      checkbox.value = "1";
			      console.log(checkbox.value);
			    } else {
			      checkbox.value = "2";
			      console.log(checkbox.value);
			    }
			  }

			  // 각 체크박스에 이벤트 리스너를 등록합니다.
			  checkbox.addEventListener("change", function() {
			  CheckboxChange(checkbox);
			  });
	</script>
 <!-- ID저장 checkbox 체크시 2 체크 안할시 1이 출력되도록 해주는 기능 시작 -->
<%@ include file="../footer.jsp" %>