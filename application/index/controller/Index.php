<?php
namespace app\index\controller;
 use think\Controller;
 use think\Db;

class Index extends Controller
{
      public function _initialize()//该控制器下的公共方法,赋值给公用模板
    {  
       $msg = Db::table('zh_us')->select();
      // dump($msg);

       $this->assign('msg',$msg);

       
    } 
    public function index()
    {    
        $new = Db::table('zh_new')->order('id desc')->select();
        $img = Db::table('zh_img')->where(['type'=>'主页轮播图'])->select();
         $img1 = Db::table('zh_img')->where(['type'=>'主页-服务理念'])->select();
          $img2 = Db::table('zh_img')->where(['type'=>'主页-招聘信息'])->select();
           $img3 = Db::table('zh_img')->where(['type'=>'主页-家政服务'])->select();
        
        $this->assign('img1',$img1);
         $this->assign('img2',$img2);
          $this->assign('img3',$img3);
           $this->assign('img',$img);
    
        $case_sucesse_list = Db::table('zh_case')->where(['sucesse'=>'是'])->select();

        $this->assign("case_sucesse_list",$case_sucesse_list);
            $this->assign("new",$new);
       
        return $this->fetch('index/home');
    }
     public function companyinfo()
    {    
        $img = Db::table('zh_img')->where(['type'=>'公司简介top图'])->select();
         $this->assign('img',$img);
           $companyinfo = Db::table('zh_text')->where(['forwhat'=>'公司简介'])-> column('text');
       $companyinfo = $companyinfo[0];
       $this->assign('companyinfo',$companyinfo);
       return $this->fetch('index/companyinfo');
    }

     public function advertise()
    {   $img = Db::table('zh_img')->where(['type'=>'企业招聘top图'])->select();
         $this->assign('img',$img);
        $adver_list = Db::table('zh_advertise')->order('id desc')-> select();
        $adverinfo = Db::table('zh_text')->where(['forwhat'=>'企业招聘'])-> column('text');
       $adverinfo = $adverinfo[0];
       $this->assign('adverinfo',$adverinfo);
       // dump($advermsg);
        $this->assign('adver_list',$adver_list);
        return $this->fetch('index/advertise');
    }

 
      public function sucessecase()
    {   $img = Db::table('zh_img')->where(['type'=>'成功案例top图'])->select();
         $this->assign('img',$img);
        $case_sucesse_list = Db::table('zh_case')->where(['sucesse'=>'是'])->paginate(8);
        $count = Db::table('zh_case')->where(['sucesse'=>'是'])->count();  
         $page = $case_sucesse_list->render();
        // dump($case_sucesse_list);
        // dump($page);
        $this->assign("page",$page);
        $this->assign("count",$count);
        $this->assign("case_sucesse_list",$case_sucesse_list);
        return $this->fetch('index/sucessecase');
    }
      public function us()
    {
        $us = Db::table('zh_us')->select();
        $qq = $us[0]['qq'];
        $tell = $us[0]['tell'];
        $address = $us[0]['address'];
        $mail = $us[0]['mail'];
        $this->assign('qq',$qq);
        $this->assign('mail',$mail);
        $this->assign('tell',$tell);
        $this->assign('address',$address);
        return $this->fetch('index/us');
    }
        public function companynew()
    {   $img = Db::table('zh_img')->where(['type'=>'企业新闻top图'])->select();
         $this->assign('img',$img);
        $count = Db::table('zh_new')->count();    
         $new = Db::table('zh_new')->order('id desc')->where(1)->paginate(10);
         $page = $new ->render();
        $this->assign("new",$new);
        $this->assign("count",$count);

        $this->assign("page",$page);
        return $this->fetch('index/companynew');
    }

    public function companynewpage()
    {    $img = Db::table('zh_img')->where(['type'=>'企业新闻top图'])->select();
         $this->assign('img',$img);
         $new = Db::table('zh_new')->where(['id'=>$_GET['id']])->select();
         $this->assign('new',$new);
        return $this->fetch('index/companynewpage');
    }

    public function service()
   {     $img = Db::table('zh_img')->where(['type'=>'服务项目top图'])->select();
         $this->assign('img',$img);
      $type_list = Db::table('zh_type')->column('typename');
      for ($i=0; $i < sizeof($type_list); $i++) { 
      $case_list[$i] = Db::table('zh_case')->where(['type'=>$type_list[$i]])->select();
    //$this->assign( $type[$i],$case_list[$type_list[$i]] );
//       dump($case_list[$type_list[$i]] ) ;
   }//构造以服务分类的项目二维数组
   // dump($type_list['1']);

        $this->assign("case_list",$case_list);
        $this->assign("type_list",$type_list);
        return $this->fetch('index/service');

    }
    public function casepage()
    { 
         $res = Db::table('zh_case')->where(['id'=>$_GET['id']])->select();

         $this->assign('casepage',$res);
        return $this->fetch('index/casepage');

    }
    public function nextpage()//下一页
    {  $id = $_GET['id'];
      $res = Db::table('zh_new')->where(['id'=>$id])->select();
      while (empty($res)) {
        $id++;
          $res = Db::table('zh_new')->where(['id'=>$id])->select();
 }
      dump($res);
    }

}
