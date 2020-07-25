<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class Targets extends Model
{
    //
    public function get_target($user_id){
        $result = DB::table('targets')->where('user_id', $user_id)->get();
        return  $result;
    }
    public function if_target_exist($user_id,$course_id,$target_cgpa){
        $target = DB::table('targets')->where('user_id', $user_id)->where('course_id', $course_id)->where('target_cgpa', $target_cgpa)->get();
        return  $target;
    }
    public function if_targets_exist($user_id,$target_cgpa){
        $target = DB::table('targets')->where('user_id', $user_id)->where('target_cgpa', $target_cgpa)->get();
        return  $target;
    }
    public function update_target($user_id,$course_id,$target_cgpa,$data){
        DB::table('targets')->where('user_id', $user_id)->where('course_id', $course_id)->where('target_cgpa', $target_cgpa)->update($data);	
        return "updated";
    }

    public function get_all_users_targets($user_id){
        $targets = DB::table('targets')->select('target_cgpa')->where('user_id', $user_id)->get();
        return  $targets;
    }

    public function get_all_users_targets_results($user_id){
        $targets = DB::table('targets')->where('user_id', $user_id)->get();
        return  $targets;
    }
}
