<?php
namespace app\admin\controller;
 use think\Controller;
 use think\Db;

class Datapost extends Controller
{
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
   	dump($date);
  
   	# code...
   } 	//  $res = Db::table('zh_case')->insertall($date);
   	  // dump($res);
   }
   public function newadd()
   {   
      $newcon = $_POST['newcon'];
      $newcon= substr($newcon,1,strlen($newcon)-2);
      $author = $_POST['author'];
      $sdate   = date("Y-m-d");
      $date=[
          'new' => $newcon,
          'author' =>$author,
          'date' =>$sdate
      ];

      $res = Db::table('zh_new')->insert($date);
     if ($res==0) {
         echo "0";
         # code...
      }
      else{echo "1";}
   }//...............newadd...end...................
   public function newdelect()
   {
    $id = $_POST['id'];
    //echo $id;
    // $res = Db::table('zh_new')->where(['id' =>$id])->delete();update
    $res = Db::table('zh_new')->where(['id' =>$id])->update(['new'=>'该新闻已被删除']);
     if ($res==1) {
        echo "删除成功";
     }
     else{echo "删除失败";}

   }//。。。。。。。。。。。。。newdelete。。。。。。。。。。。。。end。。。。。。。。。。。
      public function typedelect()
   {
    $typename = $_POST['typename'];
    //echo $id;
     $res = Db::table('zh_type')->where(['typename' =>$typename])->delete();
     if ($res==1) {
        echo "删除成功";
     }
     else{echo "删除失败";}

   }//。。。。。。。。。。。。。newdelete。。。。。。。。。。。。。end。。。。。。。。。。。
   public function adveradd()
   {
     //echo "string";
 $text = $_POST['text'];
$text = substr($text,1,strlen($text)-2);
       $date=[
          'postion' => $_POST['postion'],
          'text' =>$text
          ];
         // dump($date);
          $res = Db::table('zh_advertise')->insert($date);
          if ($res==1) {
            echo "1";
            # code...
          }
          else{echo "0";}
         
   }//。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。
      public function adverdelect()
   {
    $id = $_POST['id'];
    echo $id;
     $res = Db::table('zh_advertise')->where(['id' =>$id])->delete();
     if ($res==1) {
        echo "删除成功";
     }
     else{echo "删除失败";}

   }//。。。。。。。。。。。。。adverdelete。。。。。。。。。。。。。end。。。。。。。。。。。
     public function caseadd()
     {  


          $file = request()->file('img');
          $text = $_POST['text'];
            $text = substr($text,1,strlen($text)-2);
    
          $path = ROOT_PATH . 'public/uploads/';
          $info = $file->validate(['ext'=>'jpg,png'])->move($path);
        if($info){  
           $savepath = $info->getSaveName();
           $savepath=str_replace("\\", "/",  $savepath );
           $data=[
          'casename' => $_POST['casename'],
          'caseurl' => $text,
          'type' => $_POST['typename'],
          'imgpath' => 'uploads/'.$savepath,
          'sucesse' =>"否"
                 ];
                 $res = Db::table('zh_case')->insert($data);
            if ($res==1) {
              echo "1";
              # code...
            }else{echo "0";}
         //echo $info->getExtension()."<br>";
         //echo  'uploads/'.$savepath."<br>"; 
         //echo $info->getFilename()."<br>"; 
        }else{
        // 上传失败获取错误信息
        echo '0';
        }
     }
        
     
     //.............................................................
     public function casedelect()
   {
    $casename =$_POST['casename'];
    //更新后旧图片没删除
    $oldpath =  Db::table('zh_case')->where(['casename' =>$casename])->column('imgpath');
     $res = Db::table('zh_case')->where(['casename' =>$casename])->delete();
      
       unlink($oldpath[0]);
     if ($res==1) {
        echo "删除成功";
     }
     else{echo "删除失败";}

   }//.............................................................
        public function uerdelect()
   {
    $id =$_POST['id'];
    echo $id;
     $res = Db::table('zh_adminuser')->where(['id' =>$id])->delete();
     if ($res==1) {
        echo "删除成功";
     }
     else{echo "删除失败";}

   }//.............................................................
    public function setsucesse()//设置成功案例
    {
$casename = $_POST['casename'];
$res = Db::table('zh_case')->where(['casename' =>$casename])->column('sucesse');
  if ($res[0]=="是") {
    $success = "否";
  } else{ $success = "是";}
  $res = Db::table('zh_case')->where(['casename' =>$casename])-> update([
      'sucesse' => $success
      ]);
      if ($res==1) {
        echo "切换成功";
     }
     else{echo "切换失败";}
 
    }//..............................................

   public function typeadd()
   {
  $typename = $_POST['typename'];
    $date=[
     'typename' =>$typename
    ];
     $res = Db::table('zh_type')->insert($date);
          if ($res==1) {
            echo "添加成功！";
            # code...
          }
          else{echo "添加失败！";}

   }//。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。
      public function usuploads()
   {
      $vo  = $_POST['vo'];
      $type= $_POST['type'];

     $res = Db::table('zh_us')->where(['id'=>'1'])->update([
     $vo =>$type
      ]);
     if ($res==1) {
      echo "更新成功";
       # code...
     }else{echo "更新失败";}



   }//....................................................
   public function introdup()
   {
     //echo "string";
    $text =  $_POST['text']; 
    $forwhat =  $_POST['forwhat'];

     $text = substr($text,1,strlen($text)-2);
         //去掉首尾"
        $res = Db::table('zh_text')->where(['forwhat'=>$forwhat])->update([
     'text' =>$text 
      ]);
        echo $res;
   }
   public function useradd()
   {
   echo $_POST['user'];
   $check =Db::table('zh_adminuser')->where(['adminuser'=>$_POST['user']])->select();
   if (empty($check)) {
      $date=[
    'adminuser' =>$_POST['user'],
    'paw'   =>md5($_POST['paw']),
    'lasttime' =>date('Y-m-d'),
    'suser' =>'普通'

    ];
    $res =Db::table('zh_adminuser')->insert($date);
    if ($res=1) {
      echo "添加成功！";
      # code...
    }else{echo "添加失败";}
   }else{echo "添加失败！账户已经存在";}
    }//..............................................
    public function newpaw()
    {
      //echo $_POST['user'];
       //echo $_POST['newpaw'];
     $res =Db::table('zh_adminuser')->where(['adminuser'=>$_POST['user']])->update(['paw'=>md5($_POST['newpaw'])]);
 if ($res==1) {
  echo "重置成功，新密码：".$_POST['newpaw'];
   # code...
 }else{echo "重置无效";}


    }//..........................................
    public function picup1()
    {

        
          $file = request()->file('img');
          $path = ROOT_PATH . 'public/img/';
          $info = $file->validate(['ext'=>'jpg,png'])->move($path);

          if($info){  
           $savepath = $info->getSaveName();
           $savepath=str_replace("\\", "/",  $savepath );
           $data=[
          'type' => $_POST['type'],
          'imgpath' => 'img/'.$savepath,
          'url' =>$_POST['url']
    
                 ];
                 if ($_POST['type']!='主页轮播图') {
                   $res = Db::table('zh_img')->where(['type'=>$_POST['type']])->update($data);
                 }
                 else{$res = Db::table('zh_img')->insert($data);}
                 
                 if ($res!=0) {
                   # code...
                 }
                 else{
                  $res = Db::table('zh_img')->insert($data);
                }
                 if ($res!=0) {
                  echo "上传成功";
                   # code...
                 }
                 else{
                 echo "上传失败";
                }
                 //$this->success('上传成功','index/picedti',1);  
         //echo $info->getExtension()."<br>";
         //echo  'uploads/'.$savepath."<br>"; 
         //echo $info->getFilename()."<br>"; 

        }else{
        // 上传失败获取错误信息
      echo $file->getError();
        }
     
    }
    public function picdelect()
    {
   // $oldpath =  Db::table('zh_img')->where(['id'=>$_POST['id']])->column('imgpath');
      $res = Db::table('zh_img')->where(['id'=>$_POST['id']])->delete();
       

      echo $res;
    }
    public function userdelect()
    {
    $res = Db::table('zh_adminuser')->where(['id'=>$_POST['id']])->delete();
    if ($res==1) {
      echo "删除成功";
      # code...
    }

    }
    public function picup()
    {

          $file = request()->file('img');
          $path = ROOT_PATH . 'public/img/';
         $info = $file->validate(['ext'=>'jpg,png'])->move($path);
          $oldpath =  Db::table('zh_img')->where(['type'=>$_POST['type']])->find('imgpath');
       
          
          if($info){   

           $savepath = $info->getSaveName();
           $savepath=str_replace("\\", "/",  $savepath );
           $data=[
          'type' => $_POST['type'],
          'imgpath' => 'img/'.$savepath,
          'url' =>$_POST['url']
    
                 ];
                 if ($_POST['type']!='主页轮播图') { 
      
                   $res = Db::table('zh_img')->where(['type'=>$_POST['type']])->update($data);
                 }
                 else{$res = Db::table('zh_img')->insert($data);}
                 
                 if ($res!=0) {
                   # code...
                 }
                 else{   
                 
                  $res = Db::table('zh_img')->insert($data);
                }
                 if ($res!=0) {
                  echo "1";
                   # code...
                 }
                 else{
                 echo "0";
                }

        }
    }
     public function picedti()
    {

          $file = request()->file('img');
          $path = ROOT_PATH . 'public/img/';
          $info = $file->validate(['ext'=>'jpg,png'])->move($path);
          $oldpath =  Db::table('zh_img')->where(['id'=>$_POST['id']])->column('imgpath');      

         if($info){ 
           $res = unlink($oldpath[0]);
           $savepath = $info->getSaveName();
           $savepath=str_replace("\\", "/",  $savepath );
           $data=[
          'type' => $_POST['type'],
          'imgpath' => 'img/'.$savepath,
          'url' =>$_POST['url']
    
                 ];
                 if ($_POST['type']!='主页轮播图') {
                   $res = Db::table('zh_img')->where(['type'=>$_POST['type']])->update($data);
                 }
                 else{$res = Db::table('zh_img')->insert($data);}
                 
                 if ($res!=0) {
                   # code...
                 }
                 else{  
                 
                  $res = Db::table('zh_img')->where(['id'=>$_POST['id']])->update($data);
                }
                 if ($res!=0) {
                  echo "1";
                   # code...
                 }
                 else{
                 echo "0";
                }

        }
  
    }
}