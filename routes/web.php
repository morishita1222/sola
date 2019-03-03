<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

Route::get('/', function () {
    return view('welcome');
});




/* Route::get('hello/{msg?}', function($msg = 'no message') {
  $html = <<<EOF
  <html>
  <head>
  <title>Hello</title>
  <style>
  body { font-size:16pt; color:#999; }
  h1 { font-size:100pt; text-align:right; color:#eee;
  margin:-40px 0px -50px 0px; }
  </style>
  </head>
  <body>
  <h1>Hello</h1>
  <p>{$msg}</p>
  <p>これは、サンプルで作ったページです。</p>
  </body>
  </html>
  EOF;
  return $html;
  });
 */

Route::get('hello', 'HelloController@index')
        ->middleware('helo');
Route::post('hello', 'HelloController@post');
//Route::get('hello/{id?}/{pass?}', 'HelloController@index');
//Route::get('hello', 'HelloController@index');
Route::get('hello/other', 'HelloController@other');
//Route::get('hello', 'HelloController');
Route::get('hello/add', 'HelloController@add');
Route::post('hello/add', 'HelloController@create');
Route::get('hello/edit', 'HelloController@edit');
Route::post('hello/edit', 'HelloController@update');
Route::get('hello/del', 'HelloController@del');
Route::post('hello/del', 'HelloController@remove');
Route::get('hello/show', 'HelloController@show');
Route::get('person', 'PersonController@index');
Route::get('person/find', 'PersonController@find');
Route::post('person/find', 'PersonController@search');
Route::get('visitors', 'VisitorController@index');
Route::post('visitors/add', 'VisitorController@postIndex');
