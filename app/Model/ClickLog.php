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
 * @property int $screenHeight 设备高度
 * @property int $screenWidth 设备宽度
 * @property string $pageUrl 页面链接
 * @property string $simpleUrl 页面带*链接
 * @property string $tagName 事件触发标签
 * @property string $top 被点击元素距top 距离
 * @property string $left 被点击距left 距离
 * @property string $eventType 点击事件类型
 * @property string $pageHeight 页面高度
 * @property string $subType 子类型 事件类型
 * @property string $startTime 页面加载后 至 发生错误时间
 * @property string $innerHTML 点击标签内部html
 * @property string $viewport 屏幕 可视宽、高
 * @property string $targetInfo 被点击元素的 offsetWidth,  offsetHeight,
 */
class ClickLog extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'click_log';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'category', 'monitorAppId', 'uuId', 'level', 'happenTime', 'screenHeight', 'screenWidth', 'pageUrl', 'simpleUrl', 'tagName', 'top', 'left', 'eventType', 'pageHeight', 'subType', 'startTime', 'innerHTML', 'viewport', 'targetInfo'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'screenHeight' => 'integer', 'screenWidth' => 'integer'];
}
