<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${category}</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<meta name="format-detection" content="telephone=no">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body id="body">
<a name="top"></a>
<header>
			<div class="new-header">
        	<a href="javascript:pageBack();" class="new-a-back" id="backUrl"><span>返回</span></a>
							<h2>商品列表</h2>
			            <a href="javascript:void(0)" id="btnJdkey" class="new-a-jd"><span>京东键</span></a>
    	</div>
		<div class="new-jd-tab" style="display:none" id="jdkey">
        	<div class="new-tbl-type">
                <a href="../index.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                	<span class="icon">首页</span>
					<p style="color:#6e6e6e;">首页</p>
                </a>
                <a href="../category/all.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                	<span class="icon2">分类搜索</span>
					<p style="color:#6e6e6e;">分类搜索</p>
                </a>
                <a href="javascript:void(0)" id="html5_cart" class="new-tbl-cell">
                	<span class="icon3">购物车</span>
					<p style="color:#6e6e6e;">购物车</p>
                </a>
                <a href="../user/home.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                	<span class="icon4">我的京东</span>
					<p style="color:#6e6e6e;">我的京东</p>
                </a>
            </div>
        </div>
	</header>
<input type="hidden" id="page" value="1"/>
<input type="hidden" id="module" value="2"/>
<div class="new-ct">
	<div class="new-search new-goods-lst">
		<div class="new-goods-tab">
            <span class="tit">服装城<a href="activity.action@type=101&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="link-acition">活动列表</a></span>
            <div class="new-goods-btn">
                <a id="m2" href="1.html" class="new-g-tbn">列表图</a>
                <a id="m1" href="2.html" class="new-g-tbn2">列表</a>
                <a id="m3" href="3.html" class="new-g-tbn3">放大</a>
            </div>
        </div>
				
																			    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1.html" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img13.360buyimg.com/n3/g15/M07/05/1D/rBEhWlIUf7oIAAAAAALnZATd9X4AACSsAGXLa8AAud8547.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;159.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1.html" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img10.360buyimg.com/n3/g15/M04/09/13/rBEhWVIu6l8IAAAAAAQfYNF16GYAADAkgJhMXUABB94158.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;129.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/931986.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img30.360buyimg.com/n3/g15/M09/00/17/rBEhWFHs5PMIAAAAAAHh6NTxeqIAABRugCuyVgAAeIA199.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;399.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1083633743.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img13.360buyimg.com/n3/g14/M07/12/1D/rBEhVlMNXrYIAAAAAAHSWqLRzaEAAJLywApN9kAAdJy732.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;279.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1077373310.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img10.360buyimg.com/n3/g15/M00/04/07/rBEhWlL0a7wIAAAAAAXb7YAq3OgAAISVgMZ3GYABdwF439.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;128.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/863291.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img11.360buyimg.com/n3/g10/M00/18/10/rBEQWFF2USwIAAAAAAEXpEgs80UAAEySAPkJFoAARe8612.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;880.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1074452552.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g13/M05/1B/04/rBEhVFMdIfEIAAAAAAH_f9NIQRoAAJxHQBedhcAAf-X546.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;109.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1090541159.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g15/M02/0A/06/rBEhWlMWieUIAAAAAALA3zUv7uMAAJctQGyvdIAAsD3952.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;299.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1076603003.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img13.360buyimg.com/n3/g15/M05/03/0A/rBEhWVLfVM0IAAAAAAOrWc0eV7wAAIG3QEGPnMAA6tx545.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;259.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1036215046.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img30.360buyimg.com/n3/g13/M03/14/01/rBEhVFJxxlcIAAAAAAGA0JzvcVgAAEzwQC03JwAAYDo411.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;528.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1076654239.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g13/M01/19/0C/rBEhU1MVT60IAAAAAATziTMWo5AAAJa7wCdoaYABPOh437.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;209.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1036204.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img14.360buyimg.com/n3/g13/M00/10/0D/rBEhVFLLdy4IAAAAAAKZ9xkK25QAAHq9AJN2qUAApoP211.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;399.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1017526852.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g14/M05/15/1B/rBEhVVMZm2QIAAAAAAD_wucCbMsAAJw1QDZJqAAAP_a005.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;315.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1063178731.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img11.360buyimg.com/n3/g14/M01/05/0C/rBEhVlKhYKEIAAAAAAQ9DjgVRpoAAGivQIVClAABD0m825.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;109.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1076135273.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img13.360buyimg.com/n3/g14/M09/0D/0C/rBEhV1LYlyoIAAAAAADdKPvtpb0AAIG_gHw3EIAAN1A064.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;399.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1071682.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g14/M00/14/0A/rBEhV1MT94gIAAAAAADksCtG37IAAJddgGsX2kAAOTI773.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;459.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1029261962.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g15/M0A/02/00/rBEhWlH3Ua8IAAAAAAMYsMiZYpIAABhnQHsQYsAAxjI944.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;239.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1096431671.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img11.360buyimg.com/n3/g14/M00/17/18/rBEhV1MhWqMIAAAAAADkiHGSH5gAAKITgMMAu8AAOSg595.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;933.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
																				    		<div class="new-goods-img-lst new-tbl-type">
            	<div class="new-tbl-cell">
					                	<a href="../product/1097019614.html@resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img14.360buyimg.com/n3/g13/M00/1C/1A/rBEhU1MimdIIAAAAAALmKKdvfKMAAKF4APAL9MAAuZA370.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                                <strong class="new-txt">&yen;1103.00</strong>
                                <span class="new-txt2" style="color:red"></span>
                            </span>
                        </div>
                    </a>
                </div>
                <div class="new-tbl-cell">
					                	<a href="../product/1075263109.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-goods-section">
                    	<div class="new-img-box">
                            <img imgsrc="http://img12.360buyimg.com/n3/g15/M0A/05/01/rBEhWlINwNkIAAAAAARtnu41f8sAACHfACYArcABG22342.jpg" src="../images/touch2013/no_140_140.png" onerror="this.src=''" width="130" height="130" alt="" class="new-goods-img">
                            <span class="new-goods-txt new-p-re">
                               <strong class="new-txt">&yen;149.00</strong>
                                <span class="new-txt2" style="color:red">
																	</span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
									    </div>
	

	    <div class="new-paging">
        	<div class="new-tbl-type">
    				    				            				                			<div class="new-tbl-cell">
                        				<span class="new-a-prve"><span>上一页</span></span>
                			</div>
        					<div class="new-tbl-cell new-p-re">
                            	<div class="new-a-page">
                                	<span class="new-open">1/5</span>
                                </div>
                                <select class="new-select" onchange="window.location.href=this.value">
                                        							<option value="hotSaleWare.action@type=101&page=1&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" selected>第1页</option>
    							        							<option value="hotSaleWare.action@type=101&page=2&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" >第2页</option>
    							        							<option value="hotSaleWare.action@type=101&page=3&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" >第3页</option>
    							        							<option value="hotSaleWare.action@type=101&page=4&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" >第4页</option>
    							        							<option value="hotSaleWare.action@type=101&page=5&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911" >第5页</option>
    							                                </select>
                            </div>
    						    					        					<div class="new-tbl-cell">
        						<a class="new-a-next" href="hotSaleWare.action@type=101&page=2&module=2&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><span>下一页</span></a>
        					</div> 
    					    				            </div>
        </div>		
	</div>
