<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="generator" content="Google Web Designer 1.5.4.0113">
<meta name="template" content="Banner 2.3.2">
<meta name="environment" content="gwd-doubleclick">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



	
	<link href="style.css" rel="stylesheet" type="text/css">
	 <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!--mdl css-->
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

    <!--mdlfont -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">
	
<script data-source="googbase_min.js" data-version="3"
	data-exports-type="googbase" type="text/javascript"
	src="googbase_min.js"></script>
<script data-source="gwd_webcomponents_min.js" data-version="4"
	data-exports-type="gwd_webcomponents" type="text/javascript"
	src="gwd_webcomponents_min.js"></script>
<script data-source="gwdpage_min.js" data-version="8"
	data-exports-type="gwd-page" type="text/javascript"
	src="gwdpage_min.js"></script>
<script data-source="gwdpagedeck_min.js" data-version="8"
	data-exports-type="gwd-pagedeck" type="text/javascript"
	src="gwdpagedeck_min.js"></script>
<script type="text/javascript"
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maps.google.com/maps/api/js?v=3.exp&region=KR"></script>
<script data-source="https://s0.2mdn.net/ads/studio/Enabler.js"
	data-exports-type="gwd-doubleclick" type="text/javascript"
	src="https://s0.2mdn.net/ads/studio/Enabler.js"></script>
<script data-source="gwddoubleclick_min.js" data-version="10"
	data-exports-type="gwd-doubleclick" type="text/javascript"
	src="gwddoubleclick_min.js"></script>
<script data-source="gwdmap_min.js" data-version="6"
	data-exports-type="gwd-map" type="text/javascript" src="gwdmap_min.js"></script>
<script type="text/javascript" gwd-events="support"
	src="gwd-events-support.1.0.js"></script>
<script language="javascript" type="text/javascript" src="slb.js"></script>
<script type="text/javascript" gwd-events="handlers">

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/wow.min.js"></script>

<!-- Custom Theme JavaScript -->
<!-- <script src="js/creative.js"></script>


    gwd.auto_Button1Click = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.goToPage('pagedeck', 'page1', 'slide', 1000, 'linear', 'left');
    };
    gwd.auto_Button4Click = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.getCurrentPage('pagedeck');
    };
    gwd.auto_Bt1Click = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.goToPage('pagedeck', 'page1', 'slide', 1000, 'linear', 'top');
    };
    gwd.auto_Button4Click1 = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.getCurrentPage('pagedeck');
    };
    gwd.auto_Bt1Click1 = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.goToPage('pagedeck', 'page1', 'slide', 1000, 'linear', 'top');
    };
    gwd.auto_Bt1Click2 = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.goToPage('pagedeck', 'page1_1', 'slide', 100, 'linear', 'left');
    };
    gwd.auto_Save_btnClick = function(event) {
      // GWD Predefined Function
      gwd.actions.gwdPagedeck.goToPage('pagedeck', 'page1_2', 'fade', 1000, 'linear', 'top');
    };
  </script> -->
