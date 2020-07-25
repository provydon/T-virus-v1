<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Collection;
use App\Events\ForgotPassword;
use App\School;
use App\Faculty;
use App\Department;
use App\Course;
use App\User;
use App\UserLog;
use App\Result;
use App\Grades;
use App\Targets;
use App\targetValues;
use App\Subscription;
use App\Withdrawal;
use App\Wallet;
use App\Notification;
use Carbon\Carbon;
use Session;

class Dashboard extends Controller
{
    //

    protected $dates = ['created_at'];

    public function __construct(){
        $this->middleware('guest');
        $this->middleware('settings');
        // $this->middleware('subscription');
    }

    public function calculator(){

        // dd(session('notifications'));
            // The user is logged in..
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }
            $course = new Course;
            $data['courses'] = $course->get_courses($school,$department);
            $courses = $course->get_courses($school,$department);
            foreach($courses as $key => $course){
                $grade = new Result;
                $grade = $grade->get_result(Auth::user()->id,$course->id);
                foreach($grade as $key => $value){
                    $data['grades'][$course->id] = $value->grade;
                }

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

            $country = Auth::user()->country;
            $grades = new Grades;
            $grades = $grades->get_grades($country);
            $data['grades_letters'] =  $grades;

            
            return view("dashboard.calculator",$data);
    }
    
