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
 * @property string $monitorAppId 项目
 * @property string $uuId 用户ID
 * @property string $category 类别
 * @property int $tb_id 联表id
 * @property string $createTime 时间
 */
class UserBehavior extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'user_behavior';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'uuId', 'category', 'tb_id', 'createTime'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'tb_id' => 'integer'];
}