<!-- <script type="text/javascript" gwd-events="registration">
    // Google Web Designer의 이벤트 처리를 위한 지원 코드
     // 이 스크립트 블록은 자동 생성된 것이므로 수정하지 마세요.
    gwd.actions.events.registerEventHandlers = function(event) {
      gwd.actions.events.addHandler('button1', 'click', gwd.auto_Button1Click, false);
      gwd.actions.events.addHandler('button4', 'click', gwd.auto_Button4Click, false);
      gwd.actions.events.addHandler('bt1', 'click', gwd.auto_Bt1Click, false);
      gwd.actions.events.addHandler('button4', 'click', gwd.auto_Button4Click1, false);
      gwd.actions.events.addHandler('bt1', 'click', gwd.auto_Bt1Click1, false);
      gwd.actions.events.addHandler('bt1', 'click', gwd.auto_Bt1Click2, false);
      gwd.actions.events.addHandler('save_btn', 'click', gwd.auto_Save_btnClick, false);
    };
    gwd.actions.events.deregisterEventHandlers = function(event) {
      gwd.actions.events.removeHandler('button1', 'click', gwd.auto_Button1Click, false);
      gwd.actions.events.removeHandler('button4', 'click', gwd.auto_Button4Click, false);
      gwd.actions.events.removeHandler('bt1', 'click', gwd.auto_Bt1Click, false);
      gwd.actions.events.removeHandler('button4', 'click', gwd.auto_Button4Click1, false);
      gwd.actions.events.removeHandler('bt1', 'click', gwd.auto_Bt1Click1, false);
      gwd.actions.events.removeHandler('bt1', 'click', gwd.auto_Bt1Click2, false);
      gwd.actions.events.removeHandler('save_btn', 'click', gwd.auto_Save_btnClick, false);
    };
    document.addEventListener("DOMContentLoaded", gwd.actions.events.registerEventHandlers);
    document.addEventListener("unload", gwd.actions.events.deregisterEventHandlers);
  </script> -->
  <script type="text/javascript">
            jQuery(document).ready(function(){
            	google.maps.event.addDomListener(window, 'load', initialize);
            	
            	var Coordinates = [];
            	function initialize(){
            	    var mapOptions = {
            	        zoom : 6,
            	        center : new google.maps.LatLng(48, 2), //기준이 될 가운데 좌표
            	        disableDefaultUI : false,
            	        scrollwheel : true,
            	        mapTypeControl : false,
            	        zoomControl : true,
            	    };
            	    
            	 
            	    var map = new google.maps.Map(document.getElementById('google_map'), mapOptions);
            	    
            	    google.maps.event.addDomListener(window, "resize", function() {
            	        var center = map.getCenter();
            	        google.maps.event.trigger(map, "resize");
            	        map.setCenter(center); 
            	    });
            	 
            	    var country = [/* ['${country}','${longitude}','${latitude}'] */
            		['파리', 48.5124, 2.2103], // 1번 타이틀, 마커 좌표값, 우선순위(z-index)
            		['루브르 박물관', 48.860757, 2.337736, 1], // 2번 타이틀, 마커 좌표값, 우선순위(z-index)
            		['country 3', 51.51, 4.21, 3],
            		['country 4', 52.51, 4.21, 4],
            		['country 5', 53.51, 4.21, 5],
            		['country 6', 53.51, 5.21, 6],
            		['country 7', 53.51, 6.21, 7],
            		['country 8', 53.51, 7.21, 8] 
            		];
            	 
            	    setMarkers(map, country);
            	    Coordinates.push(country);
        			//마커 담기
        			MarkersArray.push(marker);
        			//array에 담은 위도,경도 데이타를 가지고 동선 그리기
        			flightPath();
            	}
            	 
            	function setMarkers(map, locations){
            		for(var i=0; i < locations.length; i++){
            			
            			if(i != null) var image = 'http://www.stubbyplanner.com/img_v8/selectcityICON_red.png'; // 1번 마커 이미지
            			
            			var compa = locations[i];
            			var myLatLng = new google.maps.LatLng(compa[1], compa[2],compa[3],compa[4],compa[5]);
            			var marker = new google.maps.Marker({
            				position: myLatLng,
            				map: map,
            				icon : image,
            				title : compa[0],
            				zIndex : compa[6]
            			});
            			
            			var infowindow = new google.maps.InfoWindow()
        				google.maps.event.addListener(marker, "click", function () {
        					infowindow.setContent(contentString);
        					infowindow.open(map, this);
        				});
            			
            			var contentString = 
            			  '<div id="content">'+
            		      '<div id="siteNotice">'+
            		      '</div>'+
            		      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
            		      '<div id="bodyContent">'+
            		      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
            		      'sandstone rock formation in the southern part of the '+
            		      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
            		      'south west of the nearest large town, Alice Springs; 450&#160;km '+
            		      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
            		      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
            		      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
            		      'Aboriginal people of the area. It has many springs, waterholes, '+
            		      'rock caves and ancient paintings. Uluru is listed as a World '+
            		      'Heritage Site.</p>'+
            		      '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
            		      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
            		      '(last visited June 22, 2009).</p>'+
            		      '</div>'+
            		      '<div>'+
            		      '<a href="planer_value.do?no=${vo.cityno}&name=${vo.cityname}">'+
            		      '<button id="bt1" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">+</button>'+
            		      '</a>'+
            		      '</div>'+
            		      '</div>'; 

            		}
            		
            	}
            })
            </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgsE34wC54vCEIj_YR31lJWPF9VMduzK8&callback=initMap"
        async defer></script>
</head>

