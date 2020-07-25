<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use DB;

class School extends Model
{
    //
    public function get_school_data($school){
        $school_data = School::where('school_nickname', $school)->get();
        return $school_data;
    }

    public function get_school_nickname($school){
        $school_data = School::where('school_name', $school)->get();
        return $school_data;
    }

    public function get_all_schools(){
        $school_data = School::all();
        return $school_data;
    }

    public function get_cgpa_scale($school){
        $cgpa_scale = DB::table('schools')->select('cgpa_scale')->where('school_name', $school)->get();
        foreach($cgpa_scale as $key=>$value){
        	$scale = $value->cgpa_scale;
        }
        return $scale;
    }

    public function get_school_logo($school){
        $school_logo = DB::table('schools')->select('school_logo')->where('school_name', $school)->get();
        return $school_logo;
    }

    public function update_school($id,$data){
        $school = School::where('id', $id)->update($data);	
        return "updated";
    } 

    public function get_school($id){
        $school = School::select('school_name','country','school_nickname')->where('id',$id)->get();
        return $school;
    } 

    public function if_school_exists($country,$school){
        $school = School::where('school_name',$school)->where('country', $country)->get();
        return $school;
    }

    public function load_schools($country){
        
        $schools = School::select('school_name')->where('country', $country)->orderBy('school_name', 'ASC')->get();
       
        return $schools;
    }
}
