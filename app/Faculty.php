<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Faculty extends Model
{
    //
    public function load_faculties($school){

        $school_faculties = Faculty::select('faculty_name')->where('school_name', $school)->get();
        
            if($school_faculties->isEmpty()){
                return $school_faculties;
            }
            else{
                foreach($school_faculties as $key=>$value){
                    $faculties[] = $value->faculty_name;
                    
                    }
                    return $faculties;
            }
            
       
    }

    public function all_faculties(){

        $faculties = Faculty::all();
        
        return $faculties;
    }


    public function load_all_faculties($school){
        $school_faculties = Faculty::where('school_name', $school)->get();
    
        return $school_faculties;
    }

    public function if_faculty_exists($faculty,$school){
        $faculty = Faculty::where('faculty_name', $faculty)->where('school_name',$school)->get();
        return $faculty;
    }

    public function update_faculty($id,$data)
	{
        $faculty = Faculty::where('id', $id)->update($data);	
        return "updated";
    } 

    public function get_faculty($id)
	{
        $faculty = Faculty::select('faculty_name')->where('id',$id)->get();
        return $faculty;
    } 
}
