<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    public function get_all_countries(){
        $country_data = Country::all();
        return $country_data;
    }
}
