<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>Map</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<link   rel="icon" href="${basePath}/favicon.ico" type="image/x-icon" />
		<link   rel="shortcut icon" href="${basePath}/favicon.ico" />
		<link href="${basePath}/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
		<script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
		<link href="${basePath}/css/common/base.css?${_v}" rel="stylesheet"/>
	  <link rel="stylesheet" href="http://127.0.0.1/arcgis_js_api/library/4.6/esri/themes/dark-blue/main.css"/>
	  <style>
		    html,
		    body,
		    #viewDiv {
		    	padding:0;
		      margin-top: 0px;
		      height: 100%;
		      width: 100%;
		    }
		       #infoDiv {
		      position: absolute;
		      top: 60px;
		      left: 60px;
		    }
		
		    #infoDiv input {
		      border: none;
		      box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 2px;
		    }
		    .esri-ui-top-left {
			    top: 28px;
			    left: 0;
			}
  </style>
	  
  <script src="http://127.0.0.1/arcgis_js_api/library/4.6/dojo/dojo.js"></script>
		 <script>

   require([
      "esri/layers/OpenStreetMapLayer",
      "esri/Map",
      "esri/views/SceneView",
      "esri/views/MapView",
      "esri/widgets/BasemapToggle",
       "esri/layers/FeatureLayer",
      "dojo/dom",
      "dojo/domReady!"
    ], function(
      OpenStreetMapLayer,
      Map,
      SceneView,
      MapView,
      BasemapToggle,
      FeatureLayer,
      dom) {
       var switchButton = document.getElementById("switch-btn");

      var appConfig = {
        mapView: null,
        sceneView: null,
        activeView: null,
         container: "viewDiv" // use same container for views
      };

      var map = new Map({
        ground: "world-elevation"
      });

      var initialViewParams = {
        map: map,
        zoom: 11,
        center: [103.73, 36.03	],
        container: appConfig.container
      };

      var osmLayer = new OpenStreetMapLayer();
      
       var popupTemplate = { // autocasts as new PopupTemplate()
          title: "楼宇名称: {NAME}",
          content: "<p><b>人口: 200万/人 </b></p>" +
            "<p> 统计时间: 2017年8月</p>"
        };
      map.add(osmLayer);
		var featureLayer = new FeatureLayer({
          url: "http://127.0.0.1:6080/arcgis/rest/services/lz/FeatureServer/0",
          outFields: ["*"],
          popupTemplate: popupTemplate
        });
        var featureLayer1 = new FeatureLayer({
          url: "http://127.0.0.1:6080/arcgis/rest/services/lz/FeatureServer/0",
          outFields: ["*"],
          popupTemplate: popupTemplate
        });
        map.add(featureLayer);
         //map.add(featureLayer1);

      appConfig.mapView = createView(initialViewParams, "2d");
      appConfig.activeView = appConfig.mapView;

      initialViewParams.container = null;
      appConfig.sceneView = createView(initialViewParams, "3d");

      switchButton.addEventListener("click", function() {
        switchView();
      });

      function switchView() {
        var is3D = appConfig.activeView.type === "3d";

        appConfig.activeView.container = null;

        if (is3D) {
          appConfig.mapView.viewpoint = appConfig.activeView.viewpoint.clone();
          appConfig.mapView.container = appConfig.container;
          appConfig.activeView = appConfig.mapView;
          switchButton.value = "3D";
        } else {
          appConfig.sceneView.viewpoint = appConfig.activeView.viewpoint.clone();
          appConfig.sceneView.container = appConfig.container;
          appConfig.activeView = appConfig.sceneView;
          switchButton.value = "2D";
        }
      }

      // convenience function for creating a 2D or 3D view
      function createView(params, type) {
        var view;
        var is2D = type === "2d";
        if (is2D) {
          view = new MapView(params);
          return view;
        } else {
          view = new SceneView(params);
          view.then(function(){
          view.goTo({
		        center: [103.73, 36.03],
		        zoom: 13,
		        heading: 40,
		        tilt: 60,
		         duration: 100000,
		      })
          })
        }
        return view;
      }
    });
  </script>
	</head>
	<body data-target="#one" data-spy="scroll" >
		<@_top.top 2/>
		 <div id="viewDiv"></div>
		 <div id="infoDiv">
    <input class="esri-component esri-widget-button esri-widget esri-interactive" type="button"
      id="switch-btn" value="3D">
  </div>
	
		<script  src="${basePath}/js/common/layer/layer.js"></script>
		<script  src="${basePath}/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script  src="${basePath}/js/common/bootstrap/bootstrap-treeview.js"></script>
		<script  src="${basePath}/js/shiro.demo.js"></script>
	</body>
</html>