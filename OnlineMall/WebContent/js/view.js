$(function(){var Q=function(){addWare($("#currentWareId").val(),$("#number").val(),false,$("#resourceType").val(),$("#resourceValue").val(),$("#sid").val())}
;
G_addWareToCart=Q;
var M=function(){addWare($("#currentWareId").val(),$("#number").val(),true,$("#resourceType").val(),$("#resourceValue").val(),$("#sid").val())}
;
$("#add_cart").click(Q);
$("#directorder").click(M);
function g(U){if(false&&window.addEventListener){U.addEventListener("touchstart",h,false);
U.addEventListener("touchmove",y,false);
U.addEventListener("touchend",I,false)}
else{if(false&&window.attachEvent){U.attachEvent("touchstart",h);
U.attachEvent("touchmove",y);
U.attachEvent("touchend",I)}
else{U.ontouchstart=h;
U.ontouchmove=y;
U.ontouchend=I}
}
}
var F=createSpinner();
var j=createSpinner();
function B(U,Z){var aa=u();
if(aa==""){return}
var V=aa.split(",");
if(V.length==0){return}
if(Z==undefined){var X='<span class="tbl-cell"><img src="'+U.src+'" seq="'+k+'" width="320" height="292"></span>';
$("#imgSlider").html(X);
var X="";
for(var W=0;
W<V.length;
W++){X=X+'<li class="new-tbl-cell '+(W==0?"on":"")+'"><a href="javascript:void(0)"></a></li>'}
if(X!=""){$("#imgSliderPage").show();
$("#imgSliderPage").html(X)}
else{$("#imgSliderPage").hide()}
$("#imgSlider").css("margin-left","0px");
var X='<li class="new-tbl-cell"><a href="javascript:void(0)"><span class="new-shade-img"><img src="'+U.src+'" seq="'+k+'" alt="" width="300" height="300"></span></a></li>';
$("#bigImgSlider").html(X);
var X="";
for(var W=0;
W<V.length;
W++){X=X+'<li class="new-tbl-cell '+(W==0?"on":"")+'"><a href="javascript:void(0)"></a></li>'}
if(X!=""){$("#bigImgSliderPage").html(X);
$("#bigImgSliderPage").show()}
else{$("#bigImgSliderPage").hide()}
$("#bigImgSlider").css("margin-left","0px")}
else{if(Z==1){if(V.length==1){return}
var Y=k-1<0?V.length-1:k-1;
$('#imgSlider img[seq="'+Y+'"]').parent("span").siblings().remove();
var X='<span class="tbl-cell"><img src="'+G[k].src+'" seq="'+k+'" width="320" height="292"></span>';
$("#imgSlider").append(X);
$("#imgSlider").css("left","0px");
setTimeout(function(){$("#imgSlider").animate({left:"-320px"}
,200)}
,10);
$("#imgSliderPage").children("li").removeClass("on");
$("#imgSliderPage").children("li").eq(k).addClass("on");
$("#imgSliderPage").show();
$('#bigImgSlider img[seq="'+Y+'"]').parent("span").parent("a").parent("li").siblings().remove();
var X='<li class="new-tbl-cell"><a href="javascript:void(0)"><span class="new-shade-img"><img src="'+G[k].src+'" seq="'+k+'" width="300" height="300"></span></a></li>';
$("#bigImgSlider").append(X);
$("#bigImgSlider").css("margin-left","0px");
setTimeout(function(){$("#bigImgSlider").animate({"margin-left":"-300px"}
,200)}
,10);
$("#bigImgSliderPage").children("li").removeClass("on");
$("#bigImgSliderPage").children("li").eq(k).addClass("on");
$("#bigImgSliderPage").show()}
else{if(Z==0){if(V.length==1){return}
var Y=k+1>V.length-1?0:k+1;
$('#imgSlider img[seq="'+Y+'"]').parent("span").siblings().remove();
var X='<span class="tbl-cell"><img src="'+G[k].src+'" seq="'+k+'" width="320" height="292"></span>';
$("#imgSlider").prepend(X);
$("#imgSlider").css("left","-320px");
setTimeout(function(){$("#imgSlider").animate({left:"0px"}
,200)}
,10);
$("#imgSliderPage").children("li").removeClass("on");
$("#imgSliderPage").children("li").eq(k).addClass("on");
$("#imgSliderPage").show();
$('#bigImgSlider img[seq="'+Y+'"]').parent("span").parent("a").parent("li").siblings().remove();
var X='<li class="new-tbl-cell"><a href="javascript:void(0)"><span class="new-shade-img"><img src="'+G[k].src+'" seq="'+k+'" width="300" height="300"></span></a></li>';
$("#bigImgSlider").prepend(X);
$("#bigImgSlider").css("margin-left","-300px");
setTimeout(function(){$("#bigImgSlider").animate({"margin-left":"0px"}
,200)}
,10);
$("#bigImgSliderPage").children("li").removeClass("on");
$("#bigImgSliderPage").children("li").eq(k).addClass("on");
$("#bigImgSliderPage").show()}
}
}
if(U){}
}
function p(U){if(U&&U.ware&&U.ware.images&&U.ware.images.length>0){var V="";
$.each(U.ware.images,function(X,W){if(W&&W.newpath){V=V+W.newpath.replace("../n4/default.htm","../n1/default.htm")+","}
}
);
$("#imgs").val(V);
G=new Array(u().split(",").length);
k=0;
E();
B(G[k])}
}
function o(V){if(typeof G_TIME_ID!="undefined"){clearTimeout(G_TIME_ID)}
if(V&&V.yuYue&&V.yuYue.isYuYue){var U="../../m.jd.com/yuyue/"+V.ware.wareId+".html";
$("#nowyuyue").attr("href",U);
$("#cart1").css("display","none");
type=V.yuYue.yuyueType;
if("1"==V.yuYue.yuyueType){$("#yuyuecart").css("display","none");
$("#yuyuenow").css("display","none");
$("#yuyueing").find(".btn-yuyue").attr("data","1");
$("#yuyuecontext").text("\u5f00\u59cb\u9884\u7ea6");
$("#yuyueing").show();
time=new Date().getTime()/1000+parseInt(V.yuYue.yuYueStartTime);
getTimes()}
else{if("2"==V.yuYue.yuyueType){$("#yuyueing").css("display","none");
$("#yuyuecart").css("display","none");
$(".btn-yuyue2").attr("data","2");
$("#yuyuenow").show();
$("#yuyuenow").css("display","block");
time=new Date().getTime()/1000+parseInt(V.yuYue.yuYueEndTime);
getTimes()}
else{if("3"==V.yuYue.yuyueType){$("#test2").text(V.yuYue.buyStartTime);
$("#yuyuenow").css("display","none");
$("#yuyuecart").css("display","none");
$("#yuyueing").show();
$("#yuyueing").find(".btn-yuyue").attr("data","3");
$("#yuyuetime").empty();
$("#yuyuecontext").empty();
if(parseInt(V.yuYue.buyStartTime)>0){$("#yuyuecontext").text("\u5f00\u59cb\u62a2\u8d2d");
time=new Date().getTime()/1000+parseInt(V.yuYue.buyStartTime);
getTimes()}
else{$("#yuyuetime").text("\u62a2\u8d2d\u672a\u5f00\u59cb\uff0c\u656c\u8bf7\u5173\u6ce8");
$("#yuyuecontext").empty()}
}
else{if("4"==V.yuYue.yuyueType){$("#yuyueing").css("display","none");
$("#yuyuenow").css("display","none");
$("#yuyuecart").show();
$("#cartyuyue").attr("data","4");
time=new Date().getTime()/1000+parseInt(V.yuYue.buyEndTime);
getTimes()}
else{if("5"==V.yuYue.yuyueType){$("#yuyueendcontext").text("\u62a2\u8d2d\u5df2\u7ed3\u675f");
$("#yuyueend").css("display","block")}
}
}
}
}
}
else{$("#cart1").css("display","table");
$("#add_cart").removeClass("btn-cart-def");
$("#directorder").removeClass("btn-buy-def")}
}
function d(X){$("#currentWareId").val(X.ware.wareId);
$("#goodName").val(X.ware.wname);
$("#imgUrl").val(X.ware.imgUrlN5);
if(X.jshop){$("#jshop").val(X.jshop)}
if(assessPageNo){assessPageNo=1}
$("#title").html(X.ware.wname+'&nbsp;
&nbsp;
<font color="red">'+X.ware.adword+"</font>");
if(X&&X.proColors&&X.proColors.length>0){$("#color_parent").show();
$("#color").empty();
$.each(X.proColors,function(ab,aa){if(X.ware.wareId==aa.wareId){$("#color1").html(aa.color);
$("#color").append('<a title="'+aa.color+'" date="current" class="btn-color-op new-mg-b10 on" >'+aa.color+"</a>&nbsp;
")}
else{$("#color").append('<a title="'+aa.color+'" date="noCurrent" class="btn-color-op new-mg-b10" href="javascript:void(0)" wareId="'+aa.wareId+'">'+aa.color+"</a>&nbsp;
")}
}
)}
else{$("#color_parent").hide()}
if(X&&X.proSizes&&X.proSizes.length>0){$("#size_parent").show();
$("#size").empty();
$.each(X.proSizes,function(ab,aa){if(X.ware.wareId==aa.wareId){$("#size1").html(aa.size);
$("#size").append('<a title="'+aa.size+'" class="btn-color-op new-mg-b10 on" date="currentSize">'+aa.size+"</a>&nbsp;
")}
else{$("#size").append('<a title="'+aa.size+'" class="btn-color-op new-mg-b10" href="javascript:void(0)" date="noCurrentSize" wareId="'+aa.wareId+'">'+aa.size+"</a>&nbsp;
")}
}
)}
else{$("#size_parent").hide()}
if(X&&X.ware&&X.ware.marketPrice&&X.ware.showMartPrice){$("#marketPrice").empty;
if(X.marketPrice){$("#marketPrice").html("&yen;
"+X.marketPrice)}
else{$("#marketPrice").html("&yen;
"+X.ware.marketPrice)}
}
else{$("#marketPrice").hide()}
J(X);
if(X&&X.stock){var W="";
if(X.stock.jdPrice&&X.stock.jdPrice!=""&&X.stock.jdPrice.toLowerCase()!="null"&&parseFloat(X.stock.jdPrice)>0){W="&yen;
"+X.stock.jdPrice}
else{W="&#26242;
&#26080;
&#25253;
&#20215;
"}
$("#price").html(W);
$("#currentWareId").val(X.stock.wareId);
$("#jdPrice").val(X.stock.jdPrice)}
else{var W="";
if(X.ware.jdPrice&&X.ware.jdPrice!=""&&X.ware.jdPrice.toLowerCase()!="null"&&parseFloat(X.ware.jdPrice)>0){W="&yen;
"+X.ware.jdPrice}
else{W="&#26242;
&#26080;
&#25253;
&#20215;
"}
$("#price").html(W);
$("#currentWareId").val(X.ware.wareId);
$("#jdPrice").val(X.ware.jdPrice)}
if(X&&X.promotionInfo&&X.promotionInfo.promotionInfoTitle){$("#promotionInfo").show();
$("#promotionInfo").empty();
$("#promotionInfo").append(X.promotionInfo.promotionInfoTitle+X.promotionInfo.promotionInfo)}
else{$("#promotionInfo").hide()}
if(X&&X.wareList&&X.wareList.length>0){$("#wareList").show();
$("#wareList_1").empty();
for(var V=0,U=X.wareList.length;
V<U;
V++){$("#wareList_1").append('<a href="'+urlEncode("/product/"+X.wareList[V].wareId+".html",$("#sid").val())+'">'+X.wareList[V].wname+" X "+X.wareList[V].num+"</a>")}
}
else{$("#wareList").hide();
$("#wareList_1").hide()}
if(X&&X.wareCoupons&&X.wareCoupons.length>0){$("#wareCoupons").show();
$("#wareCoupons_1").empty();
for(var V=0,U=X.wareCoupons.length;
V<U;
V++){$("#wareCoupons_1").append(""+X.wareCoupons[V].message+(X.wareCoupons[V].balance?" "+X.wareCoupons[V].balance+"&#20803;
":"")+"")}
}
else{$("#wareCoupons").hide();
$("#wareCoupons_1").hide()}
var Z=$("#orderComment").attr("href");
$("#orderComment").attr("href",Z.replace(/\/\d+\.html/,"../"+X.ware.wareId+".html"));
var Y=$("#consultations").attr("href");
$("#consultations").attr("href",Y.replace(/\/\d+\.html/,"../"+X.ware.wareId+".html"));
if(X&&X.onlineService){x()}
}
function T(U){}
function A(X){var W=-1;
var V=-1;
try{W=parseInt(X.commentCountMap.scoreCount1);
V=W+parseInt(X.commentCountMap.scoreCount2)+parseInt(X.commentCountMap.scoreCount3)}
catch(Y){}
var U=Math.round(W/V*100);
if(W>=0&&V>0){$("#comments").html("<em>"+V+"</em> \u4eba\u8bc4\u4ef7  <em>"+U+"%</em> \u597d\u8bc4")}
else{$("#comments").html("<em>"+V+"</em> \u4eba\u8bc4\u4ef7  <em> 100%</em> \u597d\u8bc4")}
}
function D(U){if(U.orderCommentCount){$("#orderNum").html(U.orderCommentCount+"&#26465;
")}
}
function H(V){var U="";
if(V.commentCount){U=V.commentCount}
if(U!=""){$("#adviceNum").html(U+"&#26465;
")}
}
function K(U){$("#spinner1").show();
j.spin($("#spinner1")[0]);
$.post("../ware/view.json",{wareId:U,sid:$("#sid").val(),provinceId:$("#province").val(),cityId:$("#city").val(),countryId:$("#country").val(),townId:$("#town").val(),teamSign:$("#teamSign").val()}
,function(V){o(V);
p(V);
d(V);
j.stop();
$("#spinner1").hide();
T(V);
window.scrollTo(0,0)}
,"json");
jQuery.post("../ware/comments.json",{wareId:U,sid:$("#sid").val()}
,function(V){A(V)}
,"json");
jQuery.post("../ware/orderComment.json",{wareId:U,sid:$("#sid").val()}
,function(V){D(V)}
,"json");
jQuery.post("../ware/consultations.json",{wareId:U,sid:$("#sid").val()}
,function(V){H(V)}
,"json")}
function n(V,U){$("#spinner1").show();
j.spin($("#spinner1")[0]);
$.post("../ware/view.json",{provinceId:U,cityId:V,sid:$("#sid").val(),wareId:$("#currentWareId").val(),teamSign:$("#teamSign").val()}
,function(W){J(W);
v(W);
j.stop();
$("#spinner1").hide()}
,"json")}
function i(U){$("#spinner1").show();
j.spin($("#spinner1")[0]);
$.post("../ware/view.json",{provinceId:U,sid:$("#sid").val(),wareId:$("#currentWareId").val(),teamSign:$("#teamSign").val()}
,function(V){J(V);
v(V);
j.stop();
$("#spinner1").hide()}
,"json")}
function s(V,U,W){$("#spinner1").show();
j.spin($("#spinner1")[0]);
$.post("../ware/view.json",{provinceId:U,cityId:W,countryId:V,sid:$("#sid").val(),wareId:$("#currentWareId").val(),teamSign:$("#teamSign").val()}
,function(X){J(X);
v(X);
j.stop();
$("#spinner1").hide()}
,"json")}
function C(V,U,X,W){$("#spinner1").show();
j.spin($("#spinner1")[0]);
$.post("../ware/view.json",{provinceId:U,cityId:X,countryId:W,townId:V,sid:$("#sid").val(),wareId:$("#currentWareId").val(),teamSign:$("#teamSign").val()}
,function(Y){J(Y);
v(Y);
j.stop();
$("#spinner1").hide()}
,"json")}
function x(){var U=$("#currentWareId").val();
var V="../../chat1.jd.com/api/checkChat@pid="+U+"&entry=m_item&returnCharset=gb2312&callback=?";
jQuery.getJSON(V,S)}
function S(V){if(!V||!V.code){return}
var W=V.code;
if(W==1){$("#kefu").show();
var U="../../im.m.jd.com/merchant/index@v=6&sku="+$("#currentWareId").val()+"&imgUrl="+$("#imgUrl").val()+"&goodName="+encodeURIComponent(encodeURIComponent($("#goodName").val()))+"&jdPrice="+$("#jdPrice").val()+"&sid="+$("#sid").val();
$("#im").attr("href",U)}
else{if(W==2||W==3||W==9){$("#kefu").show();
$("#im").addClass("btn-call-def")}
}
}
function v(W){if(W&&W.ware&&W.ware.marketPrice&&W.ware.showMartPrice){$("#marketPrice").show();
$("#marketPrice").empty();
if(W.marketPrice){$("#marketPrice").html("&yen;
"+W.marketPrice)}
else{$("#marketPrice").html("&yen;
"+W.ware.marketPrice)}
}
else{$("#marketPrice").hide()}
if(W.promotionInfo&&W.promotionInfo.promotionInfoTitle.length>0){var U=W.promotionInfo.promotionInfoTitle+W.promotionInfo.promotionInfo;
$("#promotionInfo").html(U);
$("#promotionInfo").show()}
else{$("#promotionInfo").hide()}
if(W&&W.stock){var V="";
if(W.stock.jdPrice&&W.stock.jdPrice!=""&&W.stock.jdPrice.toLowerCase()!="null"&&parseFloat(W.stock.jdPrice)>0){V="&yen;
"+W.stock.jdPrice}
else{V="&#26242;
&#26080;
&#25253;
&#20215;
"}
$("#price").html(V);
$("#currentWareId").val(W.stock.wareId)}
else{var V="";
if(W.ware.jdPrice&&W.ware.jdPrice!=""&&W.ware.jdPrice.toLowerCase()!="null"&&parseFloat(W.ware.jdPrice)>0){V="&yen;
"+W.ware.jdPrice}
else{V="&#26242;
&#26080;
&#25253;
&#20215;
"}
$("#price").html(V);
$("#currentWareId").val(W.ware.wareId)}
}
function J(U){if(U){$("#stockTip").empty();
$("#provincetip").empty();
$("#provincetip").append('<span></span><select class="new-select" id="province" onchange="changeProvince();
"></select>');
$.each(U.provinceList,function(W,V){if(V.label==U.province.id){$("#stockTip").append(U.province.name);
$("#provincetip").append(U.province.name);
$("#province").append('<option value="'+V.label+'" selected="selected" >'+V.value+"</option> ");
if(V.label=="84"){}
}
else{$("#province").append('<option value="'+V.label+'" >'+V.value+"</option> ")}
}
);
if(U.city){$("#citytip").empty();
$("#citytip").append('<span></span><select class="new-select" id="city" onchange="changeCity();
"></select>');
$.each(U.cityList,function(W,V){if(V.label==U.city.id){$("#stockTip").append(">"+U.city.name);
$("#citytip").append(U.city.name);
$("#city").append('<option value="'+V.label+'" selected="selected" >'+V.value+"</option> ")}
else{$("#city").append('<option value="'+V.label+'" >'+V.value+"</option> ")}
}
)}
if(U.country){$("#countrytip").empty();
$("#countrytip").append('<span></span><select class="new-select" id="country" onchange="changeCountry();
"></select>');
$.each(U.countryList,function(W,V){if(V.label==U.country.id){$("#stockTip").append(">"+U.country.name);
$("#countrytip").append(U.country.name);
$("#country").append('<option value="'+V.label+'" selected="selected" >'+V.value+"</option> ")}
else{$("#country").append('<option value="'+V.label+'" >'+V.value+"</option> ")}
}
)}
if(U.town){$("#town_1").empty();
$("#town_1").append('<span class="select-box new-mg-b10" id="towntip"><span></span><select class="new-select" id="town" onchange="changeTown();
"></select></span>');
$.each(U.townList,function(W,V){if(V.label==U.town.id){$("#stockTip").append(">"+U.town.name);
$("#towntip").append(U.town.name);
$("#town").append('<option value="'+V.label+'" selected="selected" >'+V.value+"</option> ")}
else{$("#town").append('<option value="'+V.label+'" >'+V.value+"</option> ")}
}
)}
else{$("#towntip").hide()}
if(U.stock&&U.stock.status){$("#stockStatus").html('<font color="#c00">'+U.stock.status+"</font>");
$("#stockStatus_1").html(U.stock.status)}
}
else{$("#store").hide()}
if(U&&U.canBuy&&U.stock&&U.stock.flag){if((U.stock.jdPrice>0)||(U.ware.jdprice>0)){if($("#teamSign").val()!=1){$("#add_cart").removeClass("btn-cart-def");
$("#add_cart").unbind("click");
$("#add_cart").click(Q)}
$("#stockFlag").val(U.stock.flag);
$("#directorder").removeClass("btn-buy-def");
$("#directorder").unbind("click");
$("#directorder").click(M)}
}
else{if($("#teamSign").val()!=1){$("#add_cart").addClass("btn-cart-def");
$("#add_cart").unbind("click")}
if(U.stock&&U.stock.flag){$("#stockFlag").val(U.stock.flag)}
else{$("#stockFlag").val(false);
$("#add_cart").addClass("btn-cart-def")}
$("#directorder").addClass("btn-buy-def");
$("#directorder").unbind("click")}
}
$(function(){$("#province").live("change",function(){$("#cart").hide();
if($(this).val()=="84"){$("#citytip").hide();
$("#countrytip").hide();
$("#storeTownInfo").hide();
$("#towntip").hide();
$("#kucun").hide();
$("#stockStatus_1").html("\u65e0\u8d27");
$("#add_cart").addClass("btn-cart-def");
$("#directorder").addClass("btn-buy-def");
$("#add_cart").unbind("click");
$("#directorder").unbind("click");
return""}
$("#citytip").show();
$("#countrytip").show();
$("#storeTownInfo").show();
$("#towntip").show();
i($(this).val())}
);
$("#city").live("change",function(){$("#cart").hide();
n($(this).val(),$("#province").val())}
);
$("#country").live("change",function(){$("#cart").hide();
s($(this).val(),$("#province").val(),$("#city").val())}
);
$("#town").live("change",function(){$("#cart").hide();
C($(this).val(),$("#province").val(),$("#city").val(),$("#country").val())}
);
$('a[date="noCurrent"]').live("click",function(){K($(this).attr("wareId"))}
);
$('a[date="noCurrentSize"]').live("click",function(){K($(this).attr("wareId"))}
)}
);
var r=$("#currentWareId").val();
var t=$("#sid").val();
var q=createSpinner();
var f=null;
function R(){var U=parseInt(document.body.clientWidth);
$("#spinnerCache").css("margin-left",(U/2-50)+"px");
$("#spinnerCache").show();
q.spin($("#spinnerCache")[0])}
function P(){q.stop();
$("#spinnerCache").hide()}
function u(){var U=$.trim($("#imgs").val());
if(U.substring(U.length-1)==","){U=U.substring(0,U.length-1)}
return U}
var G=new Array(u().split(",").length);
var k=0;
var c=1;
function L(W,X,U){var V=new Image();
V.src=W;
V.width=X;
V.height=U;
V.ontouchstart=h;
V.ontouchmove=y;
V.ontouchend=I;
return V}
$(function(){E()}
);
function E(){var X=u();
if(X!=""){var W=X.split(",");
if(!G[k]){G[k]=(L(W[k],200,200))}
var V;
for(var U=0;
U<c;
U++){V=k+(U+1);
if(V<W.length){if(!G[V]){G[V]=(L(W[V],200,200))}
}
else{V=V-W.length;
if(!G[V]){G[V]=(L(W[V],200,200))}
}
V=k-(U+1);
if(V<0){V=W.length+V;
if(!G[V]){G[V]=(L(W[V],200,200))}
}
else{if(!G[V]){G[V]=(L(W[V],200,200))}
}
}
}
}
function e(){var V=u();
k++;
var U=V.split(",");
if(k>U.length-1){k=0}
E();
B(G[k],1)}
function N(){var V=u();
k--;
var U=V.split(",");
if(k<0){k=U.length-1}
E();
B(G[k],0)}
var z,w,m,l,b,a;
function h(U){var V=U.touches[0];
z=V.pageX;
w=V.pageY}
function y(U){var V=U.touches[0];
m=V.pageX;
l=V.pageY;
b=Math.abs(z-m);
a=Math.abs(w-l);
if(b>a){U.preventDefault()}
}
function I(U){if(b>a){if(z>m){e()}
else{N()}
}
z=0,w=0,m=0,l=0,b=0,a=0}
if(document.getElementById("imgSlider")){g(document.getElementById("imgSlider"))}
if(document.getElementById("popImg")){g(document.getElementById("popImg"))}
function O(){if($("#_mask")){$("#_mask").remove()}
var U=((document.body||document.documentElement).clientHeight+20)+"px";
var W="100%";
var V=document.createElement("div");
V.setAttribute("id","_mask");
V.setAttribute("style","position:absolute;
left:0px;
top:0px;
background-color:rgb(0, 0, 0);
filter:alpha(opacity=90);
opacity: 0.9;
width:"+W+";
height:"+U+";
z-index:8889;
");
(document.body||document.documentElement).appendChild(V);
$("#_mask").click(function(){$("#cart").hide();
if($("#popImg")){$("#popImg").hide()}
if($("#_mask")){$("#_mask").hide()}
}
);
var Y=400;
var X=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop;
var Z=document.documentElement.clientHeight||document.body.clientHeight;
document.getElementById("popImg").style.top=((Z-Y)/2+X)+"px";
$("#popImg").show()}
$("#_zoom").click(function(){O()}
)}
);
function hidePop(){if($("#_mask")){$("#_mask").remove()}
$("#popImg").hide()}
function zoomImgLeft(){var a=window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft;
var c=document.documentElement.clientWidth||document.body.clientWidth;
var b=a-150+(c/2);
document.getElementById("popImg").style.left=b+"px"}
$(function(){var _sid=$("#sid").val();
var _wareId=$("#currentWareId").val();
jQuery.post(urlEncode("../ware/comments.json",_sid),{wareId:_wareId}
,function(d){var good=-1;
var all=-1;
try{good=parseInt(d.commentCountMap.scoreCount1);
all=good+parseInt(d.commentCountMap.scoreCount2)+parseInt(d.commentCountMap.scoreCount3)}
catch(e){}
var rate=Math.round(good/all*100);
if(good>=0&&all>0){$("#comments").html("<em>"+all+"</em> \u4eba\u8bc4\u4ef7  <em>"+rate+"%</em> \u597d\u8bc4")}
else{$("#comments").html("<em>"+all+"</em> \u4eba\u8bc4\u4ef7  <em> 100%</em> \u597d\u8bc4")}
}
,"json");
jQuery.post(urlEncode("../ware/orderComment.json",_sid),{wareId:_wareId}
,function(d){if(d.orderCommentCount){$("#orderComment").append("("+d.orderCommentCount+")")}
}
,"json");
jQuery.post(urlEncode("../ware/consultations.json",_sid),{wareId:_wareId}
,function(d){var html="";
if(d.commentCount){html=d.commentCount}
if(html!=""){$("#consultations").append("("+html+")")}
}
,"json");
$("#attention").click(function(){if($("#attention").hasClass("on")){jQuery.ajax({url:urlEncode("../user/cancelFavorite.json",_sid),data:{wareId:$("#currentWareId").val()}
,success:function(d){try{var obj=eval("("+d+")");
endTime=new Date().getTime()/1000+3;
$("#attention").removeClass("on");
iconShow(0)}
catch(e){if("true"==$("#passportUse").val()){window.location.href="../../https@passport.m.jd.com/user/login.action@sid="+_sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="../user/login.action"}
}
}
,error:function(d){if("true"==$("#passportUse").val()){window.location.href="https://passport.m.jd.com/user/login.action?sid="+_sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="/user/login.action"}
}
}
)}
else{jQuery.ajax({url:urlEncode("/user/addFavorite.json",_sid),data:{wareId:$("#currentWareId").val()}
,success:function(d){try{var obj=eval("("+d+")");
endTime=new Date().getTime()/1000+3;
$("#attention").addClass("on");
iconShow(1)}
catch(e){if("true"==$("#passportUse").val()){window.location.href="https:../../passport.m.jd.com/user/login.action@sid="+_sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="/user/login.action"}
}
}
,error:function(d){if("true"==$("#passportUse").val()){window.location.href="https:../../passport.m.jd.com/user/login.action@sid="+_sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="/user/login.action"}
}
}
)}
}
)}
);
var endTime;
function changeProvince(){var a=document.getElementById("province").selectedIndex;
var c=$("#provincetip").children();
if(c.size()!=2){return}
var d=document.getElementById("province").options[a].text;
var b=c.eq(1);
b.html(b.html().replace(/<script.*<\/script>/,""));
$("#provincetip").html("");
$("#provincetip").append(c.eq(0));
$("#provincetip").append(b);
document.getElementById("province").selectedIndex=a;
$("#provincetip").append(d)}
function changeCity(){var a=document.getElementById("city").selectedIndex;
$("#citytip").html(document.getElementById("city").options[a].text)}
function changeCountry(){var a=document.getElementById("country").selectedIndex;
$("#countrytip").html(document.getElementById("country").options[a].text)}
function changeTown(){var a=document.getElementById("town").selectedIndex;
$("#towntip").html(document.getElementById("town").options[a].text)}
function iconShow(f){var i=new Date().getTime()/1000;
var c=Math.floor(endTime-i);
if(c>0){setTimeout("iconShow()",1000);
var j=window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft;
var a=document.documentElement.clientWidth||document.body.clientWidth;
var d=j-60+(a/2);
document.getElementById("save").style.left=d+"px";
var h=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop;
var b=document.documentElement.clientHeight||document.body.clientHeight;
var g=h-25+(b/2);
document.getElementById("save").style.top=g+"px";
if(1==f){$("#guanzhu").html("\u5173\u6ce8\u6210\u529f")}
if(0==f){$("#guanzhu").html("\u53d6\u6d88\u6210\u529f")}
$(".pop-attention").show()}
else{$(".pop-attention").hide()}
}
function getLeft(){var a=window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft;
var d=document.documentElement.clientWidth||document.body.clientWidth;
var c=a-114+(d/2);
var b=a-135+(d/2);
document.getElementById("cart").style.left=c+"px";
document.getElementById("tip").style.left=b+"px"}
$(function(){getLeft();
zoomImgLeft();
$(window).bind("resize",function(){getLeft();
zoomImgLeft()}
)}
);
var loading="&#21162;
&#21147;
&#21152;
&#36733;
&#20013;
...";
$(function(){$("#btnDetail").click(function(){var a=$("#sid").val();
var b=$("#currentWareId").val();
if(b==$("#showdetail").attr("wareId")){return}
$("#detailContent").html(loading);
$("#showdetail").attr("wareId",b);
jQuery.get("/ware/detail.json",{wareId:b,sid:a}
,function(f){var e="";
if(f&&f.ware&&f.ware.isbook){e=e+'<div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-b10">&#22522;
&#26412;
&#20449;
&#24687;
</h3>';
if(f&&f.ware&&f.ware.attrs){for(var d=0,c=f.ware.attrs.length;
d<c;
d++){e+='<span class="new-span-block">'+f.ware.attrs[d].label+" "+f.ware.attrs[d].value+"</span>"}
}
e=e+'</div><div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-tb10">&#22270;
&#20070;
&#20869;
&#23481;
</h3>';
if(f.ware.wdis&&f.ware.wdis.length>0){e+=('<p class=" new-mg-b10">'+f.ware.wdis+"</p>")}
else{e+='<p class=" new-mg-b10">&#26242;
&#26080;
&#20171;
&#32461;
</p>'}
e=e+'</div><div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-tb10">&#30446;
&#24405;
</h3><span class="new-span-block">'+(f.ware.catalogue.replace(/\n/g,"<br/>"))+"</span></div>"}
else{e=e+'<div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-tb10">&#21830;
&#21697;
&#20171;
&#32461;
</h3>';
if(f.ware.wdis&&f.ware.wdis.length>0){e+=('<p class=" new-mg-b10">'+f.ware.wdis+"</p>")}
else{e+='<p class=" new-mg-b10">&#26242;
&#26080;
&#20171;
&#32461;
</p>'}
e=e+'</div><div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-tb10">&#35268;
&#26684;
&#21442;
&#25968;
</h3>';
if(f.ware.wi&&f.ware.wi.code&&f.ware.wi.code.length>0){e+=('<p class=" new-mg-b10">'+f.ware.wi.code+"</p>")}
else{e+='<p class=" new-mg-b10">&#26242;
&#26080;
</p>'}
e=e+'</div><div class="new-gd-introduce"><h3 class="new-h-h3 new-mg-tb10">&#21253;
&#35013;
&#28165;
&#21333;
</h3>';
if(f.ware.wi&&f.ware.wi.wareQD&&f.ware.wi.wareQD.length>0){e+=('<p class=" new-mg-b10">'+f.ware.wi.wareQD+"</p>")}
else{e+='<p class=" new-mg-b10">&#26242;
&#26080;
</p>'}
e=e+'</div><div class="new-gd-introduce new-border-none"><h3 class="new-h-h3 new-mg-tb10">&#21806;
&#21518;
&#26381;
&#21153;
</h3>';
if(f.ware.wi&&f.ware.wi.ybInfo&&f.ware.wi.ybInfo.length>0){e+=('<p class=" new-mg-b10">'+f.ware.wi.ybInfo+"</p>")}
else{e+='<p class=" new-mg-b10">&#26242;
&#26080;
</p>'}
e=e+"</div>"}
$("#detailContent").html(e)}
,"json")}
)}
);
var assessPageNo=1;
function assessRender(c){var a=$("#sid").val();
var b=$("#currentWareId").val();
var d=0;
if($("#_tabGoodScale").hasClass("on")){d=5}
else{if($("#_tabMediumScale").hasClass("on")){d=3}
else{if($("#_tabBadScale").hasClass("on")){d=1}
}
}
if(!c){$("#_assessScale").html(0);
$("#_goodScale").html("&#65288;
0%&#65289;
");
$("#_mediumScale").html("&#65288;
0%&#65289;
");
$("#_badScale").html("&#65288;
0%&#65289;
");
$("#_goodScaleImg").css("width","0%");
$("#_mediumScaleImg").css("width","0%");
$("#_badScaleImg").css("width","0%");
$("#goodNum").html(0);
$("#mediumNum").html(0);
$("#badNum").html(0)}
$("#_assessItem").html(loading);
$("#_assessPage").html("");
jQuery.get("/ware/comments.json",{wareId:b,sid:a,score:(d>0?d:""),page:assessPageNo}
,function(x){$("#_assessItem").html('<div class="new-cp-prom2"><span class="new-logo2"></span><strong class="new-span-block">&#25265;
&#27465;
&#26242;
&#26102;
&#27809;
&#26377;
&#30456;
&#20851;
&#32467;
&#26524;
</strong></div>');
var k=$("#sid").val();
var e=$("#currentWareId").val();
if(!x){return}
var m=x.commentCount;
if(m==0&&x.comments.length!=0){m=x.comments.length}
if(x.commentCountMap){var r=x.commentCountMap.scoreCount1;
var n=x.commentCountMap.scoreCount2;
var p=x.commentCountMap.scoreCount3;
var j=r+n+p;
if(r>0){$("#goodNum").html(r)}
if(n>0){$("#mediumNum").html(n)}
if(p>0){$("#badNum").html(p)}
if(j>0){var u=Math.round(r/j*100);
var o=Math.round(n/j*100);
var s=Math.round(p/j*100);
$("#_assessScale").html(u);
$("#_goodScale").html("&#65288;
"+u+"%&#65289;
");
$("#_mediumScale").html("&#65288;
"+o+"%&#65289;
");
$("#_badScale").html("&#65288;
"+s+"%&#65289;
");
$("#_goodScaleImg").css("width",u+"%");
$("#_mediumScaleImg").css("width",o+"%");
$("#_badScaleImg").css("width",s+"%")}
}
if(x.comments&&x.comments.length>0){var q="";
for(var v=0,w=x.comments.length;
v<w;
v++){var f=x.comments[v];
var g=f.userId||"";
if(g.length>10){g=f.userId.substring(0,10)+"..."}
var l=urlEncode("/ware/commentDetail/"+e+"_"+f.commentId+".html",k);
q=q+'<div class="new-gd-introduce" onclick="window.location.href=\''+l+'\'"><div class="new-mg-t10">'+(f.pros!=""&&f.pros!="没有描述"?'<span class="new-gd-txt2"><span class="new-fl">&#20248;
&#28857;
&#65306;
</span><span class="new-gd-txt3">'+f.pros+"</span></span>":"")+(f.cons!=""&&f.cons!="没有描述"?'<span class="new-gd-txt2"><span class="new-fl">&#19981;
&#36275;
&#65306;
</span><span class="new-gd-txt3">'+f.cons+"</span></span>":"")+(f.content!=""&&f.content!="没有描述"?'<span class="new-gd-txt2"><span class="new-fl">&#24515;
&#24471;
&#65306;
</span><span class="new-gd-txt3">'+f.content+"</span></span>":"")+'</div><div class="new-p-re new-mg-t10"><span class="new-mu-star"><span class="new-mu-starv" style="width:'+(f.score*20)+'%"></span></span><span class="new-gd-user">'+g+" "+(f.creationTime.length>10?f.creationTime.substring(0,10):f.creationTime)+"</span></div></div>"}
$("#_assessItem").html(q)}
else{$("#_assessItem").html('<div class="new-cp-prom2"><span class="new-logo2"></span><strong class="new-span-block">&#25265;
&#27465;
&#26242;
&#26102;
&#27809;
&#26377;
&#30456;
&#20851;
&#32467;
&#26524;
</strong></div>')}
var h=x.totalPage||0;
if(h>100){h=100}
var t=assessPageNo;
if(h>0){var q='<div class="new-tbl-type"><div class="new-tbl-cell">'+(assessPageNo!=1?'<a href="javascript:prevAssess()" class="new-a-prve"><span>&#19978;
&#19968;
&#39029;
</span></a>':'<span class="new-a-prve"><span>&#19978;
&#19968;
&#39029;
</span></span>')+'</div><div class="new-tbl-cell new-p-re"><div class="new-a-page"><span class="new-open">'+assessPageNo+"/"+h+'</span></div><select class="new-select" id="_assessSelectNo" onchange = "goSelectPage()">';
for(var v=0;
v<h;
v++){q+='<option value="'+(v+1)+'" '+(v+1==t?"selected":"")+">&#31532;
"+(v+1)+"&#39029;
</option>"}
q=q+'</select></div><div class="new-tbl-cell">'+(t!=h?'<a href="javascript:nextAssess()" class="new-a-next"><span>&#19979;
&#19968;
&#39029;
</span></a>':'<span class="new-a-next"><span>&#19979;
&#19968;
&#39029;
</span></span>')+"</div></div>";
$("#_assessPage").html(q)}
else{$("#_assessPage").html("")}
}
,"json")}
$(function(){$("#btnAssess").click(function(){assessPageNo=1;
assessRender(false)}
)}
);
function nextAssess(){assessPageNo++;
assessRender(true)}
function prevAssess(){assessPageNo--;
assessRender(true)}
function goSelectPage(){assessPageNo=$("#_assessSelectNo").val();
assessRender(true)}
function changeAssessType(a){var b=a.id;
if(b!="_tabGoodScale"){$("#_tabGoodScale").removeClass("on")}
if(b!="_tabMediumScale"){$("#_tabMediumScale").removeClass("on")}
if(b!="_tabBadScale"){$("#_tabBadScale").removeClass("on")}
if($(a).hasClass("on")){$(a).removeClass("on")}
else{$(a).addClass("on")}
assessPageNo=1;
assessRender(true)}
;
