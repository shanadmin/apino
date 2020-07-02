<!DOCTYPE html>
<? require_once 'apino.php';?>
<html>
	<head>
		<meta charset="utf-8">
		<title>商家招盟</title>
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
                    <?REQ("user.php");?>
                </div>
            </div>
        </div>
		</div>
		<div class="clear"></div>
		<!--中间-->
		<div class="sj_1">
			<div class="sj_1_img"></div>
		</div>
		<div class="sj_2">
			<div class="sj_2_top">
				<p class="sj_one">虹星教育中心（HONG XING）</p>
				<p class="sj_two">是专业从事少儿艺术教育及课程开设的艺术培训机构</p>
				<p class="sj_three">教学理念起源于2009年</p>
				<p class="sj_four">以“育人成才--给每个孩子美好未来”为核心宗旨，以“真心、专心、用心”为教学理念让每个孩子、每位学子都能取得满意成绩</p>
			</div>
			<div class="sj_2_botton">
				<img src="img/tup_11.png" />
			</div>
		</div>
		<div class="sj_3">
			<div class="sj_3_top">
				<img src="img/tu_sj_1.png" />
			</div>
			<div class="sj_3_botton">
				<div class="sj_five">
					<p>据数据显示:</p>
					<p>2015年我国教育培训行业的市场规模达到1.66万亿元，教育培训行业成为21世纪的朝阳产业。
						在行业规模不断扩大，行业痛点突出，竞争加剧的市场淘汰机制下，
						单一模式的教培行业开始从可拓展式教育平台向教育综合体过渡，
						以“教育+”的综合体模式来解决传统教育流量不足的问题，
						同时通过资源整合来推动教育行业的升级与革新。</p>
						
				</div>
				<div class="sj_six"></div>
			</div>
		</div>
		
		<div class="sj_4">
			<div class="sj_3_top"><img src="img/tup_sj_2.png"></div>
			<div class="sj_4_botton">
				<div class="sj_a">
					<div class="sj_4_1">iiii</div>
					<div class="sj_4_2">iii</div>
					<div class="sj_4_3">iii</div>
				</div>
				<div>
					<div class="sj_4_4">iii</div>
					<div class="sj_4_5">yyy</div>
					<div class="sj_4_6">yyy</div>
				</div>
			</div>
		</div>
		<div class="sj_5">
			<div class="sj_3_top"><img src="img/tup_sj_3.png"></div>
			<P>如有兴趣，请拨打下面电话</P>
			<p>123456789</p>
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
