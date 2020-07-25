<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class Result extends Model
{
    //
    public function get_result($user_id,$course_id){
        $result = DB::table('results')->select('grade','credit_unit')->where('user_id', $user_id)->where('course_id', $course_id)->get();
        return  $result;
    }
    public function get_result_data($user_id){
        $result = DB::table('results')->where('user_id', $user_id)->get();
        return  $result;
    }
    public function if_exist_result($user_id,$course_id){
        $result = DB::table('results')->where('user_id', $user_id)->where('course_id', $course_id)->get();
        return  $result;
    }
    public function update_result($user_id,$course_id,$data){
        DB::table('results')->where('user_id', $user_id)->where('course_id', $course_id)->update($data);	
        return "updated";
    }
}
