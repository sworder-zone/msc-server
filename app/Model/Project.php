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

use App\Constants\ProjectStatus;

/**
 * @property int $id
 * @property string $name 应用名称
 * @property string $desc 应用说明
 * @property string $monitorAppId 应用ID
 * @property string $watch 配置
 * @property int $maxQueues 上报条数
 * @property string $projectType 1 web
 * @property string $encryption 0 不加密 1 加密
 * @property int $delay 应用间隔时间
 * @property ProjectStatus $status 0 禁用 1 启用
 * @property string $startTime 创建时间
 * @property string $updateTime 修改时间
 * @property string $cookieUserKey
 */
class Project extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'projects';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'name', 'desc', 'monitorAppId', 'watch', 'maxQueues', 'projectType', 'encryption', 'delay', 'status', 'startTime', 'updateTime', 'cookieUserKey'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'maxQueues' => 'integer', 'delay' => 'integer', 'status' => ProjectStatus::class];
}
