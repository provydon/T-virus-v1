<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Input;
use App\Events\SendmailEvent;
use App\School;
use App\Faculty;
use App\Department;
use App\Course;
use App\User;
use App\UserLog;
use App\Role;
use View;

class headSubAdminController extends Controller
{
    //


    public function __construct(){
        // $this->middleware('role');
        $this->middleware('guest');
        $this->middleware('role');
        $this->middleware('Head_Sub_Admin_role');
    }

    public function courses(){
            // The user is logged in...
            $school = Auth::user()->school_name;
            $faculty = Auth::user()->faculty_name;
            $department = Auth::user()->department_name;
    
            if($school == null){
               return  redirect()->route('settings');
            }
            else{
               
                $school_details = new School;
                $school_logo = $school_details->get_school_logo($school);
                foreach($school_logo as $key => $value){
                    $data['school_logo'] = $value->school_logo;
                }

                $faculties = new Faculty;
                $data['faculties'] = $faculties->load_faculties($school);


                return view("admin.HeadSubAdmin.courses",$data);
            }
    }

    public function send_bulk_email(Request $request){

        if($request->users == "All Users"){
            $users = User::all();
            foreach($users as $key=>$user){
                $emails[] = $user->email;
            }
        }else{
            
            $emails = $request->users;
        }

        foreach($emails as $key=>$email){
            $email_user = User::where('email',$email)->first();
        
            $data['command'] = "bulk";
            $data['email'] = $email;
            $data['first_name'] = $email_user->first_name;
            $data['last_name'] = $email_user->last_name;
            $data['message'] = $request->msg;
            $data['code'] = null;

            Event::fire(new SendmailEvent($data));
            
        }

        return "Emails Sent To Selected Users";

    }