    public function test(){

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
            foreach($courses as $key => $course){
                $grade = new Result;
                $grade = $grade->get_result(Auth::user()->id,$course->id);
                foreach($grade as $key => $value){
                    $data['grades'][$course->id] = $value->grade;
                }

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

                    if(!isset($data['section'][1][2])){
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

                    if(!isset($data['section'][2][2])){
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

                    if(!isset($data['section'][3][2])){
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

                    if(!isset($data['section'][4][2])){
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

                    if(!isset($data['section'][5][2])){
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

            $country = Auth::user()->country;
            $grades = new Grades;
            $grades = $grades->get_grades($country);
            $data['grades_letters'] =  $grades;

            
           
            return view("dashboard.test",$data);
            }
    }

    public function target_cgpa(){
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
                return view("dashboard.target",$data);

            }

    }

    public function saved_targets(){
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
        }


        $all_targets = new targetValues;
        $data['all_targets'] = $all_targets->get_all_users_targets(Auth::user()->id);
        $all_targets = $all_targets->get_all_users_targets(Auth::user()->id);


        $target = new Targets;
        $data['courses'] = $target->get_target(Auth::user()->id);
        $courses = $target->get_target(Auth::user()->id);

        foreach($all_targets  as $taregt_key => $value){
            foreach($courses as $key => $course){
                
                    $data['grades'][$course->id] = $course->grade;
            

                // Array section that will decide how many semesters in a year to show on Calculator page

                    // Year 1
                    if(!isset($data['section'][1][1])){
                        if($course->level == 1 and $course->semester == 1){
                            $data['section'][1][1][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][1][2])){
                        if($course->level == 1 and $course->semester == 2){
                            $data['section'][1][2][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][1][3])){
                        if($course->level == 1 and $course->semester == 3){
                            $data['section'][1][3][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][1][4])){
                        if($course->level == 1 and $course->semester == 4){
                            $data['section'][1][4][] = $value->target_cgpa;
                        }
                    }

                    // Year 2
                    if(!isset($data['section'][2][1])){
                        if($course->level == 2 and $course->semester == 1){
                            $data['section'][2][1][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][2][2])){
                        if($course->level == 2 and $course->semester == 2){
                            $data['section'][2][2][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][2][3])){
                        if($course->level == 2 and $course->semester == 3){
                            $data['section'][2][3][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][2][4])){
                        if($course->level == 2 and $course->semester == 4){
                            $data['section'][2][4][] = $value->target_cgpa;
                        }
                    }

                    // Year 3
                    if(!isset($data['section'][3][1])){
                        if($course->level == 3 and $course->semester == 1){
                            $data['section'][3][1][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][3][2])){
                        if($course->level == 3 and $course->semester == 2){
                            $data['section'][3][2][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][3][3])){
                        if($course->level == 3 and $course->semester == 3){
                            $data['section'][3][3][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][3][4])){
                        if($course->level == 3 and $course->semester == 4){
                            $data['section'][3][4][] = $value->target_cgpa;
                        }
                    }

                    // Year 4
                    if(!isset($data['section'][4][1])){
                        if($course->level == 4 and $course->semester == 1){
                            $data['section'][4][1][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][4][2])){
                        if($course->level == 4 and $course->semester == 2){
                            $data['section'][4][2][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][4][3])){
                        if($course->level == 4 and $course->semester == 3){
                            $data['section'][4][3][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][4][4])){
                        if($course->level == 4 and $course->semester == 4){
                            $data['section'][4][4][] = $value->target_cgpa;
                        }
                    }

                    // Year 5
                    if(!isset($data['section'][5][1])){
                        if($course->level == 5 and $course->semester == 1){
                            $data['section'][5][1][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][5][2])){
                        if($course->level == 5 and $course->semester == 2){
                            $data['section'][5][2][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][5][3])){
                        if($course->level == 5 and $course->semester == 3){
                            $data['section'][5][3][] = $value->target_cgpa;
                        }
                    }

                    if(!isset($data['section'][5][4])){
                        if($course->level == 5 and $course->semester == 4){
                            $data['section'][5][4][] = $value->target_cgpa;
                        }
                    }
                
            }

        }

            $country = Auth::user()->country;
            $grades = new Grades;
            $grades = $grades->get_grades($country);
            $data['grades_letters'] =  $grades;

        return view("dashboard.saved_targets",$data);
    }

    public function results(){
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
        }
        $course = new Course;
        $data['courses'] = $course->get_courses($school,$department);
        $courses = $course->get_courses($school,$department);
        foreach($courses as $key => $course){
            $grade = new Result;
            $grade = $grade->get_result(Auth::user()->id,$course->id);
            foreach($grade as $key => $value){
                $data['grades'][$course->id] = $value->grade;
            }

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

            $country = Auth::user()->country;
            $grades = new Grades;
            $grades = $grades->get_grades($country);
            $data['grades_letters'] =  $grades;

            
            
        return view("dashboard.results",$data);
    }
    

    public function referral(){
         // The user is logged in...
         $school = Auth::user()->school_name;
         $faculty = Auth::user()->faculty_name;
         $department = Auth::user()->department_name;
            
             $school_details = new School;
             $school_logo = $school_details->get_school_logo($school);
             $school_nickname = $school_details->get_school_nickname($school);
             foreach($school_nickname as $key => $value){
                $data['school_nickname'] = $value->school_nickname;
            }
             foreach($school_logo as $key => $value){
                 $data['school_logo'] = $value->school_logo;
             }
             $course = new Course;
             $data['courses'] = $course->get_courses($school,$department);
             $courses = $course->get_courses($school,$department);
             foreach($courses as $key => $course){
                 $grade = new Result;
                 $grade = $grade->get_result(Auth::user()->id,$course->id);
                 foreach($grade as $key => $value){
                     $data['grades'][$course->id] = $value->grade;
                 }
 
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
 
             $users = new User;
             $data['refered_users'] = $users->refered_users();
             $data['subscribed_refered_users'] = $users->subscribed_refered_users();

             $withdrawal = new Withdrawal;
             $data['withdrawals'] = $withdrawal->withdrawals();

             $wallet = new Wallet;
             $data['balance'] = $wallet->balance();

             $country = Auth::user()->country;
             $grades = new Grades;
             $grades = $grades->get_grades($country);
             $data['grades_letters'] =  $grades;

            //  dd($data);
        return view('dashboard.referral',$data);
    }

    public function clear_notifications(Request $request){
        Notification::where('user_id',Auth::user()->id)->where('seen',false)->delete();;
        $request->session()->forget('notifications');
    }

    
}

