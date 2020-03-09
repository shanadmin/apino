<?php
/**
 * @version     V1.0.0
 * @author     : qiuminmin
 * @date       : 15:52 2020/3/5
 * @controller 控制器强制为小驼峰
 * @action     事件名强制为小驼峰
 * @args       传参名称与表中名称一直（也可自定义参数名转换器）， 优先级为 json > post > get
 * @url        URL格式为 [/apino.php]/{controller}/{action}?arg1Name=arg1Value&arg2Name=arg2Value...
 */
//数据库支持类型
define("MYSQL", "mysql");

$config = [
    "database" => [
        "type" => MYSQL,
        "host" => "localhost",
        "port" => "3306",
        "dbname" => "test",
        "username" => "root",
        "password" => "root",
        "tableNamePrefix" => "",
        "charset" => "utf-8",
        //是否允许删除真实数据
        "canTrueDelete" => false,
    ],
    "action" => [
        //插入自动补全无值参数，防止插入失败，开启每次插入将多查询一次表结构
        "auto_complete_insert" => false,
        //数据库操作名称（action事件名第一个单词必须是这四个之中）
        "name" => [
            "insert" => "insert",
            "update" => "update",
            "delete" => "delete",
            "select" => "select",
        ],
        "page" => [
            "page" => "page",   //入参页数
            "size" => "size",   //入参数量
            "total" => "total", //返回总记录数参数名
            "start" => 1, //起始页数
        ]
    ],
    "welcome_file" => null,//欢迎页面
];
//配置
define("CONFIG", json_encode($config));

/**
 * 获取配置
 *
 * @param      $configName
 * @param null $scope
 *
 * @return array|mixed
 */
function config($name)
{
    $config = json_decode(CONFIG, true);
    $idxs = explode(".", $name);
    foreach ($idxs as $idx) {
        $config = $config[$idx];
    }
    return $config;
}


//关闭严格模式
ini_set("display_errors", 0);

//定义全局常量
define("FILENAME", array_pop(explode("/", __FILE__)));

//目录
define("ROOT", __DIR__);
//事件常量
define("SELECT", config("action.name.select"));
define("UPDATE", config("action.name.update"));
define("DELETE", config("action.name.delete"));
define("INSERT", config("action.name.insert"));
//事件具体类型

//*默认支持操作模式(不支持删除表以及操作数据库SQL语句)
/**
 * 操作的值根据分数进行计算
 * insert|delete|update|select 10000|20000|30000|40000分
 * all|list|page 1000|2000|3000分
 * by|only 100|200 分
 *
 */
define("ACTION_NAME_GRADE_ARRAY", json_encode([
    INSERT => 10000,
    DELETE => 20000,
    UPDATE => 30000,
    SELECT => 40000,
    "all" => 1000,
    "list" => 2000,
    "page" => 3000,
    "by" => 100,
    "only" => 200,
]));
define("ACTION_NAME_INSERT", 10000);
define("ACTION_NAME_DELETE_BY", 20100);
define("ACTION_NAME_DELETE", 20000);
define("ACTION_NAME_UPDATE_BY", 30100);
define("ACTION_NAME_SELECT_BY", 40100);
define("ACTION_NAME_SELECT_ONLY", 40200);
define("ACTION_NAME_SELECT_ONLY_BY", 40300);
define("ACTION_NAME_SELECT_ALL", 41000);
define("ACTION_NAME_SELECT_LIST", 42000);
define("ACTION_NAME_SELECT_LIST_BY", 42100);
define("ACTION_NAME_SELECT_LIST_ONLY", 42200);
define("ACTION_NAME_SELECT_LIST_ONLY_BY", 42300);
define("ACTION_NAME_SELECT_PAGE", 43000);
define("ACTION_NAME_SELECT_PAGE_ONLY", 43200);
define("ACTION_NAME_SELECT_PAGE_BY", 43100);
define("ACTION_NAME_SELECT_PAGE_ONLY_BY", 43300);


