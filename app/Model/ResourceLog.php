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
 * @property string $userAgent UA
 * @property string $uuId 用户标识
 * @property string $level 级别
 * @property string $happenTime 上报时间
 * @property string $deviceType 设备
 * @property string $os 设备
 * @property string $browserInfo 设备
 * @property string $device 设备
 * @property string $deviceModel 设备
 * @property int $screenHeight 设备高度
 * @property int $screenWidth 设备宽度
 * @property string $language 语言
 * @property string $netWork 网络
 * @property string $ip ip
 * @property string $country 省
 * @property string $province 市
 * @property string $city 区
 * @property string $pageUrl 页面链接
 * @property string $simpleUrl 页面带*链接
 * @property string $errorMsg 错误信息
 * @property string $url 错误url
 * @property string $html
 * @property string $resourceType 资源类型
 * @property string $paths
 */
class ResourceLog extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'resource_log';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'category', 'monitorAppId', 'userAgent', 'uuId', 'level', 'happenTime', 'deviceType', 'os', 'browserInfo', 'device', 'deviceModel', 'screenHeight', 'screenWidth', 'language', 'netWork', 'ip', 'country', 'province', 'city', 'pageUrl', 'simpleUrl', 'errorMsg', 'url', 'html', 'resourceType', 'paths'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'screenHeight' => 'integer', 'screenWidth' => 'integer'];
}
