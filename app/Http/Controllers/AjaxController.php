<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use App\School;
use App\Faculty;
use App\Department;
use App\Course;
use App\User;
use App\UserLog;
use App\Result;
use App\Role;
use View;


class AjaxController extends Controller
{
    //
    public function load_course_schools(Request $request){
       
        $school = new School;
        $schools = $school->load_schools($request->country);
        return $schools;
    }
    public function load_course_faculties(Request $request){
        
        $faculty = new Faculty;
        $faculties = $faculty->load_all_faculties($request->school);
        
        return $faculties;
    }
    public function load_course_depts(Request $request){
        $dept = new Department;
        $depts = $dept->load_depts($request['faculty'],$request['school']);
        
        return $depts;
    }
    public function load_course_years(Request $request){
        
        $year = new Department;
        $years = $year->load_years($request['faculty'],$request['school'],$request['dept']);
        
        return $years;
    }
    public function get_courses_and_section_it($courses){
        
        foreach($courses as $key => $course){

    
            // Array section that will decide how many semesters in a year to show on Calculator page

            // Year 1
            if(!isset($data['section'][1][1])){
                if($course->level == 1 and $course->semester == 1){
                    $data['section'][1][1][] = "exist";
                }
            }

            if(!isset($data['section'][1][2])){
                if($course->level == 1 and $course->semester == 2){
                    $data['section'][1][2][] = "exist";
                }
            }

            if(!isset($data['section'][1][3])){
                if($course->level == 1 and $course->semester == 3){
                    $data['section'][1][3][] = "exist";
                }
            }

            if(!isset($data['section'][1][4])){
                if($course->level == 1 and $course->semester == 4){
                    $data['section'][1][4][] = "exist";
                }
            }

            // Year 2
            if(!isset($data['section'][2][1])){
                if($course->level == 2 and $course->semester == 1){
                    $data['section'][2][1][] = "exist";
                }
            }

            if(!isset($data['section'][2][2])){
                if($course->level == 2 and $course->semester == 2){
                    $data['section'][2][2][] = "exist";
                }
            }

            if(!isset($data['section'][2][3])){
                if($course->level == 2 and $course->semester == 3){
                    $data['section'][2][3][] = "exist";
                }
            }

            if(!isset($data['section'][2][4])){
                if($course->level == 2 and $course->semester == 4){
                    $data['section'][2][4][] = "exist";
                }
            }

            // Year 3
            if(!isset($data['section'][3][1])){
                if($course->level == 3 and $course->semester == 1){
                    $data['section'][3][1][] = "exist";
                }
            }

            if(!isset($data['section'][3][2])){
                if($course->level == 3 and $course->semester == 2){
                    $data['section'][3][2][] = "exist";
                }
            }

            if(!isset($data['section'][3][3])){
                if($course->level == 3 and $course->semester == 3){
                    $data['section'][3][3][] = "exist";
                }
            }

            if(!isset($data['section'][3][4])){
                if($course->level == 3 and $course->semester == 4){
                    $data['section'][3][4][] = "exist";
                }
            }

            // Year 4
            if(!isset($data['section'][4][1])){
                if($course->level == 4 and $course->semester == 1){
                    $data['section'][4][1][] = "exist";
                }
            }

            if(!isset($data['section'][4][2])){
                if($course->level == 4 and $course->semester == 2){
                    $data['section'][4][2][] = "exist";
                }
            }

            if(!isset($data['section'][4][3])){
                if($course->level == 4 and $course->semester == 3){
                    $data['section'][4][3][] = "exist";
                }
            }

            if(!isset($data['section'][4][4])){
                if($course->level == 4 and $course->semester == 4){
                    $data['section'][4][4][] = "exist";
                }
            }

            // Year 5
            if(!isset($data['section'][5][1])){
                if($course->level == 5 and $course->semester == 1){
                    $data['section'][5][1][] = "exist";
                }
            }

            if(!isset($data['section'][5][2])){
                if($course->level == 5 and $course->semester == 2){
                    $data['section'][5][2][] = "exist";
                }
            }

            if(!isset($data['section'][5][3])){
                if($course->level == 5 and $course->semester == 3){
                    $data['section'][5][3][] = "exist";
                }
            }

            if(!isset($data['section'][5][4])){
                if($course->level == 5 and $course->semester == 4){
                    $data['section'][5][4][] = "exist";
                }
            }
        }

        return $data['section'];
        
    
    
    }
    public function load_courses(Request $request){

            $school = $request->school;
            $department = $request->department;
            $data['school'] = $request->school;
            $data['department'] = $request->department;
            $data['admin_type'] = $request->admin_type;

            $course = new Course;
            $data['courses'] = $course->get_courses($school,$department);
            $courses = $course->get_courses($school,$department);
            if($courses->isEmpty()){
                return "No Courses to Show For ".$department;
            }
            else{
                $data['section'] = $this->get_courses_and_section_it($courses);
                return View::make("admin.courses_template", $data)->render();
            }
    }
}
