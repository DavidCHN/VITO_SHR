<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>这个页面没有用，是个测试页面。安全提交Demo  —个人中心</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<link   rel="icon" href="${basePath}/favicon.ico" type="image/x-icon" />
		<link   rel="shortcut icon" href="${basePath}/favicon.ico" />
		<link href="${basePath}/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
		<link href="${basePath}/css/common/base.css?${_v}" rel="stylesheet"/>
	  <link rel="stylesheet" href="https://js.arcgis.com/4.6/esri/css/main.css">
	  <style>
    html,
    body,
    #viewDiv {
    	padding:0;
      margin-top: 20px;
      height: 100%;
      width: 100%;
    }
  </style>
	  
  <script src="https://js.arcgis.com/4.6/"></script>
		 <script>
    require([
      "esri/Map",
      "esri/views/SceneView",
      "dojo/domReady!"
    ], function(Map, SceneView) {

      var map = new Map({
        basemap: "streets",
        ground: "world-elevation"
      });

      var view = new SceneView({
        container: "viewDiv",
        map: map,
        scale: 50000000,
        center: [106, 34]
      });

    });
  </script>
	</head>
	<body data-target="#one" data-spy="scroll" >
		
		<@_top.top 1/>
		 <div id="viewDiv"></div>
	
		<script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
		<script  src="${basePath}/js/common/layer/layer.js"></script>
		<script  src="${basePath}/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script  src="${basePath}/js/common/bootstrap/bootstrap-treeview.js"></script>
		<script  src="${basePath}/js/shiro.demo.js"></script>
	</body>
</html>