//开始解析

//开始路由解析

$url = ext_function("url_encoder", $_SERVER['REQUEST_URI']);

//URL拆分
$urlArray = explode("/", isset($url) ? $url : $_SERVER['REQUEST_URI']);

$index = 0;
foreach ($urlArray as $k => $v) {
    if ($v == "") {
        $index = $k;
    } else {
        break;
    }
}
$urlArray = array_slice($urlArray, $index + 1);

if (count($urlArray) > 0) {
    //删除文件名前缀
    if (stristr($urlArray[0], ".php")) {
        //删除apino.php
        array_shift($urlArray);
    }
}

//欢迎页面信息
if (count($urlArray) == 0) {

    if (config("welcome_file") != null) {
        header("Location: " . config("welcome_file"));
    }
    die("你好，这里是apino框架，将apino放置web根目录配置数据库信息后即可使用，可进行自定义拓展，拓展资料请访问apino.minqcloud.com");
}

if (count($urlArray) < 2) {
    return_ajax([], "无法正常解析URL，检测URL格式是否正确，是否忘记对url进行解码");
}


//拿到控制器名（数据表名）
$controller = array_shift($urlArray);

//如果没有控制器则直接返回404状态
if ($controller == "") {
    return_ajax([], "控制器名称不符合规范");
}

//拿到表操作事件名
$data = array_shift($urlArray);
$gets = [];
//过滤URL中GET信息
if (strpos($data, "?")) {
    $action = substr($data, 0, strpos($data, "?"));
    $data = substr($data, strpos($data, "?") + 1);
    foreach (explode("&", $data) as $item) {
        list($key, $value) = explode("=", $item);
        $gets[$key] = $value;
    }
} else {
    $action = $data;
}

//入参参数优先级 json > post > get
$args = json_decode(file_get_contents("php://input"), true);
$args = isset($args) ? $args : [];
unset($_GET['_url']);
$args = array_merge($_GET, $gets, $_POST, $args);
//路由结束

//定义操作表名常量TABLE_NAME
define("TABLE_NAME", get_split_underline($controller));

//拓展，拦截器
ext_function("interceptor", $controller, $action, $args);

//拓展，入参校验器
ext_function("arg_validator", $args);

//拓展，入参补充器
$new_args = ext_function("request_arg_handler", $args);
$args = isset($new_args) ? $new_args : $args;

//定义当前的action, 第一个单词为事件类型（增删改查）
define("CURRENT_ACTION_MODE", get_first_word($action));
//获取当前操作模式
define("CURRENT_ACTION_NAME", $action);
define("CURRENT_ACTION_CODE", get_action_code($action));
define("CURRENT_ACTION_ONLY_ARRAY",
    json_encode(get_action_only_fields($action)));
define("CURRENT_ACTION_BY_ARRAY", json_encode(get_action_by_wheres($action)));

//获取需要执行的sql
$sql = get_sql($args);

//执行sql拿到结果(array)
$res = pdo_exec($sql);

//拓展，出参补充器
$new_res = ext_function("response_arg_handler", $res);
$res = isset($new_res) ? $new_res : $res;


//默认直接返回信息无包装
return_ajax($res);


/**
 * 小驼峰转下划线
 *
 * @param $str
 *
 * @return string
 * @author : qiuminmin
 * @date   : 21:40 2020/3/6
 */
function get_split_underline($str)
{
    $dstr = preg_replace_callback('/([A-Z]+)/', function ($matchs) {
        return '_' . strtolower($matchs[0]);
    }, $str);
    return trim(preg_replace('/_{2,}/', '_', $dstr), '_');
}

/**
 * 小驼峰字符串拆分多个单词
 *
 * @param $str
 *
 * @return array
 * @author : qiuminmin
 * @date   : 9:46 2020/3/7
 */
