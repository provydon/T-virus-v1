<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use DB;

class Withdrawal extends Model
{
    //
    public function withdrawals(){
        $withdrawals = DB::table('withdrawals')->where('user_id',Auth::user()->id)->get();
        return $withdrawals;
    }
}
