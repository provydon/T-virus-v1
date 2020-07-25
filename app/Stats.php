<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Illuminate\Support\Collection;
use DB;

class Stats extends Model
{
    //

    public function get_active_logins($start_date,$end_date){
      $stats =  stats::where('created_at', '>=', $start_date)->where('created_at', '<=', $end_date)->get();
      return $stats;
    }

    public function active_logins_this_month(){
        $stats = stats::where('created_at', '>=', Carbon::now()->startOfMonth())->get();
        return $stats;
    }

    public function get_monthly_active_logins(){
        $stats = stats::where('created_at', '>=', Carbon::now()->startOfMonth())->get();
        return $stats;
    }

    public function get_weekly_active_logins(){
        stats::where( DB::raw('Week(created_at)'), '=', date('n') )->get();
    }

    public function get_daily_active_logins(){
        stats::where('created_at', '>=', Carbon::now()->local)->get();
    }
    // public function get_all_usess_stats(){

    // }

    // public function get_a_users_stats(){

    // }

    // public function get_all_schools_stats(){

    // }

    // public function get_a_schools_stats(){

    // }


}
