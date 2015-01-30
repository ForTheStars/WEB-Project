<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>水果商城</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="水果,新鲜,便宜">
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
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/base2013.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css" />		
	<!--在iPhone,iPad,iTouch的safari上可以使用添加到主屏按钮将网站添加到主屏幕上。
		apple-touch-icon是IOS设备的私有标签，如果设置了相应apple-touch-icon标签，则添加到主屏上的图标会使用指定的图片。-->
	<link rel="apple-touch-icon-precomposed" href="../m.jd.com/images/apple-touch-icon.png"/>
	<script type="text/javascript" src="<%=path %>/js/common.js"></script>
    <script type="text/javascript" src="<%=path %>/js/spin.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/zepto.min.js"></script>
  </head>
  
  <body>
		
			<script type="text/javascript" src="<%=path %>/js/index.js"></script>
			<script type="text/javascript">$('body').css('background','#d5d5d6');$(function(){$('.new-footer').css('margin-top','0px');})</script>
			
			<div class="login-area" id="footer">
				<div class="login">
					<span class="lg-bar">
						<a href="http://m.wsq.qq.com/263362953">进入芳姐鲜果社区</a>
					</span>
					<span class="new-fr">
						<a href="Admin.html?method=logInInput">登录</a>
						<span class="lg-bar">|</span>
						<a href="Cart.html?method=toCart"><img src="<%=path %>/images/cart/icon_cart.png"></a>
					</span>				
				</div>
			</div>
			

			
			<div class="new-ct main" >
				<!-- 轮播图-->
				<div class="banner scroll-wrapper" id="idContainer2" ontouchstart="touchStart(event)" ontouchmove="touchMove(event);" ontouchend="touchEnd(event);">
    			<ul class="scroller" style="position:relative;left:0px;width:600%" id="idSlider2">
			     	<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No1ProductId}">
							<img src="${No1}" />
						</a>
					</li>
					
                 	<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No2ProductId}">
							<img src="${No2}" />
						</a>
					</li>		
					
					<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No3ProductId}">
							<img src="${No3}" />
						</a>
					</li>
					
                 	<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No4ProductId}">
							<img src="${No4}" />
						</a>
					</li>
					
                 	<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No5ProductId}">
							<img src="${No5}" />
						</a>
					</li>
                 							
					<li style="width:100.0%">
						<a href="Goods.html?method=product&Id=${No6ProductId}">
							<img src="${No6}" />
						</a>
					
					</li>
                </ul> 
				<ul class="new-banner-num new-tbl-type" id="idNum">
				</ul>       
			</div>
				<!--logo-->
				<div class="logo">
					<img src="${logo}">
				</div>

				<h2 class="ad-h2"><c:out value="${Block1}" default="未定义"></c:out></h2>
				<div class="ad1 tbl-type">
					<div class="tbl-cell">
						<a href="Goods.html?method=product&Id=${Block1_fullProductId}">
							<img src="${Block1_full}"  class="full-img" width="160" alt=>
						</a>
				</div>
					<div class="tbl-cell">
						<div class="ad1-left">
							<a href="Goods.html?method=product&Id=${Block1_half1ProductId}" class="ad-border">
								<img src="${Block1_half1}"  class="half-img" width="160" alt=>
							</a>
							<a href="Goods.html?method=product&Id=${Block1_half2ProductId}">
								<img src="${Block1_half2}"  class="half-img" width="160" alt=>
							</a>
						</div>
					</div>
				</div>
				<div class="ad2">
                	<h2 class="ad-h2"><c:out value="${Block2}" default="未定义"></c:out></h2>
					    <div class="tbl-type">            
							<div class="tbl-cell">
								<div class="ad1-right">
									<a href="Goods.html?method=product&Id=${Block2_half1ProductId}" class="ad-border">
										<img src="${Block2_half1}"  class="half-img" width="160" alt=>
									</a>
									<a href="Goods.html?method=product&Id=${Block2_half2ProductId}">
										<img src="${Block2_half2}"  class="half-img" width="160" alt=>
									</a>
								</div>
							</div>
							<div class="tbl-cell">
								<a href="Goods.html?method=product&Id=${Block2_fullProductId}">
									<img src="${Block2_full}"  class="full-img" width="160" alt=>
								</a>
                        </div>
                    </div>
				</div>
														
								
				<div class="ad2 ad2-v1">
                	<h2 class="ad-h2"><c:out value="${Block3}" default="未定义"></c:out></h2>
                    <div class="ad2-big-img">
                    	<a href="Goods.html?method=product&Id=${Block3_maxProductId}">
						<img src="${Block3_max}">
						</a>
                    </div>
                </div>
												
				<div class="ad2 ad2-v1">
                	<h2 class="ad-h2"><c:out value="${Block4}" default="未定义"></c:out></h2>
					<div class="tbl-type">	
						<div class="tbl-cell" style="width:50%;">
							<a href="Goods.html?method=product&Id=${Block4_fullProductId}">
                                <img src="${Block4_full}"  class="full-img" width="160" alt=>
                            </a>
                        </div>
                        <div class="tbl-cell" style="width:50%;">
                            <div class="ad1-left2" >
								<a href="Goods.html?method=product&Id=${Block4_half1ProductId}" class="ad-border2">
                                   <img src="${Block4_half1}"  class="half-img" width="160" alt=>
                                </a>
								<a href="Goods.html?method=product&Id=${Block4_half2ProductId}">
                                   <img src="${Block4_half2}"  class="half-img" width="160" alt=>
                                </a>
                            </div>
                        </div>
                    </div>
					                </div>
								
				<div class="theme-pavilion">
						<div class="tbl-type">
							<span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon1ProductId}"><img src="${Coupon1}" class="half-img" width="160" alt=""></a>
                            </span>
							<span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon2ProductId}"><img src="${Coupon2}" class="half-img" width="160" alt=""></a>
                            </span>
                        </div>
                        <div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon3ProductId}"><img src="${Coupon3}" class="half-img" width="160" alt=""></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon4ProductId}"><img src="${Coupon4}" class="half-img" width="160" alt=""></a>
                            </span>
                        </div>
                        <div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon5ProductId}"><img src="${Coupon5}" class="half-img" width="160" alt=""></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon6ProductId}"><img src="${Coupon6}" class="half-img" width="160" alt=""></a>
                            </span>
                        </div>
						<div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon7ProductId}"><img src="${Coupon7}" class="half-img" width="160" alt=""></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="Goods.html?method=product&Id=${Coupon8ProductId}"><img src="${Coupon8}" class="half-img" width="160" alt=""></a>
                            </span>
                        </div>
									</div>
			</div>

			<input type="hidden" value="6" id="activity"/>

			<input type="hidden" value="15" id="crazy"/>

			<script>
				//活动轮播图
				var picCount = $("#activity").val();
					$(".pic-num1").css("width",(picCount*30)+"px");
					var forEach = function(array, callback){
						for (var i = 0, len = array.length; i < len; i++) { callback.call(this, array[i], i); }
					}
					var st = createPicMove("idContainer2", "idSlider2", picCount);	//图片数量更改后需更改此数值
					var nums = [];
					//插入数字
					for(var i = 0, n = st._count - 1; i <= n;i++){
						var li = document.createElement("li");
						nums[i] = document.getElementById("idNum").appendChild(li);
					}
					//设置按钮样式
					st.onStart = function(){
						//forEach(nums, function(o, i){ o.className = ""})
						forEach(nums, function(o, i){ o.className = st.Index == i ? "new-tbl-cell on" : "new-tbl-cell"; })
					}
					// 重新设置浮动
					$("#idSlider2").css("position","relative");
					
					var _initX = 0;
					var _finishX = 0;
					var _startX = 0;
					var _startY = 0;
					function touchStart(event) {
						_startX = event.touches[0].clientX;
						_startY = event.touches[0].clientY;
						_initX = _startX;
					}
					function touchMove(event) {
						var touches = event.touches;
						var _endX = event.touches[0].clientX;
						var _endY = event.touches[0].clientY;
						if(Math.abs(_endY-_startY)>Math.abs(_endX-_startX)){
							return;		
						}
						event.preventDefault();
						_finishX = _endX;
						var _absX = Math.abs(_endX-_startX);
						var lastX = $('#idSlider2').css('left').replace('px','');
						if(_startX>_endX){
							st.Stop();
							$('#idSlider2').css('left',(parseInt(lastX)-_absX)+'px');
						}else{
							st.Stop();
							$('#idSlider2').css('left',(parseInt(lastX)+_absX)+'px');
						} 
						_startX = _endX;
					}
					//触屏  离开屏幕事件
					function touchEnd(event) {
						if(_finishX==0){
							return;
						}
						if(_initX>_finishX){
							bindEvent(_initX,_finishX);
						}else if(_initX<_finishX){
							bindEvent(_initX,_finishX);
						}
						_initX = 0;
						_finishX = 0;
					}

					/**
					 *  绑定触屏触发事件
					 * @param start
					 * @param end
					 */
					function bindEvent(start,end){
						 if (start >= end) {
								   st.Next();
								} else {
									st.Previous();
								}
					}
					st.Run();
					var resetScrollEle = function(){
						$("#shelper").css("width",$("#newkeyword").width()+"px");
						var slider2Li = $("#idSlider2 li");
						slider2Li.css("width",$(".scroll-wrapper").width()+"px");
						$("#shelper").css("width",$("#newkeyword").width()+"px");
					}
					
					window.addEventListener("resize",function(){
						st.Change = st._slider.offsetWidth/st._count;
						st.Next();
						resetScrollEle();
					});
					window.addEventListener("orientationchange",function(){
						st.Change = st._slider.offsetWidth/st._count;
						st.Next();
						resetScrollEle();
					})
					resetScrollEle();
					
						$(function(){
						//根据cookie判断用户是否已经主动取消，主动取消了则不再出现提醒
						var cookieName="ucTip";
						var cancel = false;
						var start = document.cookie.indexOf(cookieName+"=");
						if (start !=-1) {
							start = start+cookieName.length+1;
							var end = document.cookie.indexOf(";",start);
							if (end==-1) {end = document.cookie.length;}
							var ucTip = document.cookie.substring(start,end);
							if(ucTip=='1'){
								cancel = true; 
							}
						}
						if(!cancel){
							//外层div元素
							var ucElement = $('<div>').attr('id','ucTip').css({"position":"fixed","bottom":"30%","z-index":"10001","border":"0","display":"none"});
							//frame元素，目前UC只支持该接入类型
							var ucFrame = $('<iframe>').css({"height":"160px","width":"320px","border":"0px"}).attr('src','../app.uc.cn/appstore/AppCenter/frame@uc_param_str=nieidnutssvebipfcp&api_ver=2.0&id=445&bg=#ffffff');
							ucElement.append(ucFrame);
							//将元素添加到页面
							$('body').append(ucElement);
							//回调方法
							window.addEventListener("message",function(event){
								var dt = event.data.type;
								var dm = event.data.message;
								//判断出现的情况
								if(dm!='not android uc' && dm!='not exist' && dm!='browser version error' && dm!='already exist' && dm!=undefined){
									$('#ucTip').show();
								}
								//判断隐藏的情况
								if (dm == 'success' || dm=='cancle' || dm=='close'){
									$('#ucTip').hide();
									//如果用户主动取消，则记录到cookie，30天内不再提醒
									if(dm=='cancle'){
										var expires = new Date();
										expires.setTime(expires.getTime() + 30*24*60*60*1000);
										document.cookie=cookieName+'=1;expires='+expires.toGMTString()+';path=/;domain=.jd.com';
										document.cookie=cookieName+'=1;expires='+expires.toGMTString()+';path=/;domain=.360buy.com';
									}
								}
							},false);
						}
					});
						function clickResponse(obj){
						$('[res]').removeClass('on');
						$(obj).addClass('on');
						setTimeout(function(){
							$(obj).removeClass('on');
						},700);
					}
					$("#newkeyword").focus(function(){
						setTimeout(function(){
							 window.scrollTo(0,$("#newkeyword").offset().top-60);
						 },10);		
					});
					$(document).ready(function(){
						$("#categoryMenu li").addClass("route");
					})
					$(document).ready(function(){
						var script = document.createElement("script");
						script.src = "js/2013/installapp.js@v=20140319100001";
						script.type="text/javascript";
						document.getElementsByTagName("head")[0].appendChild(script);
					})
			</script>	
   
			<div class="login-area" id="footer">
        	<div class="login">
									    			<span class="lg-bar"></span>
    												<span  class="new-fr"><a href="#">反馈</a><span class="lg-bar">|</span><a href="#top">回到顶部</a></span>
            </div>
            <div class="copyright">&copy; 金华极致科技有限公司 </div>
        </div>


	
  </body>
</html>
