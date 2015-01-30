<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<title>
		下单
		</title>
    	<meta name="author" content="cld-and-hbh">
		<!--
			设置自适应：
			width - viewport的宽度 
			height - viewport的高度
			initial-scale - 初始的缩放比例
			minimum-scale - 允许用户缩放到的最小比例
			maximum-scale - 允许用户缩放到的最大比例
			user-scalable - 用户是否可以手动缩放
		-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<!-- 网站开启对web app程序的支持-->
	    <meta name="apple-mobile-web-app-capable" content="yes">
		<!-- 在web app应用下状态条（屏幕顶部条）的颜色；默认值为default（白色），可以定为black（黑色）和black-translucent（灰色半透明）。
		     注意：若值为“black-translucent”将会占据页面px位置，浮在页面上方（会覆盖页面20px高度–iphone4和itouch4的Retina屏幕为40px）-->
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
		<!-- 当该 HTML 页面在手机上浏览时，该标签用于指定是否将网页内容中的手机号码显示为拨号的超链接-->
        <meta name="format-detection" content="telephone=no">
		<!-- HTML5不支持 charset属性-->
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/pay.css" />
		<script src="<%=path%>/js/jquery-1.6.2.min.js"></script>
		<script src="http://www.imooc.com/data/jquery.form.js"></script>
	</head>
	<body>
		<div class="wrapper">
		<div class="page-header">
			<div class="middle-nav">
				<div class="middlenav-wrap clearfix">
					<div class="desire fr">
						<a href="<%=path%>/index.jsp" class="ca-lightgrey home-page">
							<i class="icon i-home"></i><span>主页</span>
						</a>
					</div>
					<a href="javascript:history.back()" class="new-a-back" id="backUrl">
						<span></span>
					</a>
				</div>
			</div>
		</div>
		<div class="page-wrap">
			<div class="inner-wrap">
				<div class="breadcrumb">
					<i>&gt;</i><span>确认购买</span>
				</div>
					<div class="order-confirm clearfix">
						<div class="dishes">
							<div class="dishes-rap">
								<h3>水果详情</h3>
								<div id="details" class="details">	
										<c:forEach var="product" items="${productList}">
											<p>
												<span class="productName">${product.value.name}</span>
												<a class="right delete" href="javascript:void(0)">删除</a>
												<button id="addbtn" class="right addBtn">+</button>
												<span class="right num"><span id="num">${product.value.num}</span></span>
												<button id="subbtn" class="right subBtn">-</button>
												<span class="right">数量：</span>
												<span class="right norm"><c:choose><c:when test="${product.value.norm ==0}"><c:out value="斤"></c:out></c:when><c:when test="${product.value.norm ==1}"><c:out value="盒"></c:out></c:when><c:when test="${product.value.norm ==2}"><c:out value="个"></c:out></c:when></c:choose></span>
												<span class="right">规格：</span>
												<c:choose>
													<c:when test="${product.value.norm == 0}">
														<span class="right unitPrice">${product.value.price}</span>
													</c:when>
													<c:when test="${product.value.norm == 1}">
														<span class="right unitPrice">${product.value.bPrice}</span>
													</c:when>
													<c:when test="${product.value.norm == 2}">
														<span class="right unitPrice">${product.value.unitPrice}</span>
													</c:when>													
												</c:choose>
												<span class="right">单价：</span>
												<input class="uuid" type="hidden" value="${product.value.uuid}"/>
											</p>
										</c:forEach>							
								</div>
								<form id="orderForm" class="order-form" method="post" >
									<div class="address-box borderradius-2">

										<span>地址：</span><p class="place"><input id="content" type="text" value=""/></p>
										<p id="msg1"></p>
										<span>手机：</span><p class="mobile"><input id="phone" type="text" value=""/></p>
										<p id="msg2"></p>
										<span>姓名：</span><p class="name"><input id="customerName" type="text" value=""/></p>
										<p id="msg3"></p>
									</div>

								</form> 
						</div>
						
							<div class="pay-area">
							  <a class="s-btn fr" id="confirmOrder" href="javascript:formSubmit()"><span class="s-btn">下单</span></a>
							    <div class="tips">您需支付&nbsp;<span class="price cc-oriange">￥</span><span id="totalPrice">0</span>
								</div>
								<input id="price" type="hidden"/>
							</div>
						</div>
					</div>
			</div>
		</div>
		<div id="text"></div>
		<div id="text1"></div>
		</div>
	</body>
	<script type="text/javascript">
		
		$(function(){
		    			
		    	update();
		    	
		    	$(".subBtn").click(function(){
						$(this).prev(".num").children().text(function(index,value){
						if(value>1)
							value--;
						return value;
					});
					update();
		    	});
		    	$(".addBtn").click(function(){
					$(this).next(".num").children().text(function(index,value){
						value++;
						return value;
					});
					update();
		    	});

				
				$(".delete").click(function Delete(){
					var uuid = '{"uuid":"'+$(this).parent().find(".uuid").val()+'"}';
					$.ajax({ 
						url: 'Cart.html?method=delete',
						type:'POST',
						contentType : 'application/json',
						dataType:"json",
						data: uuid,	
						error : function(){
							alert("失败");
						}
					});
					$(this).parent().remove();
					update();
				});
				
				$("#content").change(function(){
					$("#msg1").html('');
				});
				
				$("#phone").change(function(){
					$("#msg2").html('');
				});
				
				$("#customerName").change(function(){
					$("#msg3").html('');
				});					
		});

		function update(){
		    $("#totalPrice").text(function(index,value){
		    	var price = 0; 
		    	$("#details p").each(function(){
		    		var unitPrice = parseFloat($(this).find(".unitPrice").text());
		    		var num = parseFloat($(this).find(".num").text());
		    		price += unitPrice*num;
		    	});
		    	return price.toFixed(2);
		    });		
		}
		
		function formSubmit(){
			if($("#content").val()==''){
				$("#msg1").html("地址不能为空！").css("color","red");
				$("#content").focus();
				return;
			}
			if($("#phone").val()==''){
				$("#msg2").html("手机号不能为空！").css("color","red");
				$("#phone").focus();
				return;
			}
			if($("#customerName").val()==''){
				$("#msg3").html("姓名不能为空！").css("color","red");
				$("#customerName").focus();
				return;
			}
			else
			{
				var productContent="<br>";
				$("#details p").each(function(){
					productContent += "购买了："+$(this).find(".productName").text()+"	数量为："+$(this).find(".num").text()+"	规格为："+$(this).find(".norm").text()+"<br>";
				});
				var mydata = 
				{
					"customerName":$("#customerName").val(),
					"phone":$("#phone").val(),
					"content":"收货地址为："+$("#content").val()+productContent+"应收："+$("#totalPrice").text()+"元",
					"email":"41544395@qq.com",
					"targetEmail":"41544395@qq.com"
				};
				
				$.ajax({ 
					url: "http://www.cheable.com/message/clientEmailMessage",
					type:"post",
					dataType:"json",
					data: mydata,
					success : function(){
						alert("下单成功！");
	    			}
				});
				$.get("Cart.html?method=clear");
				
			}

		}
	</script>
</html>
