<?php
declare(strict_types=1);

use PHPUnit\Framework\TestCase;
require_once '../apino.php';

final class ApinoTest extends TestCase
{
    public function testSimpleResolver():void{
        $apinoSql = new ApinoSql('tp_user','selectListByUser_id', ['user_id' => 1]);
        $this->assertEquals(
            "SELECT * FROM `tp_user` WHERE 1=1 AND `user_id` = '1'",
            $apinoSql->sql()
        );
    }

}