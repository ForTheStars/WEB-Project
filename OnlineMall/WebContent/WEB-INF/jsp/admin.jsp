<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="管理员登陆">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta content="black" name="apple-mobile-web-app-status-bar-style">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/admin.css">
  </head>
  
  <body>
		<div id="tbh5v0">
			<div class="screen-wrap fullscreen login">
				<header id="header">
					<div class="c-inav">
						<section>

							<button class="back">
								<span>
									<em></em>
								</span>
								<a href="<%=path%>/index.jsp">首页</a>
							</button>
						</section>
						<section>
						<span>管理员登录</span>
						</section>
						<section></section>
					</div>
				</header>
				<section class="innercontent">
					<div id="cookie-support-div" style="display:none;color: red; margin-top:10px;margin-bottom:10px;font-size: 14px">
						<span>请检查您的浏览器是否支持Cookie</span>
					</div>
					<form method="post" class="c-form login-form" action="Admin.html?method=logIn" id="J_Login" autocomplete="off">
						<input type="hidden" name="ua" id="UA_InputId" value=>
						<input name="_tb_token_" type="hidden" value="fegFW9b5ssn">
						<fieldset>
							<div class="field username">
								<div class="c-form-search">
									<input type="text" name="username" id="J_UserNameTxt" placeholder="账号" value="" ismxfilled="1" >
									<button type="button" style="display: none;"><span></span></button>
								</div>
							</div>
							<div class="field pwd">
								<input type="password" name="password" id="J_PassWordTxt" placeholder="密码" class="c-form-txt-normal" ismxfilled="1" ">
							</div>
							<div class="field submit-btn">
								<input type="submit" class="c-btn-oran-big" value="登 录">
							</div>
							<div class="field login-option">
								<label class="bf1" for="loginFree">两周内免登录</label>
								<span class="reg-find-pwd">
									<a href="#" class="reg" target="_top">修改密码</a>
									<a href="#" class="forget-pwd" target="_top">找回密码</a>
								</span>
							</div>
							</fieldset>
					</form>
					<input type="hidden" id="P_New_Wud" value="wud96159">
				</section>

				<footer class="footer c-footer ">
					<p class="footer-l c-footer-l copyright c-copyright">
						欢迎您管理员！
					</p>
					<p class="copyright c-copyright">
						&copy; 金华极致科技有限公司 
					</p>
				</footer>
				<input type="hidden" id="J_app_key" value="12574478">        
			</div>
		</div>
		<div style="height: 0px; width: 0px; overflow: hidden;"><object width="0" height="0" style="height:0;width:0;overflow:hidden;" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab" id="JSocket"><param name="allowScriptAccess" value="always"><param name="movie" value="http://acjs.aliyun.com/flash/JSocket.swf"> <embed src="http://acjs.aliyun.com/flash/JSocket.swf" name="JSocket" allowscriptaccess="always" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer_cn" width="0" height="0"></object></div>
  </body>
</html>
