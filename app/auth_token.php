<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class auth_token extends Model
{
    //
   

    public function check_for_email($email){
        $email_exist =  DB::table('auth_tokens')->where('email', $email)->get();
        return $email_exist;
    }

    public function update_token($email,$data){
        $email_exist =  DB::table('auth_tokens')->where('email', $email)->update($data);
        return "updated";
    }
}
