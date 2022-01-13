<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateUsersTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' =>  [
                'type' => 'int',
                'unsigned' => true,
                'auto_increment' => true
            ],

            'name' => [
                'type' => 'varchar',
                'constraint' => '255'
            ],

            'email' => [
                'type' => 'varchar',
                'constraint' => '255'
            ],

            'password' => [
                'type' => 'varchar',
                'constraint' => '255'
            ],

            'status' => [
                'type' => 'varchar',
                'constraint' => '16'
            ],

            'created_at DATETIME DEFAULT CURRENT_TIMESTAMP',

            'updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',
        ])
            ->addPrimaryKey('id')
            ->createTable('users');
    }

    public function down()
    {
        $this->forge->dropTable('users');
    }
}
