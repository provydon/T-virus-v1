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




class subAdminController extends Controller
{
    //
    public function __construct(){
        
        $this->middleware('guest');
        $this->middleware('role');
        $this->middleware('Sub_Admin_role');
    }
    
    public function courses(){

            
            // The user is logged in...
            $school = Auth::user()->school_name;
            $faculty = Auth::user()->faculty_name;
            $department = Auth::user()->department_name;
    
            if($school == null or $faculty == null or $department == null){
               return  redirect()->route('settings');
            }
            else{
               
                $school_details = new School;
                $school_logo = $school_details->get_school_logo($school);
                foreach($school_logo as $key => $value){
                    $data['school_logo'] = $value->school_logo;
                }
                $course = new Course;
                $data['courses'] = $course->get_courses($school,$department);
                $courses = $course->get_courses($school,$department);
                if(!$courses->isEmpty()){

                    $data['section'] = $this->get_courses_and_section_it($courses);

                    $year = new Department;
                    $data['years'] = $year->load_years($faculty,$school,$department);

                    $semesters = new Department;
                    $data['semesters'] = $semesters->load_semesters($faculty,$school,$department);
                    
                    return view("admin.SubAdmin.courses",$data);
                }
                else{
                    $year = new Department;
                    $data['years'] = $year->load_years($faculty,$school,$department);

                    $semesters = new Department;
                    $data['semesters'] = $semesters->load_semesters($faculty,$school,$department);
                    
                    return view("admin.SubAdmin.courses",$data);
                }
            }
    }

    public function add_courses(Request $request){

        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;
        $level = $request->level;
        $semester = $request->semester;


        $credit_unit = $request->credit_unit;
        $course_code = $request->course_code;
        foreach($credit_unit as $key => $value){

            // Check if course exist
            $course_exist = new Course;
            $course_exist = $course_exist->if_course_exist($school,$department,$course_code[$key]);

            if($course_exist->isEmpty()){
                if($course_code[$key] != null and $credit_unit[$key] != null){
                    $course = new Course;
                    
                    $course->course_code = $course_code[$key];
                    $course->credit_unit = $credit_unit[$key];
                    $course->department_name = Auth::user()->department_name;
                    $course->faculty_name = Auth::user()->faculty_name;
                    $course->school_name = Auth::user()->school_name;
                    $course->level = $request['level'];
                    $course->semester = $request['semester'];
                    $course->status = "created";
                    $course->save();
                }
            }
        
        }
        return redirect()->route('sub-admin-courses')->with([
            "success" => "Courses Added",
            "old_level" => $level,
            "old_semester" => $semester,
        ]);
    }

    public function update_course(Request $request){

        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;
      


        $credit_unit = $request->credit_unit;
        $course_code = $request->course_code;
        $course_id = $request->course_id;
        $level = $request->level;
        $semester = $request->semester;


        foreach($course_id as $key => $value){

            if($course_code[$key] == null){

                $course = Course::where('id',$course_id[$key])->first();
                $course->delete(); 

            }
            else{

                $course = new Course;
                $data = ['course_code'=>$course_code[$key],'credit_unit'=>$credit_unit[$key],'level' => $level[$key],'semester' =>$semester[$key]];
                $course->update_course($course_id[$key],$data);
            }
            
        }
          return redirect()->route('sub-admin-courses')->with([
                        "success" => "Courses Updated"
                    ]);
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

    public function all_students(){
        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        if($school == null or $faculty == null or $department == null){
           return  redirect()->route('settings');
        }
        else{
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }

            $all_users = new User;
            $data['all_users'] = $all_users->all_dept_users(Auth::user()->country,$school,$department);

            return view("admin.SubAdmin.students",$data);
        }
    }
    
}

