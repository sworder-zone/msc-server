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
 * @property string $uuId 用户ID
 * @property string $sessionId 一次会话Id
 * @property string $key 名称
 * @property int $score 分数
 * @property string $textValue 数据
 * @property int $numValue 数据
 * @property string $happenTime 时间
 * @property string $simpleUrl
 */
class Performance extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'performance';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'uuId', 'sessionId', 'key', 'score', 'textValue', 'numValue', 'happenTime', 'simpleUrl'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'score' => 'integer', 'numValue' => 'integer'];
}
