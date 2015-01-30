<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>水果详情</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	    <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
		
	  	<link rel="stylesheet" type="text/css" href="<%=path%>/css/product.css">
	  	
	  	<script src="<%=path%>/js/jquery-1.6.2.min.js"></script>
	</head>

	<body id="body">
		<input id="productId" type="hidden" value="${productId}"/>
		<header>
			<div class="new-header">
				<a href="javascript:history.back()" class="new-a-back" id="backUrl"><span></span></a>
				<input id="referrer" type="hidden"/>
				<h2 id="productName"></h2>
				<div class="top-car-num">
					<a href="Cart.html?method=toCart">
						<span id="Num" class="ng-binding">
							<c:choose>
								<c:when test="${empty productNum}">0</c:when>
								<c:when test="${!empty productNum}">${productNum}</c:when>
							</c:choose>
						</span>
					</a>
				</div>
			</div>
		</header>
		<div id="mainLayout" style="display:-webkit-box;">
			<div class="new-ct" id="mainStay" style="-webkit-box-flex: 1;width: 100%;">
				<div class="new-p-re">
					<div class="detail-img">
						<div class="tbl-type" id="_zoom">
							<div id="imgSlider" style="position:relative;left:0px;">
							   <span class="tbl-cell"><img id="imageUrl" src="" width="320" height="292"></span>                  							
							</div>
						</div>
					</div>
					<div class="detail-price">
						￥<span class="text" id="price"></span>
					</div>
				</div>
		
				<div class="secton10">
					<div class="info">
						<h1 class="text">水果简介</h1>
					</div>
					<p id="intro" class="detail-title"></p>
				</div>
    	
            </div>
        </div>
		
		<ul class="pinfo-content">
			<li>
				<div class="fl">规格：</div>
				<a class="ng-scope ng-binding fl norm">斤</a>
				<a class="ng-scope ng-binding fl norm">盒</a>
				<a class="ng-scope ng-binding fl norm">个</a>
				<span id=msg1></span>
				<input id=norm type="hidden" />
			</li>
			<li>
				<div class="fl">数量：</div>
				<div class="c-num fl">
					<div class="minus"><a href="javascript:minus()">-</a></div>
					<div class="num-input"><input id="num"  type="text" disabled="disabled" class="ng-pristine ng-valid ng-valid-number" value="0"/></div>
					<div class="add"><a href="javascript:add()" >+</a></div>
				</div>
				<span id=msg2></span>
			</li>
		</ul>
		<div class="tbl-type detail-tbn2" id="cart1" style="bottom: 0px; z-index: 10; display: table;">
    		<div class="tbl-cell">                    
				<a id="directorder" class="btn-buy" href="javascript:toPay()"><span></span>立即购买</a>
            </div>
            <div class="tbl-cell">                    
				<a id="add_cart" class="btn-cart" href="javascript:addToCart()"><span></span>加入购物车</a>
				
            </div>
    	</div>
	</body>

<script type="text/javascript">
$(function(){

		var url = 'Goods.html?method=getById&Id='+$("#productId").val();
		var Data;
		$.ajax({
			type : 'get',
			url : url,
			dataType: "json",
    		success: function(data){
    			Data=data;
    			$("#productName").html(data.name);
    			$("#imageUrl").attr("src",data.imageUrl);
    			$("#price").html(data.price);
    			$("#intro").html(data.intro);
    			}
    		});
    		
    	$(".norm").click(function(){
    		$('.norm').removeClass('active');
    		$(this).addClass('active');
    		var norm = $(".norm").index($(".active"));
    		if(norm ==0)
    			$("#price").html(Data.price);
    		else if(norm==1)
    			$("#price").html(Data.bPrice);
    		else if(norm==2)
    			$("#price").html(Data.unitPrice);
    		$("#norm").val(norm);
    		$("#msg1").text('');
    	});
    	
	});
	
	function minus(){
		$("#num").val(function(index,value){
			if(value>1)
				value--;
			return value;
		});
		$("#msg2").text('');
	}
	
	function add(){
		$("#num").val(function(index,value){
			if(value<100)
				value++;
			return value;
		});	
		$("#msg2").text('');
	}
	
	function toPay(){
				if($("#norm").val()=='' && $("#num").val()==0){
					$("#msg1").text("请选择规格！").css("color","red");
					$("#msg2").text("数量不正确！").css("color","red");
					return;
				}
				else if($("#norm").val()==''){
					$("#msg1").text("请选择规格！").css("color","red");
					return;
				}
				else if($("#num").val()==0){
					$("#msg2").text("数量不正确！").css("color","red");
					return;
				}
				else{
					var mydata='{"id":"'+$("#productId").val()+'","num":"'+$("#num").val()+'","norm":"'+$("#norm").val()+'"}';
					$.ajax({
						type : 'POST',
						contentType : 'application/json',
						url : 'Cart.html?method=addToCart',
						data : mydata,
						dataType : 'json',
	    				success: function(){
							location.href = "Cart.html?method=toPay";
	    				},
	    				error : function(){
	    					alert("发生错误！请联系管理员！");
	    				}
    				});
				}
	}
	
	function addToCart(){
	 
				if($("#norm").val()=='' && $("#num").val()==0){
					$("#msg1").text("请选择规格！").css("color","red");
					$("#msg2").text("数量不正确！").css("color","red");
					return;
				}
				else if($("#norm").val()==''){
					$("#msg1").text("请选择规格！").css("color","red");
					return;
				}
				else if($("#num").val()==0){
					$("#msg2").text("数量不正确！").css("color","red");
					return;
				}
				else{
					var mydata='{"id":"'+$("#productId").val()+'","num":"'+$("#num").val()+'","norm":"'+$("#norm").val()+'"}';
					$.ajax({
					type : 'POST',
					contentType : 'application/json',
					url : 'Cart.html?method=addToCart',
					data : mydata,
					dataType : 'json',
    				success: function(){
    					$("#Num").text(function(index,text){
    					text = parseInt(text)+1;
    					return text;
    					});
						if(confirm("商品添加成功！是否马上下单？")){
							location.href = "Cart.html?method=toPay";
						}
    				},
    				error : function(){
    					alert("发生错误！请联系管理员！");
    				}
    				});				
				}

	}
</script>
</html>
