<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class Password_Reset extends Model
{
    //

    public function check_for_email($email){
        $email_exist =  DB::table('password_resets')->where('email', $email)->get();
        return $email_exist;
    }

    public function update_token($email,$data){
        $email_exist =  DB::table('password_resets')->where('email', $email)->update($data);
        return "updated";
    }
}
