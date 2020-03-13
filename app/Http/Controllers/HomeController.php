<?php

namespace App\Http\Controllers;

use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $date = date('Y-m-d');
        $date = '"%' . $date . '%"';
        // $fortune_data = Fortune::orwhere('created_at', 'LIKE', "$date")->groupBy('constellation_id')->get();
        // $fortune_data = Fortune::where('created_at', 'LIKE', "2020-03-20")->groupBy('constellation_id')->get();
        $fortune_data = DB::select("select * from fortune where `created_at` LIKE $date group by constellation_id");
        return view('home')->with('fortune_data', $fortune_data);
    }
}