<script>
	$(document).ready(function(){
		var m = $('#module').val();
		$('#m'+m).addClass('on');
	})
</script>
   
	<div class="login-area" id="footer">
        	<div class="login">
    												<span  class="new-fr"><a href="../showvote.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911">反馈</a><span class="lg-bar">|</span><a href="#top">回到顶部</a></span>
            </div>
            <div class="copyright">&copy; m.jd.com </div>
        </div>

<script type="text/javascript">
$("#unsupport").hide();
if(!testLocalStorage()){ //not support html5
    if(0!=0 && !$clearCart && !$teamId){
		$("#html5_cart_num").text(0>0>0);
	}
}else{
	updateToolBar('');
}

$("#html5_cart").click(function(){
//	syncCart('e0d0f025d6d3e8e8d7be5428c43ef911',true);
	location.href='../cart/cart.action';
});

function reSearch(){
var depCity = window.sessionStorage.getItem("airline_depCityName");
	if(testSessionStorage() && isNotBlank(depCity) && !/^\s*$/.test(depCity) && depCity!=""){
    	var airStr = '<form action="../airline/list.action" method="post" id="reseach">'
        +'<input type="hidden" name="sid"  value="e0d0f025d6d3e8e8d7be5428c43ef911"/>'
        +'<input type="hidden" name="depCity" value="'+ window.sessionStorage.getItem("airline_depCityName") +'"/>'
        +'<input type="hidden" name="arrCity" value="'+ window.sessionStorage.getItem("airline_arrCityName") +'"/>'
        +'<input type="hidden" name="depDate" value="'+ window.sessionStorage.getItem("airline_depDate") +'"/>'
        +'<input type="hidden" name="depTime" value="'+ window.sessionStorage.getItem("airline_depTime") +'"/>'
        +'<input type="hidden" name="classNo" value="'+ window.sessionStorage.getItem("airline_classNo") +'"/>'
        +'</form>';
    	$("body").append(airStr);
    	$("#reseach").submit();
	}else{
    	window.location.href='../airline/index.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911';
	}
}
 //banner 关闭点击
    $('.div_banner_close').click(function(){
        $('#div_banner_header').unbind('click');
        jQuery.post('../index/addClientCookieVal.json',function(d){
              $('#div_banner_header').slideUp(500);
        });
    });
    //banner 下载点击
    $('.div_banner_download').click(function(){
         var downloadUrl = $(this).attr('url');
         jQuery.post('../index/addClientCookieVal.json',function(d){
               window.location.href=downloadUrl;
        });
    });
	
</script>
</body>
</html>
