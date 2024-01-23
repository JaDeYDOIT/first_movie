<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    <link rel="stylesheet" href="/css/footer.css">

<h2>오시는길</h2>
<div id="map" style="width:60%;height:50vh;margin:2% auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79f46c3f7839230bc611217642319bb4&libraries=clusterer"></script>

<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.49883748984933, 127.03169666365558), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.49883748984933, 127.03169666365558); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    



</script>


    
    
    
    
    
    
    
    
<%@ include file="../footer.jsp" %>