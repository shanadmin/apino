<!DOCTYPE html>
<? require_once 'apino.php' ?>
<html>
	<head>
		<meta charset="utf-8">
		<title>教师招聘</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css"/>
		<style type="text/css">
			.content{width: 1226px;margin: 0px auto;padding: 10px 0px;}
			.menu_1_1{background: yellowgreen}
		</style>
	</head>
	<body>
		<div class="box">
		<!--导航栏-->
            <div class="header">
                <div class="content">
                    <ul class="menu_1">
                        <li><a href="#" class="menu_1_1">网站首页</a> <span><font color="#F0F0F0">丨</font></span></li>
                        <li><a href="ourteams.php">师资力量</a> <span><font color="#F0F0F0">丨</font></span></li>
                        <li><a href="student.php">学生风采</a> <span><font color="#F0F0F0">丨</font></span></li>
                        <li><a href="Curriculum.php">课程介绍</a> <span><font color="#F0F0F0">丨</font></span></li>
                        <li><a href="#" >招商加盟</a> <span><font color="#F0F0F0">丨</font></span>
                            <ul class="two">
                                <li><a href="zhaop.php">教师招聘</a></li><br>
                                <li><a href="shangjia.php">商家招募</a></li>
                            </ul>
                        </li>
                        <li><a href="connect.php" >联系我们</a> <span><font color="#F0F0F0">丨</font></span></li>

                    </ul>
                    <? require_once "user.php";?>
                </div>
            </div>
        </div>
		</div>
		<div class="clear"></div>
		<div class="zp_im"><div class="zp_img"></div></div>
		<div class="zp">
			<p class="zp_1">人员招聘</p>
			<p class="zp_2">虹星教育中心是集托管、课辅、书法、舞蹈、绘画等为一体的高端综合教育培训学校。</p>
			
		</div>
		<div class="zp_ls">
            <? array_map(function ($value){ ?>
                <p class="zp_ls_1"><?=$value['title']?></p>
                <p class="zp_ls_2"><?=$value['content']?></p>
            <? }, Embed::apino('/job/selectList')) ?>
		</div>
		<div class="zp">
			<div class="zp_3"></div>
		</div>
		
		<!--底部-->
		<div class="footer">
			<div class="footer_top">
				<div class="footer_left">
					<div class="footer_left_1">
						<p><a href="#">网站首页</a></p>
						<p><a href="#">师资力量</a></p>
						<p><a href="#">学生风采</a></p>
						<p><a href="#">教师招聘</a></p>
						<p><a href="#">商家招盟</a></p>
					</div>
					<div class="footer_left_2">
						<p>严老师：XXXXXX</p>
						<p>陈老师：XXXXXX</p>
						<p>大同浦新村C#101</p>
					</div>
				</div>
				<div class="footer_right">
					<div class="footer_right_1">微信小程序</div>
					<img src="">
				</div>
			</div>
			<hr/>
			<div class="footer_bottom">Copyright &copy; XXXX</div>
		</div>		
	</body>
</html>
