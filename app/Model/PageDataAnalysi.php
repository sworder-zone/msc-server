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
 * @property string $monitorAppId
 * @property int $pvCount
 * @property int $uvCount
 * @property int $newUvCount
 * @property int $ipCounct
 * @property int $jumpCount
 * @property string $visitFrequency
 * @property string $happenTime
 */
class PageDataAnalysi extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'page_data_analysis';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'monitorAppId', 'pvCount', 'uvCount', 'newUvCount', 'ipCounct', 'jumpCount', 'visitFrequency', 'happenTime'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer', 'pvCount' => 'integer', 'uvCount' => 'integer', 'newUvCount' => 'integer', 'ipCounct' => 'integer', 'jumpCount' => 'integer'];
}
