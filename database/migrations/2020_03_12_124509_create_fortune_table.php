<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFortuneTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fortune', function (Blueprint $table) {
            $table->increments('id');

            $table->char('constellation', '10'); //星座名稱

            $table->integer('total_fortune_score'); //整體分數
            $table->char('total_fortune_desc', 255); //整體說明

            $table->integer('love_fortune_score'); //愛情分數
            $table->char('love_fortune_desc', 255); //愛情描述

            $table->integer('work_fortune_score'); //事業分數
            $table->char('work_fortune_desc', 255); //事業描述

            $table->integer('money_fortune_score'); //財運分數
            $table->char('money_fortune_desc', 255); //財運描述

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fortune');
    }
}