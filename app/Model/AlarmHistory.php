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
 * @property int $alarmId 关联告警表id
 * @property string $sendContent 发送内容
 * @property string $errorMsg 错误
 * @property int $isSuccess 是否成功
 * @property string $updateTime
 */
class AlarmHistory extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'alarm_history';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'alarmId', 'sendContent', 'errorMsg', 'isSuccess', 'updateTime'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'alarmId' => 'integer', 'isSuccess' => 'integer'];
}