<body>
	<div id="SLB_film"
		style="z-index: 99997; position: absolute; display: none; width: 100%; height: 100%; background-color: #000000; filter: Alpha(opacity = 60); opacity: 0.6; -moz-opacity: 0.6;"></div>
	<div id="SLB_content" onclick="SLB();" align="center"
		style="z-index: 99999; position: absolute;"></div>
	<div id="SLB_loading" onclick="SLB();" title="close..">
		Loading...</div>
	<gwd-doubleclick id="gwd-ad" polite-load=""> 
	<div is="gwd-pagedeck" class="gwd-page-container" id="pagedeck">
		<div is="gwd-page" id="page1"
			class="gwd-page-wrapper gwd-page-size gwd-lightbox gwd-div-8ehm"
			data-gwd-width="1280px" data-gwd-height="780px">
			<div class="gwd-page-content gwd-page-size gwd-div-1aei">
				<div class="gwd-div-19b4" style=""></div>
				<div class="gwd-div-16m9" style="border-style: solid;"></div>
				<div class="gwd-div-1e92" id="calander" style="">
					<input type="month"/>
				</div>
				<div class="gwd-div-1ka9" style="border-style: solid;"></div>
				
				<div class="gwd-div-1s5s" style=""></div>
				<p class="gwd-p-19oj">
					<br class="">
				</p>
				<p class="gwd-p-zobl" id="title1" style="border-style: solid;">숙소</p>
				<p class="gwd-p-n5ul" id="title2" style="border-style: solid;">
					<span class="gwd-span-1iwa">맛집</span> <br class=""> <br
						class="">
				</p>
				
				<!-- <div class="gwd-div-45ow" id="button2" style=""></div>
				<div class="gwd-div-18o3" id="button3" style=""></div> -->
				<div class="gwd-div-2h60" style=""></div>
				<div class="gwd-div-1z45" style=""></div>
				<div class="gwd-div-ikgy" style="border-style: solid;" id="place1"></div>
				<jsp:include page="${jsp }"></jsp:include>
				<div class="gwd-div-1wk8" style="border-style: solid;" id="place2"></div>
				<jsp:include page="${jsp }"></jsp:include>
				<div class="gwd-div-1vxx" style="border-style: solid;" id="place3"></div>
				<jsp:include page="${jsp }"></jsp:include>
				<div class="gwd-div-oojv" style="border-style: solid;" id="place4"></div>
				<jsp:include page="${jsp }"></jsp:include>
				<div class="gwd-div-1d7o" id="planing1" style=""></div>
				<div class="gwd-div-1r07" id="planing2" style=""></div>
				<a href="help.jsp">
				<button id="bt1" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">사용법</button></a>
				<a href="calander.jsp">
				<button id="bt2" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">일정표</button></a>
				<button id="bt3" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">플래너 초기화</button>
				<!-- Accent-colored flat button -->
				<button class="mdl-button mdl-js-button mdl-button--accent" id="bt4">출발일</button>
				<button class="mdl-button mdl-js-button mdl-button--accent" id="bt5">여행기간</button>
				<div class="mdl-textfield mdl-js-textfield" id="tf">
					<input class="mdl-textfield__input" type="text" id="sample3">
					<label class="mdl-textfield__label" for="sample3">Text...</label>
				</div>
				<a href=""><p class="gwd-p-1g59" id="save_btn"
						style="border-style: solid;">플래너 저장</p></a>
				<div class="gwd-div-h7fg" id="planing3"></div>
				<gwd-map id="google_map" class="gwd-map-12mt"> </gwd-map>
			</div>
		</div>
		
	</div>
	</gwd-doubleclick>
	<script type="text/javascript" id="gwd-init-code">
    (function() {
      var gwdAd = document.getElementById('gwd-ad');

      /**
       * Handles the DOMContentLoaded event. The DOMContentLoaded event is
       * fired when the document has been completely loaded and parsed.
       */
      function handleDomContentLoaded(event) {

      }

      /**
       * Handles the WebComponentsReady event. This event is fired when all
       * custom elements have been registered and upgraded.
       */
      function handleWebComponentsReady(event) {
        // Start the Ad lifecycle.
        setTimeout(function() {
          gwdAd.initAd();
        }, 0);
      }

      /**
       * Handles the event that is dispatched after the Ad has been
       * initialized and before the default page of the Ad is shown.
       */
      function handleAdInitialized(event) {}

      window.addEventListener('DOMContentLoaded',
        handleDomContentLoaded, false);
      window.addEventListener('WebComponentsReady',
        handleWebComponentsReady, false);
      window.addEventListener('adinitialized',
        handleAdInitialized, false);
    })();
  </script>
</body>

</html>