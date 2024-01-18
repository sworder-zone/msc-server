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
 * @property string $filename url
 * @property string $originalname
 * @property string $destination
 * @property string $path
 * @property int $size
 * @property string $version 版本号
 * @property string $updateTime 上传时间
 */
class Sourcemap extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'sourcemap';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'filename', 'originalname', 'destination', 'path', 'size', 'version', 'updateTime'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'size' => 'integer'];
}
