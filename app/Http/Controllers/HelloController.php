<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use \App\Http\Requests\HelloRequest;
use Illuminate\Support\Facades\DB;

/* global $head, $style, $body, $end;
  $head = '<html><head>';
  $style = <<<EOF
  <style>
  body { font-size : 16pt; color : #999; }
  h1 { font-size : 100pt; text-align : right; color : #eee;
  margin : -40px 0px -50px 0px; }
  </style>
  EOF;
  $body = '</head><body>';
  $end = '</body></head>';

  function tag($tag, $txt) {
  return "<{$tag}>" . $txt . "</{$tag}>";
  }
 */

class HelloController extends Controller {

    public function index(Request $request) {
        $items = DB::select('select * from people');
        return view('hello.index', ['items' => $items]);
    }

    public function post(Request $request) {
        $items = DB::select('select * from people');
        return view('hello.index', ['items' => $items]);
    }

    public function add(Request $request) {
        return view('hello.add');
    }

    public function create(Request $request) {
        $param = [
            'name' => $request->name,
            'mail' => $request->mail,
            'age' => $request->age,
        ];
        //DB::insert('insert into people (name, mail, age) value 
        //        (:name, :mail, :age)', $param);
        DB::table('people')->insert($param);
        return redirect('/hello');
    }

    public function edit(Request $request) {
        //$param = ['id' => $request->id];
        //$item = DB::select('select * from people where id = :id', $param);
        $item = DB::table('people')
                        ->where('id', $request->id)->first();
        return view('hello.edit', ['form' => $item]);
    }

    public function update(Request $request) {
        $param = [
            // 'id' => $request->id,
            'name' => $request->name,
            'mail' => $request->mail,
            'age' => $request->age,
        ];
        //DB::update('update people set name = :name, mail = :mail , age = :age where id = :id', $param);
        DB::table('people')
                ->where('id', $request->id)
                ->update($param);
        return redirect('/hello');
    }

    public function del(Request $request) {
        //$param = ['id' => $request->id];
        //$item = DB::select('select * from people where id = :id', $param);
        $item = DB::table('people')
                        ->where('id', $request->id)->first();
        return view('hello.del', ['form' => $item]);
    }

    public function remove(Request $request) {
        //$param = ['id' => $request->id];
        //DB::delete('delete from people where id = :id', $param);
        DB::table('people')
                ->where('id', $request->id)->delete();
        return redirect('/hello');
    }

    public function show(Request $request) {
        $id = $request->id;
        $items = DB::table('people')->where('id', '<=', $id)->get();
        return view('hello.show', ['items' => $items]);
    }

}