function split_word($str)
{
    $dstr = preg_replace_callback('/([A-Z]+)/', function ($matchs) {
        return '#' . strtolower($matchs[0]);
    }, $str);
    $str = trim(preg_replace('/#{2,}/', '#', $dstr), '#');
    return explode("#", $str);
}

/**
 * 拿到小驼峰的第一个单词
 *
 * @param $str
 *
 * @author : qiuminmin
 * @date   : 23:19 2020/3/6
 */
function get_first_word($str)
{
    $word = "";
    for ($i = 0; $i < strlen($str); $i++) {
        $char = substr($str, $i, 1);
        $ord = ord($char);
        //碰到非小写字母直接直接循环
        if ($ord >= 97 and $ord <= 122) {
            $word .= $char;
        } else {
            break;
        }
    }
    return $word;
}

/**
 * 执行事件
 *
 * @param $action
 *
 * @author : qiuminmin
 * @date   : 21:46 2020/3/6
 */
function get_sql($args)
{
    switch (CURRENT_ACTION_MODE) {
        case SELECT:
            return get_select_sql($args);
        case UPDATE:
            return get_update_sql($args);
        case INSERT:
            return get_insert_sql($args);
        case DELETE:
            return get_delete_sql($args);
        default:
            return_ajax([], sprintf("事件异常，当前事件类型为%s，具体事件名为%s：",
                CURRENT_ACTION_MODE, CURRENT_ACTION_NAME
            ));
    }
    return_ajax([], "系统异常，无法生成对应的SQL语句");
    die();
}

/**
 * sql执行器（pdo）
 * @param $sql string
 * @return array
 * @return array|int
 * @author : qiuminmin
 * @date   : 23:38 2020/3/6
 */
function pdo_exec($sql)
{
    try {
        $url = sprintf(
            "%s:host=%s;port=%s;dbname=%s",
            config("database.type"),
            config("database.host"),
            config("database.port"),
            config("database.dbname")
        );
        $pdo = new PDO(
            $url,
            config("database.username"),
            config("database.password")
        );
        $pdo->exec(sprintf("set names %s", config("database.charset")));
    } catch (Exception $e) {
        return_ajax([], "数据库连接失败");
    }
    try {
        $pdo::ATTR_PERSISTENT;
        $result = $pdo->prepare($sql);
        $result->execute();
        $errorInfo = $result->errorInfo();
        if ($errorInfo[2] != null) {
            $pdo = null;
            return_ajax([],
                sprintf("当前SQL为`%s`, 数据库返回错误信息为%s", $result->queryString,
                    $errorInfo[2]));
        }
        if (in_array(CURRENT_ACTION_MODE, [DELETE, UPDATE, INSERT])) {
            $res = $result->rowCount();
        } else {
            $res = $result->fetchAll(PDO::FETCH_ASSOC);
        }
    } catch (Exception $e) {
        if (isset($pdo)) {
            $pdo->rollBack();
            $pdo = null;
        }
        return_ajax([], $e->getMessage());
    }
    $pdo = null;
    return $res;
}

/**
 * 拓展器
 * @param       $file_function_name
 * @param       $return bool
 * @param mixed ...$obj
 * @author : qiuminmin
 * @date   : 23:38 2020/3/6
 */
function ext_function($file_function_name, ...$objs)
{
    if (file_exists(ROOT . "/$file_function_name.php")) {
        require_once ROOT . "/$file_function_name.php";
        if (function_exists($file_function_name)) {
            $args = "";
            foreach ($objs as $k => $obj) {
                $args .= empty($args) ? "" : ",";
                $args = sprintf($args . '$objs[%s]', $k);
            }

            $event = sprintf('$res = %s(%s);', $file_function_name, $args);

            eval($event);
            return isset($res) ? $res : null;
        }
        return null;
    }
    return null;
}

/**
 * 返回值包装器
 * @param array  $data
 * @param string $msg
 * @author : qiuminmin
 * @date   : 9:50 2020/3/7
 */
