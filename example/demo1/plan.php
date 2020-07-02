<? require_once 'apino.php' ?>
<!DOCTYPE html>
<?
    Embed::post('/appiont/insert', function ($success, $result){
        if($success){
            Embed::alert('预约成功');
            Embed::locationHref('Curriculum.php');
        } else {
            Embed::alert($result);
        }
    });

    if(!User::isLogin()){
        http_redirect('login.php');
    }
?>
<html>
	<head>
		<meta charset="utf-8">
		<title>登录页面实例展示</title>
		<link rel="stylesheet" type="text/css" href="./css/login.css">
	</head>
<body>
<div class="img">
    <img src="./img/tup_1.png" >
</div>
<div class="mt70 w432 mar_auto re min_h400">
    <form name="plan" method="post" action="/plan.php">
        <p><input type="text" class="pf_ipt_user" placeholder="请输入手机号" autocomplete="off" name="mobile" id="telephone" /></p>
        <p><input type="text" class="pf_ipt_pass pass_bg_1" placeholder="请输入课程名" autocomplete="off" name="course" id="classname"/></p>
       <p><input type="text" class="pf_ipt_pass pass_bg_1" placeholder="请输入学生年龄" autocomplete="off" name="age" id="age"/></p>

 <p>
            <button  class="btn_1 w430">提交</button>
        </p>
        <p><a href="Curriculum.php">返回上一页</a></p>
    </form>
</div>
</body>
</html>