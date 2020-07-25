<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class targetValues extends Model
{
    //

    public function if_target_exist($user_id,$target_cgpa){
        $target = DB::table('target_values')->where('user_id', $user_id)->where('target_cgpa', $target_cgpa)->get();
        return  $target;
    }
    public function get_all_users_targets($user_id){
        $targets = DB::table('target_values')->select('target_cgpa','created_at')->where('user_id', $user_id)->orderBy('created_at', 'DESC')->get();
        return  $targets;
    }
    
    public function update_target($user_id,$target_cgpa,$data){
        DB::table('target_values')->where('user_id', $user_id)->where('target_cgpa', $target_cgpa)->update($data);	
        return "updated";
    }
    
}
