<?php

namespace App\Controllers\API;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use App\Models\User;
use Firebase\JWT\JWT;

class AuthController extends BaseController
{
    use ResponseTrait;

    private $userModel;

    public function __construct()
    {
        $this->userModel = new User();
    }

    public function signin()
    {
        $data = $this->request->getJSON(true);
        $user = $this->userModel->where(['email' => $data['email']])->first();
        $now = new \DateTime();

        if (!$user) return $this->respond(['message' => 'Email tidak ditemukan'], 401);

        if (!password_verify($data['password'], $user['password'])) {
            return $this->respond(['message' => 'Email atau password salah'], 401);
        }

        $payload = [
            'iat' => $now->getTimestamp(),
            'nbf' => $now->getTimestamp(),
            'sub' => $user['id']
        ];

        return $this->respond([
            'token' => JWT::encode($payload, getenv('jwt.secret')),
            'type' => 'Bearer',
            'message' => 'Login berhasil'
        ]);
    }

    public function signup()
    {
        if (!$this->validate($this->userModel->getValidationRules())) {
            return $this->failValidationErrors($this->validator->getErrors());
        }

        $this->userModel->insert($this->request->getJSON(true));

        return $this->respondCreated(['message' => 'User has been registered']);
    }
}
