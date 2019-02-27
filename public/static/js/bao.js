$(document).ready(function(){

$(".imgup").hide();


$("#pic").click(function () {
$("#img").click(); //隐藏了input:file样式后，点击头像就可以本地上传
$("#img").on("change",function(){
var objUrl = getObjectURL(this.files[0]) ; //获取图片的路径，该路径不是图片在本地的路径
if (objUrl) {
$("#pic").attr("src", objUrl) ; //将图片路径存入src中，显示出图片
}
});
});

 function baomsgjq(){
         var msg="<div style='z-index:998; position: absolute;width: 100%;marker-top:200px;top:300px;''>"+
     "<div style='z-index:998; margin: auto;width: 500px;height: 200px;background-color: rgba(0,0,0,0.5);'>"+
     "<p id='msg' style='color: #ffffff;text-align: center;padding: 50px;font-size: 20px;'>"+data+"</p></div>";
          $("body").append(msg);
          delayre();


 };

});

function getObjectURL(file) {
var url = null ;
if (window.createObjectURL!=undefined) { // basic
url = window.createObjectURL(file) ;
} else if (window.URL!=undefined) { // mozilla(firefox)
url = window.URL.createObjectURL(file) ;
} else if (window.webkitURL!=undefined) { // webkit or chrome
url = window.webkitURL.createObjectURL(file) ;
}
return url ;
}

function baomsg(data){

          var msg="<div style='z-index:998; position: absolute;width: 100%;marker-top:200px;top:300px;''>"+
     "<div style='z-index:998; margin: auto;width: 500px;height: 200px;background-color: rgba(0,0,0,0.5);'>"+
     "<p id='msg' style='color: #ffffff;text-align: center;padding: 50px;font-size: 20px;'>"+data+"</p></div>";
          $("body").append(msg);
          setTimeout("location.reload()",800);


}

