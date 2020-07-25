<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class Role extends Model
{
    //
    public function get_roles($user_id){
        $roles = Role::select('super_admin','admin','head_sub_admin','sub_admin')->where('user_id',$user_id)->get();	
        return $roles;
    }

    public function get_all_school_sub_admins($school){
        $roles = Role::where('school_name',$school)->where('sub_admin','yes')->get();	
        return $roles;
    }

    public function get_all_sub_admins(){
        $roles = Role::where('sub_admin','yes')->get();	
        return $roles;
    }

    public function get_all_head_sub_admins(){
        $roles = Role::where('head_sub_admin','yes')->get();	
        return $roles;
    }

    public function check_if_user_is_any_admin($user_id){
        $roles = Role::where('user_id',$user_id)->get();	
        return $roles;
    }

    public function check_if_user_is_already_sub_admin($user_id,$school,$dept){
        $roles = Role::where('user_id',$user_id)->where('school_name',$school)->where('department_name',$dept)->where('sub_admin','yes')->get();	
        return $roles;
    }

    public function check_if_user_is_already_head_sub_admin($user_id,$school){
        $roles = Role::where('user_id',$user_id)->where('school_name',$school)->where('head_sub_admin','yes')->get();	
        return $roles;
    }

    public function check_if_user_already_has_sub_admin($dept,$school){
        $roles = Role::where('school_name',$school)->where('department_name',$dept)->where('sub_admin','yes')->get();	
        return $roles;
    }

    public function check_if_user_already_has_head_sub_admin($school){
        $roles = Role::where('school_name',$school)->where('head_sub_admin','yes')->get();	
        return $roles;
    }

    public function update_roles($user_id,$data){
        Role::where('user_id', $user_id)->update($data);	
        return "updated";
    } 

}
