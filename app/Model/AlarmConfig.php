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
 * @property string $monitorAppId 项目所属
 * @property string $errorType 错误类型
 * @property string $errorName 要报警错误名字
 * @property int $timeRangeS 报警时间范围_秒
 * @property int $maxErrorCount 报警错误数阈值
 * @property int $alarmIntervalS 报警时间间隔_秒
 * @property int $isEnable 是否开启本条报警配置1：是0：否
 * @property string $alertType 告警方式 1 钉钉
 * @property string $note 配置说明
 * @property string $serviceType 参数 = < >
 * @property string $whereType 求和 where 平均 avg
 * @property string $startHour 告警时间点
 * @property string $endHour 告警时间点
 * @property string $startTime
 * @property string $updateTime
 */
class AlarmConfig extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'alarm_config';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'errorType', 'errorName', 'timeRangeS', 'maxErrorCount', 'alarmIntervalS', 'isEnable', 'alertType', 'note', 'serviceType', 'whereType', 'startHour', 'endHour', 'startTime', 'updateTime'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'timeRangeS' => 'integer', 'maxErrorCount' => 'integer', 'alarmIntervalS' => 'integer', 'isEnable' => 'integer'];
}
