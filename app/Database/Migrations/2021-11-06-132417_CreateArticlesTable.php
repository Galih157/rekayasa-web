<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateArticlesTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' =>  [
                'type' => 'int',
                'unsigned' => true,
                'auto_increment' => true
            ],

            'title' => [
                'type' => 'varchar',
                'constraint' => '255'
            ],

            'content' => [
                'type' => 'text',
            ],

            'status' => [
                'type' => 'varchar',
                'constraint' => '16'
            ],

            'created_at DATETIME DEFAULT CURRENT_TIMESTAMP',

            'updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',
        ])
            ->addPrimaryKey('id')
            ->createTable('articles');
    }

    public function down()
    {
        //
    }
}
