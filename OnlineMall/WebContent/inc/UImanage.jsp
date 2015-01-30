<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script src="<%=path %>/js/jquery-1.6.2.min.js"></script>
  </head>
  
  <body>
	<div>
		<h2>主界面布局</h2>
	</div>
	<div>
		<form id="block" action="manage.html?method=block" method="post" target="hidden_frame">
			<select id="Select2" name="blockNo">
				<option  value="Block1">专区1</option>
				<option  value="Block2">专区2</option>
				<option  value="Block3">专区3</option>
				<option  value="Block4">专区4</option>
			</select>
			<input id="BlockName" type="text" style="width:100px;" name="blockName" value=""/>
			<input type="submit" value="修改" />
			<span id="msg2"></span>
		</form>
	</div>
	<div>
		<form id="image" action="manage.html?method=upload"  method="post" enctype="multipart/form-data" target="hidden_frame">
			选择图片：
			<select id="Select3" name="Block" >
			<option>专区</option>
			<option value="banner">轮播图</option>
			<option value="logo">Logo</option>
			<option value="Block1"><c:out value="${Block1}" default="未定义"></c:out></option>
			<option value="Block2"><c:out value="${Block2}" default="未定义"></c:out></option>
			<option id="block3" value="Block3"><c:out value="${Block3}" default="未定义"></c:out></option>
			<option value="Block4"><c:out value="${Block4}" default="未定义"></c:out></option>
			<option id="block5" value="Block5">活动</option>
			</select> 
									
			<select id="target" name="target" >
				<option>图片位置</option>
				<option id="max" value="max" >大图</option>
				<option value="full">中图</option>
				<option value="half1">小图1</option>
				<option value="half2">小图2</option>
			</select>
			
			<select id="banner" name="bannerNo" style="display:none">
				<option>选择序号</option>
				<option value="No1">No1</option>
				<option value="No2">No2</option>
				<option value="No3">No3</option>
				<option value="No4">No4</option>
				<option value="No5">No5</option>
				<option value="No6">No6</option>
			</select>
			
			<select id="Coupon" name="CouponNo" style="display:none">
				<option>选择序号</option>
				<option value="Coupon1">图片1</option>
				<option value="Coupon2">图片2</option>
				<option value="Coupon3">图片3</option>
				<option value="Coupon4">图片4</option>
				<option value="Coupon5">图片5</option>
				<option value="Coupon6">图片6</option>
				<option value="Coupon7">图片7</option>
				<option value="Coupon8">图片8</option>
			</select>
			
			<select id="productName" name="productId">
				<option class="pass">请选择商品</option>
			</select>
				<input style=" width:180px; display:inline-block;" id="imgfile" name="imgfile" type="file"/>
				<input  type="submit" value="替换"  />
				<span id="msg3"></span>
		</form>
		<iframe name='hidden_frame' id="hidden_frame" style="display:none"></iframe>
		<span id=msg4></span>
	</div>
	
	<div>	
		<form id="product" action="Goods.html?method=add"  method="post" enctype="multipart/form-data" target="hidden_frame">
			<h2>添加商品</h2>
			<span>商品名称：</span><input name="name" type="text" />
			<span>商品单价（个）：</span><input name="unitPrice" type="text" />
			<span>商品单价（斤）：</span><input name="price" type="text" />
			<span>商品单价（盒）：</span><input name="bPrice" type="text" />
			<span>商品简介：</span><input name="intro" type="text" />
			<span>商品图片：</span><input style=" width:180px; display:inline-block;" id="imgfile" name="imgfile" type="file"/>
						   <input  type="submit" value="添加"  />
						   <span id="msg4"></span>
		</form>
	</div>
	<div>
		<h2>删除商品</h2>
		<form id="delete" action="Goods.html?method=delete" method="post" target="hidden_frame">
			<select id="productName2" name="Id">
				<option class="pass">请选择商品</option>
			</select>
			<input type="submit" value="删除"/>
			<span id="msg5"></span>
		</form>
	</div>
  </body>
<script type="text/javascript">
	$(document).ready(function(){
		$("#block").submit(function(){
			$("#msg2").html("修改成功");
		});
		$("#Select2").change(function(){
			$("#msg2").html("");
		});
		$("#BlockName").focus(function(){
			$("#msg2").html("");
		});
		
		$("#delete").submit(function(){
			location.reload(false);
			$("#msg5").html("删除成功");
		});
		
		$("#product").submit(function(){
			location.reload(false);
			$("#msg5").html("添加成功");
		});
		
		$("#image").submit(function(){
			$("#msg4").html("替换成功");
		});
		
		$("#Select3").change(function(){
		  	$("#msg3").html("");
		  	if($("#Select3 option:selected").val()=="Block3"){
		  	$("#target").show();
			$("#Coupon").hide();
			$("#banner").hide();
		  	$("#max").show();
			$("#target option").not(document.getElementById("max")).hide();
			$("#productName").show();
			$("#target option:first").attr("selected",true);
			}
			else if($("#Select3 option:selected").val()=="logo"){
				$("#target").hide();
				$("#Coupon").hide();
				$("#banner").hide();
				$("#productName").hide();
				$("#image").attr("action","manage.html?method=logo");
			}
			else if($("#Select3 option:selected").val()=="banner"){
				$("#target").hide();
				$("#Coupon").hide();
				$("#banner").show();
				$("#productName").show();
				$("#image").attr("action","manage.html?method=banner");
				$("#banner option:first").attr("selected",true);
			}		
		  	else if($("#Select3 option:selected").val()=="Block5"){
		  		$("#target").hide();
		  		$("#banner").hide();
				$("#Coupon").show();
				$("#productName").show();
				$("#image").attr("action","manage.html?method=coupon");
				$("#Coupon option:first").attr("selected",true);
			}
			else{
				$("#target").show();
				$("#Coupon").hide();
				$("#banner").hide();
				$("#max").hide();
				$("#productName").show();
				$("#target option").not(document.getElementById("max")).show();
				$("#image").attr("action","manage.html?method=upload");
				$("#target option:first").attr("selected",true);
			}
		});
		
		$("#banner").change(function(){
			$("#msg3").html("");
		});
		
		$("#target").change(function(){
			$("#msg3").html("");
		});
		
		$("#Coupon").change(function(){
			$("#msg3").html("");
		});
		
		$("#imgfile").change(function(){
		  	$("#msg3").html("");
		});
		var id=[];
		$.ajax({
			type : 'get',
			url : 'Goods.html?method=getAllProduct',
			dataType: "json",
    		success: function(data){
					$.each(data,function(i,k){
						$("#productName").append("<option>"+k.name+"</option>");
						$("#productName2").append("<option>"+k.name+"</option>");
						$("#productName3").append("<option>"+k.name+"</option>");
						id[i]=k.Id;
					});
					var j=0;
					$("#productName option").not(".pass").each(function(){
						$(this).attr("value",id[j++]);
					});
					j=0;
					$("#productName2 option").not(".pass").each(function(){
						$(this).attr("value",id[j++]);
					});
					j=0;
					$("#productName3 option").not(".pass").each(function(){
						$(this).attr("value",id[j++]);
					});					
					
    			}
    		});
    		

	});
	
</script>
</html>
