<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Course extends Model
{
    //
    public function get_courses($school,$department){
        $courses = Course::where('school_name', $school)->where('department_name', $department)->get();
        return $courses;
  	}

    public function get_course($course_id){
        $course = Course::where('id', $course_id)->get();
        return $course;
    }

  	 public function if_course_exist($school,$department,$course_code){
        $course = Course::where('school_name', $school)->where('department_name', $department)->where('course_code', $course_code)->get();
        return $course;
  	}

  	public function update_course($course_id,$data){
        DB::table('courses')->where('id', $course_id)->update($data);	
        return "updated";
    } 
}
