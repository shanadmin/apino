<?php
/** 单例模式 */
trait Singleton
{

    protected static $instance;

    /** 禁止new */
    protected function __construct()
    {
    }

    /** 禁止拷贝 */
    protected function __clone()
    {
        // TODO: Implement __clone() method.
    }

    /** 唯一创建对象方法 */
    public static function instance()
    {
        if (empty(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }

}

/** 工厂类*/
class Factory
{
    protected static $executor;

    /**
     * 获取执行器的实例
     * Created by PhpStorm.
     * @param PDO $pdo
     * @author QiuMinMin
     * Date: 2020/5/26 6:15
     */
    public static function getExecutor(PDO $pdo)
    {
        if (empty(self::$executor)) {
            self::$executor = new Executor($pdo);
        }
    }

}

class Executor
{

    /** pdo对象 */
    protected $pdo;

    protected $sql;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function query($sql)
    {
        $this->sql = $sql;
        try {
            $pdo = $this->pdo;
            $result = $pdo->prepare($this->sql);
            $result->execute();

            $errorInfo = $result->errorInfo();

            if ($errorInfo[2] != null) {
                error($errorInfo[2]);
            }

            $data = $result->fetchAll(PDO::FETCH_ASSOC);
            //查询只要第一行记录
            if (count($data) == 1) {
                if (isset($data[0]['count(*)'])) {
                    $data = intval($data[0]['count(*)']);
                } else {
                    $data = $data[0];
                }
            } else {
                if (runtime_config('select_count')) {
                    runtime_config('select_count', null);
                    $data = count($data) == 0 ? 0 : array_shift($data)['count(*)'];
                }
            }

            return $data;
        } catch (Exception $e) {
            error($e->getMessage());
            return false;
        }
    }

    public function update($sql)
    {
        $this->sql = $sql;
        try {
            $result = $this->pdo->prepare($this->sql);
            $result->execute();

            $errorInfo = $result->errorInfo();

            if ($errorInfo[2] != null) {
                error($errorInfo[2]);
            }
            return $result->rowCount();
        } catch (Exception $e) {
            error($e->getMessage());
            return false;
        }
    }

}

/**
 * 检查工具（开发者模式才会调用）
 * Class Inspection
 */
class Inspection
{
    /**
     * 执行自检系统
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:42
     */
    public static function run()
    {
        //如果未开启调试模式则不进行配置检查
        if (!config('config.debug')) {
            return;
        }

        self::config();
        self::route();
        self::authority();
        self::action();
        self::service();
        self::dao();
        self::api();
    }

    /**
     * 检测系统配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:42
     */
    public static function config()
    {
    }

    /**
     * 检测路由配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:42
     */
    public static function route()
    {
    }

    /**
     * 检测权限配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:43
     */
    public static function authority()
    {
    }

    /**
     * 检测控制器
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:43
     */
    public static function action()
    {
    }

    /**
     * 检测服务者配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:43
     */
    public static function service()
    {
    }

    /**
     * 检测持久化层配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:44
     */
    public static function dao()
    {
    }

    /**
     * 检测系统api配置
     * Created by PhpStorm.
     * @author QiuMinMin
     * Date: 2020/5/23 20:44
     */
    public static function api()
    {
    }
}