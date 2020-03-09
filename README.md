###########当前版本v1.0

###########框架宗旨  
*以最少的代码实现最好的功能  


###########目录结构描述
>  apino.php    #唯一入口

###########V1.0.0 版本内容
1.不在需要创建API方法，遵循规范自动创建你想要的API方法  
2.提供更多拓展功能(请查看相应文件)
> url_encoder.php, URL解码器（在路由解析之前对URL进行自定义解码）  
> interceptor.php, 全局拦截器(在控制器之前进行拦截)  
> request_arg_validator.php, 入参校验器（进行参数校验防止使用异常参数）
> request_arg_handler.php, 入参处理器（对入参进行自定义处理）
> response_arg_handler.php, 出参处理器（对出参进行自定义处理）
> response_arg_package.php, 出参包装器（对出参进行自定义包装）

  
###########温馨提示  
建议使用php7版本,请勿使用php5运行项目，避免出现无法运行等问题;