<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMUniversalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_universals', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('div_no');
            $table->string('key1', 100);
            $table->string('key2', 100);
            $table->string('key3', 100);
            $table->integer('sort_no');
            $table->integer('use_flg');
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
        Schema::dropIfExists('m_universals');
    }
}
