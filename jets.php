<?php
/**
 * @author : qiuminmin
 * @date   : 12:36 2020/3/7
 */


$headers = [
    'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36',
];

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://idea.medeming.com/jets/images/jihuoma.txt");
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 跳过证书检查
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);  // 从证书中/检查SSL加密算法是否存在
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch, CURLOPT_ENCODING, 1);
curl_setopt($ch, CURLOPT_TIMEOUT, 5000); //执行超时秒
curl_setopt($ch,CURLOPT_HTTPHEADER, $headers);
die(curl_exec($ch));
