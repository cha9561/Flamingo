<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>practice4 </title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
</head>
<SCRIPT LANGUAGE="JavaScript">
/*
	작성자 : kay  ( http://www.uhoon.co.kr ) 공유 시 지우지 남겨주세유..
	작성일 : 2014.07.17
	내용 : 구글맵 v3 - 마커 + 말풍선 + GPS 연동+ 원그리기 + 동적 마커 생성( Ajax )
		   : 줌 또는 2014.08.04 추가 
*/
var markers = [];
var map;
var geocoder;
var infowindow = null;

var latitude = 0;
var longitude = 0;


var startLat = null;
var startLng = null;
var endLat = null;
var endLng = null;

function initialize() {
	geocoder = new google.maps.Geocoder();

	// GPS 인식 가능 여부(현재 위치)
	if (navigator.geolocation) {

		navigator.geolocation.getCurrentPosition(function (pos) {

			// 현재 위경도 값(GPS) 변수에 넣기.
			var latitude = 48;
			var longitude = 2;

			var mapOptions = {
				zoom: 4,
				mapTypeId: google.maps.MapTypeId.ROADMAP,
				center: new google.maps.LatLng(latitude,longitude)
			};

			map = new google.maps.Map(document.getElementById('map'),mapOptions);

			

			// 처음 맵 로드 완료 후 지도 범위 확인을 위해 좌표 인식.
			google.maps.event.addListener(map, 'idle', function(){
				startLat = map.getBounds().getSouthWest().lat();
				startLng = map.getBounds().getSouthWest().lng();
				endLat = map.getBounds().getNorthEast().lat();
				endLng = map.getBounds().getNorthEast().lng();

				viewMarker();
			});

			// 줌 또는 드래그, 화면이동 등 지도 정보 변경시에 화면내에 마커만 표시하기위해 좌표 인식 s
			google.maps.event.addListener(map, 'zoom_changed', function() {
				startLat = map.getBounds().getSouthWest().lat();
				startLng = map.getBounds().getSouthWest().lng();
				endLat = map.getBounds().getNorthEast().lat();
				endLng = map.getBounds().getNorthEast().lng();

				viewMarker();
			});

			google.maps.event.addListener(map, 'dragend', function(){
				startLat = map.getBounds().getSouthWest().lat();
				startLng = map.getBounds().getSouthWest().lng();
				endLat = map.getBounds().getNorthEast().lat();
				endLng = map.getBounds().getNorthEast().lng();

				viewMarker();
			});

			// 줌 또는 드래그등 지도 정보 변경시에 화면내에 마커만 표시하기위해 좌표 인식 se


		}, function (error) {
			switch (error.code) {
			case 1:
				$("#errormsg").html("User denied the request for Geolocation.");
				break;
			case 2:
				$("#errormsg").html("Location information is unavailable.");
				break;
			case 3:
				$("#errormsg").html("The request to get user location timed out.");
				break;
			case 0:
				$("#errormsg").html("An unknown error occurred.");
				break;
			}
		});
	} else {
		alert("Geolocation is not supported by this browser.");
	}
}

// 드롭 마커 보기
function viewMarker() {
	if(startLat)
	{
		$.ajax({
			type: "GET",
			url: "../planner/marker.js",
			 beforeSend: function() {
				fnRemoveMarker();	// 조회 전 기존 마커 제거
			 },
			success: function (json) {
				var markerList = $.parseJSON(json);
				var listLen = markerList.length;
				var kkk = 0 ;		//마커 갯수 확인 용
				for(var i=0; i<listLen; i++){
					if (parseFloat(startLat) <= parseFloat(markerList[i].lat) && parseFloat(startLng) <= parseFloat(markerList[i].lng) && parseFloat(endLat) >= parseFloat(markerList[i].lat) && parseFloat(endLng) >= parseFloat(markerList[i].lng))
					{
						kkk++;	//마커 갯수 확인 용
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(markerList[i].lat,markerList[i].lng),
							map: map,
							draggable: false,
							icon: markerList[i].icon,
							html: markerList[i].cont
						});
						markers.push(marker);

						var infowindow = new google.maps.InfoWindow()

						google.maps.event.addListener(marker, "click", function () {
							infowindow.setContent(this.html);
							infowindow.open(map, this);
						});
					}
				}
				$("#marketCount").html("페이지내에 총 "+kkk+"개의 마커가 존재합니다.");
			}
		});
	}
}

// 마커 제거 함수
function fnRemoveMarker()
{
	for (var i = 1; i < markers.length; i++) {
		markers[i].setMap(null);
	}
}

$( window ).load(function() {
	initialize();
});

//
</SCRIPT>
<body>
<div id="map" style="width:760px;height:400px;margin-top:20px;"></div>
<input type="button" value="마커 삭제" onclick="Javascript:fnRemoveMarker();" />
<input type="button" value="마커 읽어오기" onclick="Javascript:viewMarker();" />
<div id="marketCount">0</div>
</body>
</html>