<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grades extends Model
{
    //
    public function get_grades($country){
        $grades = Grades::where('country', $country)->get();
        return $grades;
    }

}
