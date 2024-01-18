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
 * @property string $monitorAppId 项目ID
 * @property string $happenTime 时间精确到小时
 * @property int $pvCount 页面pv
 * @property int $uvCount 页面uv
 * @property int $jsErrorCount js错误个数
 * @property int $resourceLinkCount 资源css错误
 * @property int $resourceScriptCount 资源js错误
 * @property int $resourceImgCount 资源图片错误
 */
class DataHour extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'data_hour';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'happenTime', 'pvCount', 'uvCount', 'jsErrorCount', 'resourceLinkCount', 'resourceScriptCount', 'resourceImgCount'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'pvCount' => 'integer', 'uvCount' => 'integer', 'jsErrorCount' => 'integer', 'resourceLinkCount' => 'integer', 'resourceScriptCount' => 'integer', 'resourceImgCount' => 'integer'];
}
