<?php
namespace app\adminlogin\controller;
 use think\Controller;
 use think\Db;
 use think\Session;

class Login extends Controller
{     


      public function index()
      {

     return $this->fetch('index/login');

      }
     public function adminlogin()
     { 

      
      $res = Db::table('zh_adminuser')->where(['adminuser'=>$_POST['admin']])->find();
         Db::table('zh_adminuser')->where(['adminuser'=>$_POST['admin']])->update(['lasttime'=>date("Y/m/d").'-'.date("h:i:sa")]);
    
      if (md5($_POST['paw'])==$res['paw']) {
      //echo "string";
      Session::set('user',$_POST['admin']);
       //Session::set('user',$_POST['admin']);
       echo '1';
        # code...
      }
      else{echo "0";}
     }
   }