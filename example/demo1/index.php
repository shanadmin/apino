<?require_once 'apino.php'?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>虹星教育培训中心</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
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
                    <?require_once "user.php"?>
                </div>
            </div>
			<div class="clear"></div>
<!--中间-->
			<div class="center">
				<!--中间--第一部分-->
				<div class="content">
				<div class="center_1"></div>
				</div>
				<!--中间--第二部分-->
				<div class="center_2">
					<div class="center_2_1"><p>机构简介</p></div>
					<div class="center_2_2">
							<div class="jg_1"><img src="img/tup_2.png"></div>
							<div class="jg_2">虹星教育中心于2010年原双虹小学在职退休教师创办至今，是距离双虹小学最近的一所教育中心，仅仅一墙之隔
							，拥有小学教学经验丰富的师资，是一所专业的教育机构。虹星教育中心于2010年原双虹小学在职退休教师创办至今，是距离双虹小学最近的一所教育中心，仅仅一墙之隔
							，拥有小学教学经验丰富的师资，是一所专业的教育机构。<br>
							<p ><img src="img/tup_jiaoshi1.png">教师:<?=Embed::apino('/teacher/selectCount') ?>名 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="img/tup_xuesheng.png">学生：<?=Embed::apino('/student/selectCount') ?>名</p>
							</div>
						
					</div>
				</div>
				<br/><br/><br/><br/>
				<!--中间--第三部分
				<div class="center_3">
					<div class="center_3_1">
						<p>课程介绍</p>
					</div>
					<div class="center_3_2">
						<ul>
							<li><a href="#">毛笔</a></li>
							<li><a href="#">毛笔</a></li>
							<li><a href="#">毛笔</a></li>
							<a href="#"><img src="./img/tu_gduo.gif"></a>
						</ul>
					</div>
				</div>
				<!--中间--第四部分-->
				<!--中间--第五部分-->
			<div class="center_2">
				<div class="center_2_1"><p>新闻资讯</p></div>
					<div class="center_2_2">
						<div class="jg_1"><img src="img/tup_2.png"></div>
						<div class="jg_3">
							<ul >
                                <? array_map(function ($value){ ?>
                                    <li>
                                        <a target="_blank" href="<?=$value['content']?>">
                                            <?=$value['title']?>
                                        </a>
                                        <span>&nbsp;&nbsp;&nbsp;<?=date("Y-m-d", $value['ctime'])?></span>
                                    </li>
                                <? }, Embed::apino('/news/selectList')); ?>
							</ul>
						</div>
					</div>
			</div>				
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
							<p>严老师：XXXX</p>
							<p>陈老师：XXXX</p>
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