function return_ajax($data = [], $msg = "", ...$objs)
{
    //拓展, 返回格式包装器
    ext_function("response_arg_package",
        array_merge(["data" => $data, "msg" => $msg], $objs));

    die(json_encode(array_merge([
        "data" => $data,
        "msg" => $msg,
    ], $objs)));
}

/**
 * 拿到action中的only字段集合
 * @param $action
 * @author : qiuminmin
 * @date   : 10:03 2020/3/7
 */
function get_action_only_fields($action)
{
    $only_fields = [];
    $data_array = split_word($action);
    $is_only = false;

    //拿到不包含only的关键字数组，用于判断终止循环的条件
    $grade_array = json_decode(ACTION_NAME_GRADE_ARRAY, true);
    unset($grade_array["only"]);
    $keyword_array = array_keys($grade_array);

    foreach ($data_array as $data) {
        if (in_array($data, $keyword_array) && $is_only) {
            break;
        }

        if ($data == "only") {
            $is_only = true;
            continue;
        }

        if ($is_only) {
            array_push($only_fields, $data);
        }
    }
    return $only_fields;
}

/**
 * 拿到action中的where字段集合
 * @param $action
 * @author : qiuminmin
 * @date   : 10:03 2020/3/7
 */
function get_action_by_wheres($action)
{
    $by_wheres = [];
    $data_array = split_word($action);
    $is_by = false;

    //拿到不包含only的关键字数组，用于判断终止循环的条件
    $grade_array = json_decode(ACTION_NAME_GRADE_ARRAY, true);
    unset($grade_array["by"]);
    $keyword_array = array_keys($grade_array);

    foreach ($data_array as $data) {
        if (in_array($data, $keyword_array) && $is_by) {
            break;
        }

        if ($data == "by") {
            $is_by = true;
            continue;
        }

        if ($is_by) {
            array_push($by_wheres, $data);
        }
    }
    return $by_wheres;
}

function get_action_code($action)
{
    /**
     * 操作的值根据分数进行计算
     * insert|delete|update|select 10000|20000|30000|40000分
     * all|list|page 1000|2000|3000分
     * by|only 100|200 分
     *
     */
    //将小驼峰转成多个单词
    $data_array = split_word($action);
    $grade_array = json_decode(ACTION_NAME_GRADE_ARRAY, true);
    $current_grade = 0;
    foreach ($data_array as $data) {
        if (in_array($data, array_keys($grade_array))) {
            $current_grade += $grade_array[$data];
        }
    }
    return $current_grade;
}

function get_select_sql($args)
{
    $sql = sprintf(/** @lang text */ "SELECT #{fields} FROM %s ", TABLE_NAME);

    $hundred = intval(CURRENT_ACTION_CODE / 100) % 10;
    $thousand = intval(CURRENT_ACTION_CODE / 1000) % 10;

    if (CURRENT_ACTION_CODE >= 43000) {
        $page = config('action.page.page');
        if (!isset($args[$page])) {
            return_ajax([], "入参缺少$page");
        }

        $size = config('action.page.size');
        if (!isset($args[$size])) {
            return_ajax([], "入参缺少$size");
        }
        $page = $args[$page] - config("action.page.start");
        if ($page < 0) {
            return_ajax([],
                "page参数必须大于等于配置中start参数设定的" . config("action.page.start"));
        }

        $size = $args[$size];
        unset($args[config('action.page.page')], $args[config('action.page.size')]);

    }


    $fields_sql = "";
    $only_array = json_decode(CURRENT_ACTION_ONLY_ARRAY, true);
    foreach ($only_array as $v) {
        $fields_sql .= empty($fields_sql) ? "" : ",";
        $fields_sql .= " $v";
    }
    $fields_sql = empty($fields_sql) ? "*" : $fields_sql;

    $where_sql = "";
    $by_array = json_decode(CURRENT_ACTION_BY_ARRAY, true);
    $by_array = count($by_array) == 0 && in_array($hundred, [0, 2])
        ? array_keys($args) : $by_array;
    foreach ($by_array as $v) {
        $where_sql .= empty($where_sql) ? "" : " AND ";
        if (!isset($args[$v])) {
            return_ajax([], "入参缺少$v");
        }
        $where_sql .= "$v = " . $args[$v];
    }

    $sql = str_replace("#{fields}", $fields_sql, $sql);
    if (!empty($where_sql)) {
        $sql = sprintf($sql . " WHERE %s ", $where_sql);
    }

    if ($thousand == 0) {//one
        $sql .= " LIMIT 1";
    } elseif ($thousand == 3) {//page
        $sql .= " LIMIT {$page},{$size}";
    }

    return $sql;
}