    public function all_students(){
        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        if($school == null){
           return  redirect()->route('settings');
        }
        else{

            $data['admined_depts'] = array();
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }

            $all_users = new User;
            $data['all_users'] = $all_users->all_school_users(Auth::user()->country,$school);
            $all_users = $all_users->all_school_users(Auth::user()->country,$school);


            $data['subed_users'] = User::where('school_name',$school)->where('subscribed',true)->get();
           
           
            return view("admin.HeadSubAdmin.students",$data);
        }
    }

    public function departments(){
        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        if($school == null){
           return  redirect()->route('settings');
        }
        else{
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }

            $all_depts = new Department;
            $data['all_depts'] = $all_depts->load_all_depts($school);

            $all_faculty = new Faculty;
            $data['faculties'] = $all_faculty->load_faculties($school);

            return view("admin.HeadSubAdmin.departments",$data);
        }

    }

    public function faculties(){
        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        if($school == null){
           return  redirect()->route('settings');
        }
        else{
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }


            $all_faculty = new Faculty;
            $data['all_faculties'] = $all_faculty->load_all_faculties($school);

            return view("admin.HeadSubAdmin.faculties",$data);
        }
    }

    public function add_department(Request $request){

        $school = Auth::user()->school_name;
        $dept = new Department;
        $dept = $dept->if_dept_exists($request['faculty'],Auth::user()->school_name,$request['dept']);
        if($dept->isEmpty()){
           
            $department = new Department;
            
            $department->department_name = $request['dept'];
            $department->faculty_name = $request['faculty'];
            $department->school_name = Auth::user()->school_name;
            $department->years = $request['years'];
            $department->semesters = $request['semesters'];
            $department->status = "created";
            $department->save();

            return redirect()->route('head-sub-admin-departments')->with(['success' => 'Department Added']);
        }
        else{
            return redirect()->route('head-sub-admin-departments')->with(['fail' => 'Department already exist for '.$school]);
        }
    }

    public function add_faculty(Request $request){

        $school = Auth::user()->school_name;
        $faculty = new Faculty;
        $faculty = $faculty->if_faculty_exists($request['faculty'],$school);
        if($faculty->isEmpty()){
            $faculty = new Faculty;

            $faculty->faculty_name = ucfirst($request['faculty']);
            $faculty->school_name = Auth::user()->school_name;
            $faculty->status = "created";
            $faculty->save();

            return redirect()->route('head-sub-admin-faculties')->with(['success' => 'Faculty Added']);
        }
        else{
            return redirect()->route('head-sub-admin-faculties')->with(['fail' => 'Faculty already exist for '.$school]);
        }

        
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

            $course = new Course;
            $data['courses'] = $course->get_courses($school,$department);
            $courses = $course->get_courses($school,$department);
            if($courses->isEmpty()){
                return "No Courses to Show For ".$department;
            }
            else{
                $data['section'] = $this->get_courses_and_section_it($courses);
                return View::make("admin.HeadSubAdmin.courses_template", $data)->render();
            }
    }
    
    public function update_course(Request $request){

       
        $school = Auth::user()->school;
        $faculty = $request->faculty;
        $department = $request->dept;


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

       
        return redirect()->route('head-sub-admin-courses')->with([
            "success" => "Courses Updated",
            "old_faculty" => $faculty,
            "old_dept" => $department,
            "old_school" => $school,
        ]);

    }

    public function add_courses(Request $request){

       


        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = $request->faculty;
        $department = $request->dept;
        $level = $request->level;
        $semester = $request->semester;

        if($request->faculty == ""){
            return redirect()->back()->with([
                "fail" => "No courses added!, You didn't set The faculty"
            ]);
        }
        else{
            if($request->dept == ""){
                return redirect()->back()->with([
                    "fail" => "No courses added!, You didn't set The Department"
                ]);
            }
            else{

                

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
                            $course->department_name = $request->dept;
                            $course->faculty_name = $request->faculty;
                            $course->school_name = Auth::user()->school_name;
                            $course->level = $request['level'];
                            $course->semester = $request['semester'];
                            $course->status = "created";
                            $course->save();

                        }
                    }else{
                        if($course_code[$key] == "XXX.XXX"){
                            if($course_code[$key] != null and $credit_unit[$key] != null){
                                $course = new Course;
                                
                                $course->course_code = $course_code[$key];
                                $course->credit_unit = $credit_unit[$key];
                                $course->department_name = $request->dept;
                                $course->faculty_name = $request->faculty;
                                $course->school_name = Auth::user()->school_name;
                                $course->level = $request['level'];
                                $course->semester = $request['semester'];
                                $course->status = "created";
                                $course->save();

                            }
                        }
                    }
                
                }
            }
        }

        return redirect()->route('head-sub-admin-courses')->with([
            "success" => "Courses Added",
            "old_faculty" => $faculty,
            "old_dept" => $department,
            "old_level" => $level,
            "old_semester" => $semester,
        ]);
    }

    public function make_sub_admin(Request $request){

        $user_name = new User;
        $user_names = $user_name->get_user_via_id($request->user_id);

        foreach($user_names as $key => $name){
            $first_name = $name->first_name;
            $last_name = $name->last_name;
            $school = $name->school_name;
            $dept = $name->department_name;
        }

        $role = new Role;
        $role = $role->check_if_user_is_any_admin($request->user_id);
        if($role->isEmpty()){
            $role = new Role;
            $role = $role->check_if_user_already_has_sub_admin($dept,$school);
            if(!$role->isEmpty()){
                return "fail";
            }
            else{
                $user = new Role;
                $user->user_id = $request->user_id;
                $user->sub_admin = "yes";
                $user->status = "created";
                $user->school_name = $school;
                $user->department_name = $dept;
                $user->save();
                
                return $first_name." ".$last_name." has been made Sub Admin";
            }
        }
        else{
            $role = new Role;
            $role = $role->check_if_user_is_already_sub_admin($request->user_id,$school,$dept);
            if(!$role->isEmpty()){
                return "fail";
            }
            else{
                $data = ['sub_admin'=>'yes'];
                $role = new Role;
                $role = $role->update_roles($request->user_id,$data);
                return $role;
            }
        }

    }

    public function sub_admins(){
         // The user is logged in...
         $school = Auth::user()->school_name;
         $faculty = Auth::user()->faculty_name;
         $department = Auth::user()->department_name;
 
         if($school == null){
            return  redirect()->route('settings');
         }
         else{
            
             $school_details = new School;
             $school_logo = $school_details->get_school_logo($school);
             foreach($school_logo as $key => $value){
                 $data['school_logo'] = $value->school_logo;
             }


             $sub_admins = new Role;
             $sub_admins = $sub_admins->get_all_school_sub_admins(Auth::user()->school_name);

            foreach($sub_admins as $key=>$user){
                $get_user = new User;
                $data['all_sub_admins'][] = $get_user->get_user_via_id($user->user_id);
                $get_user = $get_user->get_user_via_id($user->user_id);
            }


             return view("admin.HeadSubAdmin.sub_admins",$data);
         }
    }

    public function remove_sub_admins(Request $request){
        $data = ['sub_admin'=> null];
        $role = new Role;
        $role = $role->update_roles($request->user_id,$data);
        return $role;
        
    }

    public function update_dept(Request $request){

        $data = ["department_name" => $request->dept,"faculty_name" => $request->faculty,
         "years" => $request->years, "semesters" => $request->semesters];

        $update = new Department;
        $updated = $update->update_dept($request->dept_id,$data);

        $updated_dept = $update->get_dept($request->dept_id);
        
        return $updated_dept;

    }

    public function delete_dept(Request $request){

        
        $dept = Department::where('id',$request->dept_id)->first();
        $dept->delete(); 
        return "Department has been deleted!";
    }

    public function update_faculty(Request $request){

        $data = ["faculty_name" => $request->faculty];

        $update = new Faculty;
        $updated = $update->update_faculty($request->faculty_id,$data);

        $updated_faculty = $update->get_faculty($request->faculty_id);
        
        return $updated_faculty;
    }

    public function delete_faculty(Request $request){

        $faculty = Faculty::where('id',$request->faculty_id)->first();
        $faculty->delete(); 
        return "Faculty has been deleted!";
    }
}
