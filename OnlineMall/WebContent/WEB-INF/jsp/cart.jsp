<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<title>购物车</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	    <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
		
	  	<link rel="stylesheet" type="text/css" href="<%=path%>/css/cart.css">
	  	
	  	<script src="<%=path%>/js/jquery-1.6.2.min.js"></script>
	</head>

	<body id="body">
		<header>
			<div class="new-header">
				<a href="javascript:history.back()" class="new-a-back" id="backUrl"><span></span></a>
				<h2>购物车</h2>
			</div>
		</header>

	<body class="cart list">
		<div style="width:100%;z-index:1001;position:absolute;overflow:hidden;background:rgba(145, 145, 145, .4);display:none" id="background" >
		</div>
		<div class="m" id="m">
			<div class="blank"></div>
			<div class="mt"><h2>我的购物车</h2></div>
			<div class="mc">
				<div id="details" class="details">	
					<c:forEach var="product" items="${productList}">
						<p>
							<span class="productName">${product.value.name}</span>
							<a class="right delete" href="javascript:void(0)">删除</a>
							<button id="addbtn" class="right addBtn">+</button>
							<span class="right num"><span id="num">${product.value.num}</span></span>
							<button id="subbtn" class="right subBtn">-</button>
							<span class="right" >数量：</span>
							<span class="right norm">
								<c:choose>
									<c:when test="${product.value.norm == 0}">
										斤
									</c:when>
									<c:when test="${product.value.norm == 1}">
										盒
									</c:when>
									<c:when test="${product.value.norm == 2}">
										个
									</c:when>																							
								</c:choose>								
							</span>
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
				<div id="productbNull" class="icon-cart">
					<span></span>
					<p>您的购物车暂时没有商品</p>
					<p>去<a href="<%=path%>/index.jsp">首页</a>挑选喜欢的商品</p>		
				</div>
			</div>
				<div id="pay-area" class="pay-area">
					<a class="s-btn fr" id="confirmOrder" href="Cart.html?method=toPay"><span class="s-btn">去下单</span></a>
					<div class="tips">您需支付&nbsp;<span class="price cc-oriange">￥</span><span id="totalPrice">0</span></div>
					<input id="price" type="hidden"/>
				</div>
		</div>
	<div class="login-area" id="footer">
        	<div class="login">
					<a href="#top">回到顶部</a>
            </div>
            <div class="copyright">&copy; 金华极致科技有限公司 </div>
        </div>
     </body>
<script type="text/javascript">
		
		$(function(){
				
				init();
					    		
		    	$("#subbtn").click(function(){
					$("#num").text(function(index,value){
						if(value>1)
							value--;
						return value;
					});
					update();
				});
				$("#addbtn").click(function(){
					$("#num").text(function(index,value){
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
		    		
		});

		function update(){
		    $("#totalPrice").text(function(index,value){
		    	var price = 0; 
		    	$("#details p").each(function(){
		    		price += $(this).find(".unitPrice").text()*$(this).find(".num").text();
		    	});
		    	return price;
		    });		
		}
		
		function init(){
		    if('${productNum}'!=0 && '${productNum}'!=null){
		    	$("#productbNull").hide();
		    	$("#details").show();
		    	$("#pay-area").show();
		    	update();
		    }
		    else{
		    	$("#details").hide();
		    	$("#pay-area").hide();
		    	$("#productbNull").show();
		    }
		}
		
</script>
</body>
</html>
