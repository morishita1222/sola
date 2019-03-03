<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VisitorController extends Controller {

    //use \App\Muniversal;

    public function index() {
        $lockers = \App\Locker::where('use_flg', '1')->orderBy('sort_no', 'asc')->pluck('locker_name', 'locker_no');
        $opps = \App\Muniversal::where('div_no', '3')->orderBy('sort_no', 'asc')->pluck('key2', 'key1');
        //var_dump($opps);
        return view('visitors.add')->with(['lockers' => $lockers])->with(['opps' => $opps]);

        //return view('visitors.add')->with(['lockers' => $lockers]);
    }

    public function postIndex(Request $request) {
        $date = date_create($request->date);
        //$options = $request->opps;
        $data = $request->all();
        $sum_pm = 0;
        if (!empty($request->get('opps'))) {
            $oppcodes = implode("|", $data['opps']);
            foreach ($data['opps'] as $opp) {
                $pmc = DB::table('m_universals')->select('key3')->where([
                            ['div_no', '=', '3'],
                            ['key1', '=', $opp],
                        ])->first();
                //$pmcsss=$pmc->key3;
                $pm=intval($pmc->key3);
                /* $pmc = \App\Muniversal::where([
                  ['div_no', '=', '3'],
                  ['key1', '=', $opp],
                  ])->pluck('key3')->first(); */
                //$pm=intval($pmc);
                //var_dump($pmc);
                $sum_pm = $sum_pm + $pm;
                
            }
            //$data['opps'] = $oppcodes;
        } else {
            $oppcodes = '';
        }
        //var_dump($data['opps']);
        //var_dump($sum_pm);
DB::table('lockers')
            ->where('locker_no', $request->locker_code)
            ->update(['use_flg' => 2]);

        //$option_codes=implode("|", $request->opps[]);
        //$opt = Request::input('opps');
        //var_dump($opt);
        $param = [
            'locker_no' => $request->locker_code,
            'visit_date' => date_format($date, 'Y-m-d'),
            'is_enjoying_flg' => '1',
            'option_codes' => $oppcodes,
            'sum_amount' => 1400 + $sum_pm,
            'remarks' => $request->remarks,
        ];
        DB::table('visitors')->insert($param);
       return redirect('/visitors');
    }

}
