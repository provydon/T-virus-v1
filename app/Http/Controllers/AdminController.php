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
use App\Role;
use App\Country;

class AdminController extends Controller
{
    //

    public function __construct(){
        // $this->middleware('role');
        $this->middleware('guest'); 
        $this->middleware('role');
        $this->middleware('Admin_role');
    }

    
     public function all_students(){

            $all_users = new User;
            $data['all_users'] = $all_users->all_students();

            return view("admin.Admin.students",$data);
  
    }

    public function sub_admins(){
    
            $sub_admins = new Role;
            $sub_admins = $sub_admins->get_all_sub_admins();

           foreach($sub_admins as $key=>$user){
               $get_user = new User;
               $data['all_sub_admins'][] = $get_user->get_user_via_id($user->user_id);
               $get_user = $get_user->get_user_via_id($user->user_id);
           }
            return view("admin.Admin.sub_admins",$data);
        
    }

    public function head_sub_admins(){
    
        $sub_admins = new Role;
        $sub_admins = $sub_admins->get_all_head_sub_admins();
        if(!$sub_admins->isEmpty()){
            foreach($sub_admins as $key=>$user){
                $get_user = new User;
                $data['all_head_sub_admins'][] = $get_user->get_user_via_id($user->user_id);
                $get_user = $get_user->get_user_via_id($user->user_id);
            }
            return view("admin.Admin.head_sub_admins",$data);
        }
        else{
            return view("admin.Admin.head_sub_admins");
        }
            

    }

    public function schools(){
        $school = new School;
        $schools = $school->get_all_schools();
        $data['schools'] = $school->get_all_schools();

        $country = new Country;
        $countries = $country->get_all_countries();
        $data['countries'] = $country->get_all_countries();
        return view("admin.Admin.schools",$data);
    }

    public function make_head_sub_admin(Request $request){

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
            $role = $role->check_if_user_already_has_head_sub_admin($school);
            if(!$role->isEmpty()){
                return "fail";
            }
            else{
                $user = new Role;
                $user->user_id = $request->user_id;
                $user->head_sub_admin = "yes";
                $user->status = "created";
                $user->school_name = $school;
                $user->department_name = $dept;
                $user->save();
                
                return $first_name." ".$last_name." has been made Head Sub Admin for ".$school;
            }
        }
        else{
            $role = new Role;
            $role = $role->check_if_user_is_already_head_sub_admin($request->user_id,$school);
            if($role->isEmpty()){
                $role = new Role;
                $role = $role->check_if_user_already_has_head_sub_admin($school);
                if(!$role->isEmpty()){
                    return "fail";
                }
                else{
                    $data = ['head_sub_admin'=>'yes'];
                    $role = new Role;
                    $role = $role->update_roles($request->user_id,$data);
                    return $first_name." ".$last_name." has been made Head Sub Admin for ".$school;
                }
            }
            else{
                return "fail";
            }
        }

    }

    public function remove_head_sub_admin(Request $request){
        $data = ['head_sub_admin'=> null];
        $role = new Role;
        $role = $role->update_roles($request->user_id,$data);
        return $role;
    }

    public function update_school(Request $request){

        $data = ["school_name" => $request->school, "country" => $request->country, "school_nickname" => $request->school_nickname];

        $update = new School;
        $updated = $update->update_school($request->school_id,$data);

        $updated_school = $update->get_school($request->school_id);
        
        return $updated_school;

    }

    public function add_school(Request $request){

        
        $school = new school;
        $school = $school->if_school_exists($request->country,$request->school);
        if($school->isEmpty()){
           
            $school = new school;
            
            $school->school_name = ucfirst($request->school);
            $school->country = $request->country;
            $school->school_nickname = $request->school_nickname;
            $school->status = "created";
            $school->save();

            return redirect()->route('admin-schools')->with(['success' => $request->school.' School Added']);
        }
        else{
            return redirect()->route('admin-schools')->with(['fail' => 'School already exist']);
        }
    }

    public function delete_school(Request $request){

        
        $school = School::where('id',$request->school_id)->first();
        $school->delete(); 
        return "School has been deleted!";
    }

    public function courses(){
            $countries = new Country;
            $data['countries'] = $countries->get_all_countries();
            return view("admin.Admin.courses",$data);
    }
    
    public function add_courses(Request $request){

        // The user is logged in...
        $country = $request->country;
        $school = $request->school;
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
                            $course->school_name = $request->school;
                            $course->level = $request['level'];
                            $course->semester = $request['semester'];
                            $course->status = "created";
                            $course->save();

                        }
                    }
                
                }
            }
        }
        return redirect()->route('admin-courses')->with([
            "success" => "Courses Added",
            "old_faculty" => $faculty,
            "old_dept" => $department,
            "old_level" => $level,
            "old_semester" => $semester,
            "old_school" => $school,
            "old_country" => $country,

        ]);
    }

    public function update_course(Request $request){

        $country = $request->country;
        $school = $request->school;
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
        
        return redirect()->route('admin-courses')->with([
            "success" => "Courses Updated",
            "old_faculty" => $faculty,
            "old_dept" => $department,
            "old_school" => $school,
            "old_country" => $country,

        ]);

    }


    public function departments(){

        $country = new Country;
        $data['countries'] = $country->get_all_countries();

        $dept = new Department;
        $data['all_depts'] = $dept-> all_depts();

        return view("admin.Admin.departments",$data);
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

    public function add_department(Request $request){

        $school = $request->school;
        $country = $request->country;
        $dept = new Department;
        $dept = $dept->if_dept_exists($request['faculty'],$school,$request['dept']);
        if($dept->isEmpty()){
           
            $department = new Department;
            
            
            $department->department_name = $request['dept'];
            $department->faculty_name = $request['faculty'];
            $department->school_name = $school;
            $department->years = $request['years'];
            $department->semesters = $request['semesters'];
            $department->status = "created";
            $department->save();

            return redirect()->route('admin-departments')->with(['success' => 'Department Added']);
        }
        else{
            return redirect()->route('admin-departments')->with(['fail' => 'Department already exist for '.$school]);
        }
    }

    public function remove_sub_admins(Request $request){
        $data = ['sub_admin'=> null];
        $role = new Role;
        $role = $role->update_roles($request->user_id,$data);
        return $role;
        
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

    public function add_faculty(Request $request){

        $school = $request->school;
        $faculty = new Faculty;
        $faculty = $faculty->if_faculty_exists($request['faculty'],$school);
        
        if($faculty->isEmpty()){
            $faculty = new Faculty;
            $faculty->faculty_name = ucfirst($request['faculty']);
            $faculty->school_name =  $request->school;
            $faculty->status = "created";
            $faculty->save();

            return redirect()->route('admin-faculties')->with(['success' => 'Faculty Added']);
        }
        else{
            return redirect()->route('admin-faculties')->with(['fail' => 'Faculty already exist for '.$school]);
        }

        
    }

    public function faculties(){
      
        $country = new Country;
        $data['countries'] = $country->get_all_countries();

        $all_faculty = new Faculty;
        $data['all_faculties'] = $all_faculty->all_faculties();

        return view("admin.Admin.faculties",$data);

    }

    public function privacy(){
        return view("policy");
    }
}
