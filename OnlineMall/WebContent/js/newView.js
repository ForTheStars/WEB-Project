var startPosX;
var startPosY;
var powerA;
var powerB;
var isend=false;
var cpage=1;
function touchStart(a){startPosX=a.touches[0].pageX;
startPosY=a.touches[0].pageY}
function touchMove(c){var e=$("#slide").css("margin-left").replace("px","");
var a=Math.abs(Math.ceil(parseInt(e)/71))+5;
if(Math.abs(c.touches[0].pageY-startPosY)<Math.abs(c.touches[0].pageX-startPosX)){c.preventDefault()}
var g=c.touches;
var b=parseInt($("#slide").css("width").replace("px",""));
if(c.touches.length==1){if(g[0].pageX>startPosX){var f=g[0].pageX-startPosX;
var d=parseInt($("#slide").css("margin-left").replace("px",""));
$("#slide").css("margin-left",d+f+"px")}
else{var f=g[0].pageX-startPosX;
var d=parseInt($("#slide").css("margin-left").replace("px",""));
$("#slide").css("margin-left",d+f+"px")}
startPosX=g[0].pageX}
if(g.length>0){powerA=powerB;
powerB=g[g.length-1].pageX}
}
function touchEnd(c){var d=parseInt($("#slide").css("margin-left").replace("px",""));
var b=parseInt($("#slide").css("width").replace("px",""));
if(powerA&&powerB&&powerA>0&&powerB>0){var a=Math.abs(powerA-powerB);
if(a>0){$("#slide").animate({"margin-left":(powerA>powerB?d-a:d+a)+"px"}
,200)}
}
if(d>0){setTimeout(function(){$("#slide").animate({"margin-left":"0px"}
,200)}
,200)}
if(Math.abs(d)>(b-320)){setTimeout(function(){$("#slide").animate({"margin-left":-((b-320+20))+"px"}
,200)}
,200)}
powerA=0;
powerB=0}
function reduce(){var a=parseInt($("#number").val(),10);
if(a<=1){$("#number").val(1)}
else{a--;
$("#number").val(a)}
}
function add(){var a=parseInt($("#number").val(),10);
if(a>=999){$("#number").val(1)}
else{a++;
$("#number").val(a)}
}
function modify(){var a=parseInt($("#number").val(),10);
if(""==$("#number").val()){$("#number").val(1);
return}
if(!isNaN(a)){if(1>a||a>999){$("#number").val(1);
return}
else{$("#number").val(a);
return}
}
else{$("#number").val(1)}
}
function addLocalStorage(d){if(null!=d){var a=window.localStorage.getItem("viewItem");
var c;
if(a!=null){var e=new Array();
e=a.split(",");
for(var b=0;
b<e.length;
b++){if(d==e[b]){c=true}
}
if(!c){e.push(d)}
if(e.length>20){e.shift();
window.localStorage.setItem("viewItem",e)}
else{window.localStorage.setItem("viewItem",e)}
}
else{window.localStorage.setItem("viewItem",d)}
}
}
var getTimes=function(){var f=new Date().getTime()/1000;
var g=parseInt(time-f);
var e,c,b,d,a;
$("#test1").text(g);
if(g>=0){e=Math.floor(g/86400);
c=Math.floor((g-e*86400)/3600);
b=Math.floor((g-e*86400-c*3600)/60);
d=Math.floor(g-e*86400-c*3600-b*60);
if(parseInt(e)>0){a=e+"\u5929"+c+"\u5c0f\u65f6"+b+"\u5206\u949f\u540e"}
else{a=c+"\u5c0f\u65f6"+b+"\u5206\u949f"+d+"\u79d2\u540e"}
if("1"==type){$("#yuyuetime").text(a)}
else{if("3"==type){$("#yuyuetime").text(a)}
}
if(0==parseInt(g)){window.location.reload()}
if(g>0){G_TIME_ID=setTimeout("getTimes()",1000)}
}
}
;
$(function(){var sid=$("#sid").val();
$("#cartyuyue").click(function(){jQuery.ajax({url:urlEncode("../ware/isAppoint.json",$("#sid").val()),data:{wareId:$("#currentWareId").val()}
,success:function(d){try{var spinner2=createSpinner();
$("#spinner2").show();
spinner2.spin($("#spinner2")[0]);
if($("#_mask")){$("#_mask").remove()}
var height=((document.body||document.documentElement).clientHeight+20)+"px";
var width="100%";
var mask=document.createElement("div");
mask.setAttribute("id","_mask");
mask.setAttribute("style","position:absolute;
left:0px;
top:0px;
background-color:rgb(20, 20, 20);
filter:alpha(opacity=60);
opacity: 0.6;
width:"+width+";
height:"+height+";
z-index:9998;
");
(document.body||document.documentElement).appendChild(mask);
spinner2.stop();
$("#spinner2").hide();
var top=100;
var scrollTop=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop;
var allHeight=document.documentElement.clientHeight||document.body.clientHeight;
document.getElementById("tip").style.bottom=((allHeight-top)/2-scrollTop)+"px";
var obj=eval("("+d+")");
var isAppoint=JSON.parse(d).isAppoint;
if(true==isAppoint){G_addWareToCart()}
else{$("#tip").css("display","block");
$(".pop-txt").text(JSON.parse(d).text);
$("#myyuyue").css("display","none")}
}
catch(e){if("true"==$("#passportUse").val()){window.location.href="../../https@passport.m.jd.com/user/login.action@sid="+sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="../user/login.action"}
}
}
,error:function(d){if("true"==$("#passportUse").val()){window.location.href="https://passport.m.jd.com/user/login.action?sid="+sid+"&returnurl=http://m.jd.com/product/"+$("#currentWareId").val()+".html"}
else{window.location.href="/user/login.action"}
}
}
)}
)}
);
