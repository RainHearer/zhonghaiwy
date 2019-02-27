<?php
namespace app\admin\controller;
 use think\Controller;
 use think\Db;
 use think\Session;

class Index extends Controller
{
      public function _initialize()//该控制器下的公共方法
    {  

       session_start();
      $suser =  $_SESSION['user']=Session::get('user');
        $suser = Db::table('zh_adminuser')->where(['adminuser'=>$suser])->select();
        if ($suser[0]['suser']=='超级管理员') {
          $_SESSION['suser'] ='是';
          # code...
        }else{$_SESSION['suser'] ='否';}
       
       if (Session::has('user')!=1) {
         $this->error('请先登陆','../../adminlogin/login/index');
       }

       
    }
    
   public function index()
   {
   	   return $this->fetch('index/login');
   }

   public function home()
   {    
   $type_list = Db::table('zh_type')->select();
   $count = Db::table('zh_case')->count();
         // 获取分页显示
   $case_list = Db::table('zh_case')->paginate(20);

       //  $list = User::where('status',1)->paginate(10,1000);
    // 获取分页显示
    $page = $case_list->render();
    $this->assign('type_list', $type_list);
    $this->assign('page_count', $count);
    $this->assign('page', $page);
    $this->assign("case_list",$case_list);
   // $this->assign("service_list",$service_list);
   	   return $this->fetch('index/home');
       
   }//........................
   public function us()
   {
    $us = Db::table('zh_us')->select() ;
    $this->assign('us',$us);
    return $this->fetch('index/us');
   }
   public function dateadd()
   {
 
   //$data[];
   for ($i=1; $i < 17; $i++) { 
   	$date[]=[
   	'casename' =>'停车服务'.$i.'xx项目',
   	'caseurl' =>'http://lovelyone.top',
   	'imgpath' =>'upimg/'.$i.'.jpg',
   	'sucesse'=>'0',
   	'type'=>'停车服务'


   	];
   	//dump($date);
  
   	# code...
   } 	//  $res = Db::table('zh_case')->insertall($date);
   	   dump($res);
   }
   public function newedti()
   {
       $new = Db::table('zh_new')->paginate(20);
      $count = Db::table('zh_new')->count();
    

      $page = $new ->render();
       //$page_list = Db::table('zh_new')->paginate(10);
       //dump($page_list);
        $this->assign("new",$new);
         $this->assign("page_count",$count);
        $this->assign("page",$page);
       return $this->fetch('index/newedti');
   }
   public function adveredti()
   {   
       $adver_list = Db::table('zh_advertise')->order('id desc')-> select();

      if (empty($adver_list)) {
     $adver_list[]=null;
        # code...
      }
        $this->assign('adver_list',$adver_list);
      return $this ->fetch('index/adveredti');
   }
   public function picedti()
   {  $homeimg = Db::table('zh_img')->where(['type'=>'主页轮播图'])->select();
     
      $img = Db::table('zh_img')->where('type', '<>' ,'主页轮播图')->select();
     $this->assign('img',$img);

     $this->assign('homeimgurl',$homeimg);
     return $this ->fetch('index/picedti');
   }
   //.........................................
   public function casesearch()
   {
   $casename = $_POST['casename'];
   $type_list = Db::table('zh_type')->select();
   $case_list = Db::table('zh_case')->where(['casename'=>$casename] )->paginate(30);

    $page = $case_list->render();
    $this->assign('type_list', $type_list);
    $this->assign('page', $page);
    $this->assign("case_list",$case_list);
     return $this ->fetch('index/search');
   }//...........................................
   public function introduction()
   {
    $adver_introd = Db::table('zh_text')->where(['forwhat'=>'企业招聘'])->column("text");
    $company_introd = Db::table('zh_text')->where(['forwhat'=>'公司简介'])->column("text");
  
    $this->assign("adver_introd",$adver_introd[0]);
    $this->assign("company_introd",$company_introd[0]);
    return $this ->fetch('index/introduction');
   }
     public function introdedit()
   {
    $this->assign("name",$_GET['id']);
    return $this ->fetch('index/introdedit');
   }
    public function out()
   {
   Session::clear();
   $this->error('请先登陆','../../adminlogin/login/index');
   }
   public function adminuser()
   {
      $res = Db::table('zh_adminuser')->select();
      $this->assign('user_list',$res);
     return $this ->fetch('index/adminuser');
   }
   public function addcase()
   {
  $type_list = Db::table('zh_type')->select();
   $count = Db::table('zh_case')->count();
         // 获取分页显示
   $case_list = Db::table('zh_case')->paginate(20);

       //  $list = User::where('status',1)->paginate(10,1000);
    // 获取分页显示
    $page = $case_list->render();
    $this->assign('type_list', $type_list);
    $this->assign('page_count', $count);
    $this->assign('page', $page);
    $this->assign("case_list",$case_list);
     return $this ->fetch('index/addcase');
   }
       public function t()
   {
      
     return $this ->fetch('index/t');
   }   
   public function imgup()
   {
    return $this ->fetch('index/imgup');
   }   
  public function imgedti()
   { 
    $imginfo = Db::table('zh_img')->where(['id'=>$_GET['id']])->select();
    $this->assign('imginfo',$imginfo);
    return $this ->fetch('index/imgedti');
   } 
}