<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use DB;

class Wallet extends Model
{
    //
    public function balance(){
        $balance = DB::table('wallets')->select('balance')->where('user_id',Auth::user()->id)->first();
        // dd($balance);
        if($balance == null){
            $balance = 0;
            return $balance;
        }else{
            return $balance->balance;
        }
       
    }
}
