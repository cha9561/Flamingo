<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
	// 마크, 동선을 그리고 난 후 해당 위치를 array에 저장합니다.
	var MarkersArray = [];
	var Coordinates = [];
	var travelPathArray = [];
	var map;

	function initialize() {
		var myLatlng = new google.maps.LatLng(48, 2);
		var myOptions = {
			zoom : 5,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		map = new google.maps.Map(document.getElementById("map_canvas"),
				myOptions);
		
		google.maps.event.addListener(map, 'click', function(event) {
			var image = "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
			var marker = new google.maps.Marker({
				position : event.latLng,
				map : map,
				title : '위치마커',
				icon:image
				
			});
			attachMessage(marker, event.latLng);
			//선을 그리기 위해 좌표를 넣는다.
			Coordinates.push(event.latLng);
			//마커 담기
			MarkersArray.push(marker);
			//array에 담은 위도,경도 데이타를 가지고 동선 그리기
			flightPath();
		});
		
	
	}

	//해당 위치에 주소를 가져오고, 마크를 클릭시 infowindow에 주소를 표시한다.
	function attachMessage(marker, latlng) {
		geocoder = new google.maps.Geocoder();
		geocoder.geocode({
			'latLng' : latlng
		}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				if (results[0]) {
					var address_nm = results[0].formatted_address;
					var infowindow = new google.maps.InfoWindow({
						content : address_nm,
						size : new google.maps.Size(50, 50)
					});
					google.maps.event.addListener(marker, 'click', function() {
						infowindow.open(map, marker);
					});
				}
			}
		});
	}
	//동선그리기
	function flightPath() {
		for (i in travelPathArray) {
			travelPathArray[i].setMap(null);
		}
		var lineSymbol = {
			    path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
			  };
		var flightPath = new google.maps.Polyline({
			path : Coordinates,
			strokeColor : "black",
			strokeOpacity : 0.5,
			strokeWeight : 3,
			icons: [{
			      icon: lineSymbol,
			      offset: '100%'
			    }]
		});
		flightPath.setMap(map);
		travelPathArray.push(flightPath);
	}
</script>
</head>
<body onload="initialize()">
	<div id="map_canvas" style="width: 984px; height: 468px;"></div>
</body>
</html>