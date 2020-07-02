<?require_once 'apino.php'?>
<?
if(User::isLogin()){
    header('Location:index.php');
    die();
}
Embed::post('/user/login', function ($success, $result){
    if($success){
        header('Location:index.php');
        die();
    } else {
        Embed::alert($result);
    }
});
?>
<!DOCTYPE html>
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
    <form name="form1" id="form1" method="post" action="login.php">
        <p><input type="text" class="pf_ipt_user" placeholder="请输入登录账号" autocomplete="off" name="name" id="_username" tabindex="1"/></p>
        <p><input type="password" class="pf_ipt_pass pass_bg_1" placeholder="请输入密码" autocomplete="off" name="pass" id="_password" tabindex="2"/></p>
        <p>
            <span>
            <input type="text" name="code" id="code" class="pf_ipt_verify w230"  placeholder="验证码" autocomplete="off" tabindex="3"/>
            <img src="<?=Embed::ref('getCode')?>" style="cursor:hand">
            </span>
        </p>
 <p>
            <button  class="btn_1 w430">登录</button>
        </p>
        <p><a href="register.php">账号注册</a></p>
    </form>
</div>
</body>
</html>
