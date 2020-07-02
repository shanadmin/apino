<ul class="menu_2">
    <? if(User::isLogin()){?>
        <li><?=Embed::apino('/front_user/selectOne', ['id' => User::id()])['name'] ?><span><font color="#F0F0F0">丨</font></span></li>
        <li><a href="/user/logout">注销</a></li>
    <? }else{ ?>
        <li><a href="login.php">登录</a> <span><font color="#F0F0F0">丨</font></span></li>
        <li><a href="register.php">注册</a></li>
    <? } ?>
</ul>