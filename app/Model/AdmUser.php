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
 * @property string $username 用户名
 * @property string $password 密码
 */
class AdmUser extends Model
{
    /**
     * The table associated with the model.
     */
    protected ?string $table = 'adm_user';

    /**
     * The attributes that are mass assignable.
     */
    protected array $fillable = ['id', 'username', 'password'];

    /**
     * The attributes that should be cast to native types.
     */
    protected array $casts = ['id' => 'integer'];
}
