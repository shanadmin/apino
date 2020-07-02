<? require_once 'apino.php' ?>
<!DOCTYPE html>
<?
    Embed::post('/user/insert', function ($success, $result){
        if($success){
            Embed::alert($result);
        }
    });
?>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册页面</title>
		<link rel="stylesheet" type="text/css" href="./css/login.css">
	</head>
	<body>
		<div class="img">
		    <img src="./img/tup_1.png" >
		</div>
		<div class="mt70 w432 mar_auto re min_h400">
		    <form name="form1" id="form1" method="post" action="register.php">
		        <p><input type="text" class="pf_ipt_user" placeholder="请输入账号" autocomplete="off" name="name" id="name" tabindex="1"/></p>
		        <p><input type="password" class="pf_ipt_pass pass_bg_1" placeholder="请输入密码" autocomplete="off" name="pass" id="_password" tabindex="2"/></p>
		        <p><input type="password" class="pf_ipt_pass pass_bg_1" placeholder="请再输入一次" autocomplete="off" name="pass1" id="_password1" tabindex="3"/></p>
		        <p><button type="submit" value="注册" class="btn_1 w430">注册</button></p>
                    <p><a href="index.php">返回首页</a></p>
		    </form>
		</div>
	</body>
</html>
