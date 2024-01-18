<?php

declare(strict_types=1);
/**
 * This file is part of Hyperf.
 *
 * @link     https://www.hyperf.io
 * @document https://hyperf.wiki
 * @contact  group@hyperf.io
 * @license  https://github.com/hyperf/hyperf/blob/master/LICENSE
 */

namespace App\Model;

/**
 * @property int $id
 * @property string $category 类别
 * @property string $monitorAppId 项目
 * @property string $uuId 用户标识
 * @property string $level 级别
 * @property string $happenTime 上报时间
 * @property string $netWork 网络
 * @property string $ip ip
 * @property string $country 省
 * @property string $province 市
 * @property string $city 区
 * @property string $pageUrl 页面链接
 * @property string $simpleUrl 页面带*链接
 * @property string $duration http 请求持续时间
 * @property string $method http 请求方式： Post, Get
 * @property string $pathName http 请求链接
 * @property string $requestText http 请求入参
 * @property string $responseText http 请求结果
 * @property string $httpOptions http 请求配置,
 * @property string $status http 状态码
 * @property string $timeout http 超时时间
 * @property string $statusText http 状态描述
 * @property string $type http 请求工具: xml,fetch
 * @property string $eventType http ： load error abort
 */
class HttpLog extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'http_log';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'category', 'monitorAppId', 'uuId', 'level', 'happenTime', 'netWork', 'ip', 'country', 'province', 'city', 'pageUrl', 'simpleUrl', 'duration', 'method', 'pathName', 'requestText', 'responseText', 'httpOptions', 'status', 'timeout', 'statusText', 'type', 'eventType'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer'];
}
