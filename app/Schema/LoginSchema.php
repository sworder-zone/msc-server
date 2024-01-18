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

namespace App\Schema;

use Hyperf\Swagger\Annotation\Property;
use Hyperf\Swagger\Annotation\Schema;
use JsonSerializable;

#[Schema(title: 'LoginSchema')]
class LoginSchema implements JsonSerializable
{
    public function __construct(
        #[Property(property: 'userId', title: '用户 ID', type: 'integer')]
        public int $userId,
        #[Property(property: 'token', title: 'Token', type: 'string')]
        public string $token,
        #[Property(property: 'projectAll', title: '所有开启的项目', type: 'array')]
        public array $projectAll,
    ) {
    }

    public function jsonSerialize(): mixed
    {
        return [
            'userId' => $this->userId,
            'token' => $this->token,
            'projectAll' => $this->projectAll,
        ];
    }
}
