<?php

namespace App\Traits;

use App\Models\User;

trait UserAuthJwtTrait
{
    public function getUser()
    {
        $key = getenv('jwt.secret');
        $header = $this->request->getServer('HTTP_AUTHORIZATION');
        $userModel = new User();
        if (!$header) return $this->failUnauthorized('Token Required');

        $token = explode(' ', $header)[1];

        try {
            $decoded = JWT::decode($token, $key, ['HS256']);
            $user = $userModel->find($decoded['id']);

            return $user;
        } catch (\Throwable $th) {
            return $this->fail('Invalid Token');
        }
    }
}