function get_update_sql($args)
{
    $sql = sprintf("UPDATE %s ", TABLE_NAME);
    $set = [];
    $where = [];
    switch (CURRENT_ACTION_CODE) {
        case ACTION_NAME_UPDATE_BY:
            $by_wheres = json_decode(CURRENT_ACTION_BY_ARRAY, true);
            foreach ($args as $k => $v) {
                if (in_array($k, $by_wheres)) {
                    $where[$k] = $v;
                } else {
                    $set[$k] = $v;
                }
            }
            break;
        default:
            return_ajax([], "不支持该事件：" . CURRENT_ACTION_NAME);
    }
    foreach ($by_wheres as $by_where) {
        if (!isset($where[$by_where])) {
            return_ajax([], "入参缺少：" . $by_where);
        }
    }

    $set_sql = "";
    foreach ($set as $k => $v) {
        $set_sql .= empty($set_sql) ? "" : ",";
        $set_sql .= " $k = $v";
    }
    $sql = sprintf($sql . " SET %s", $set_sql);

    $where_sql = "";
    foreach ($where as $k => $v) {
        $where_sql .= empty($where_sql) ? "" : " AND ";
        $where_sql .= " $k = $v";
    }
    $sql = sprintf($sql . " WHERE %s", $where_sql);
    return $sql;
}

function get_delete_sql($args)
{
    if(!config("database.canTrueDelete")){
        return_ajax([],"无法进行真删除，请在配置允许使用真删除");
    }
    $sql = sprintf(/** @lang text */ "DELETE FROM %s", TABLE_NAME);
    $where_args = [];
    switch (CURRENT_ACTION_CODE) {
        case ACTION_NAME_DELETE :
            $where_args = $args;
            break;
        case ACTION_NAME_DELETE_BY:
            $by_wheres = json_decode(CURRENT_ACTION_BY_ARRAY, true);
            foreach ($by_wheres as $by_where) {
                $where_args[$by_where] = $args[$by_where];
            }
            break;
        default:
            return_ajax([], "不支持该事件：" . CURRENT_ACTION_NAME);
    }
    $where = "";
    foreach ($where_args as $k => $v) {
        $where .= empty($where) ? "" : " AND ";
        if ($v == null) {
            return_ajax([], "入参缺少：" . $k);
        }
        $where .= " $k = $v ";
    }
    $sql = sprintf($sql . " WHERE %s", $where);
    return $sql;
}

function get_insert_sql($args)
{
    if (CURRENT_ACTION_CODE != ACTION_NAME_INSERT) {
        return_ajax([], "不支持该事件：" . CURRENT_ACTION_NAME);
    }

    $fields = "";
    $values = "";
    foreach ($args as $k => $v) {
        $fields .= empty($fields) ? "" : ",";
        $fields .= $k;
        $values .= empty($values) ? "" : ",";
        $values .= $v;
    }
    return sprintf(
    /** @lang text */ "INSERT INTO %s(%s) values(%s)",
        TABLE_NAME,
        $fields,
        $values
    );
}