<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\School;
use App\Faculty;
use Request as Geturl;
use Request as Getip;
use App\Department;
use App\User;
use App\User_Log;
use App\Role;
use Carbon\Carbon;
use App\Notification;


class Login extends Controller
{
    //
    public function Login(Request $request){
            $login_m = new User;

            if($request->school != null){
                $login = $login_m->login_via_school($request->email, $request->password, $request->school,$request->checked);
                $email = $request->email;
                if ($login == 'Login successful') {
                   
                    $theip = $login_m->getIp();
                    $current_time = Carbon::now();
                    $current_time->toDateTimeString();
                    $data = ['ip'=>$theip,'last_login'=>$current_time];

                    // dd($data);
                    $login_m->update_user($email,$data);

                    $school_details = new School;
                    $school_nickname = $school_details->get_school_nickname(Auth::user()->school_name);
                    foreach($school_nickname as $key => $value){
                        $request->session()->put('school_nickname', $value->school_nickname);
                    }
                    
        
                    $roles = new Role;
                    $roles = $roles->get_roles(Auth::user()->id);

                    // subscription
                    $request->session()->put('subscription', Auth::user()->subscribed);
                    session(['subscription' => Auth::user()->subscribed]);

                    // school
                    $request->session()->put('school', Auth::user()->school_name);
                    session(['school' => Auth::user()->school_name]);

                    // faculty
                    $request->session()->put('faculty', Auth::user()->faculty_name);
                    session(['faculty' => Auth::user()->faculty_name]);

                    // department
                    $request->session()->put('department', Auth::user()->department_name);
                    session(['department' => Auth::user()->department_name]);

                    // CheckRole
                    if(!$roles->isEmpty()){
                        foreach($roles as $key=>$role){
                            if($role->super_admin == "yes"){
                                $request->session()->put('super_admin', 'yes');
                                session(['super_admin' => 'yes']);
                            }
                            if($role->admin == "yes"){
                                $request->session()->put('admin', 'yes');
                                session(['admin' => 'yes']);
                            }
                            if($role->sub_admin == "yes"){
                                $request->session()->put('sub_admin', 'yes');
                                session(['sub_admin' => 'yes']);
                            }
                            if($role->head_sub_admin == "yes"){
                                $request->session()->put('head_sub_admin', 'yes');
                                session(['head_sub_admin' => 'yes']);
                            }
                        }
                    }

                    // Check Notifications
                    $notifications = Notification::where('user_id',Auth::user()->id)->where('seen',false)->get()?: [];
                    session(['notifications' => $notifications]);
                    $request->session()->put('notifications', $notifications);

                   

                    return $login;
                }
                else{
                    return  $login;
                }
            }
            else{
                $login = $login_m->login($request->email, $request->password, $request->checked);
                $email = $request->email;
                if ($login == 'Login successful') {
                    $theip = $request->ip();
                    $current_time = Carbon::now();
                    $current_time->toDateTimeString();
                    $data = ['ip'=>$theip,'last_login'=>$current_time];
                    $login_m->update_user($email,$data);
        
                    
                    return $login;
                } 
                else{
                    return  $login;
                }
            
            }
           
        
    }


    public function Login_via_fb(Request $request){

        
        $login_m = new User;
        $password = "provydon";

        if($request->school != null){
            $login = $login_m->login_via_school($request->email, $password, $request->school,$request->checked);
            $email = $request->email;
            if ($login == 'Login successful') {
               
                $theip = $login_m->getIp();
                $current_time = Carbon::now();
                $current_time->toDateTimeString();
                $data = ['ip'=>$theip,'last_login'=>$current_time];
                $login_m->update_user($email,$data);

                $school_details = new School;
                $school_nickname = $school_details->get_school_nickname(Auth::user()->school_name);
                foreach($school_nickname as $key => $value){
                    $request->session()->put('school_nickname', $value->school_nickname);
                }
                
    
                $roles = new Role;
                $roles = $roles->get_roles(Auth::user()->id);

                if(!$roles->isEmpty()){
                    foreach($roles as $key=>$role){
                        if($role->super_admin == "yes"){
                            $request->session()->put('super_admin', 'yes');
                            session(['super_admin' => 'yes']);
                        }
                        if($role->admin == "yes"){
                            $request->session()->put('admin', 'yes');
                            session(['admin' => 'yes']);
                        }
                        if($role->sub_admin == "yes"){
                            $request->session()->put('sub_admin', 'yes');
                            session(['sub_admin' => 'yes']);
                        }
                        if($role->head_sub_admin == "yes"){
                            $request->session()->put('head_sub_admin', 'yes');
                            session(['head_sub_admin' => 'yes']);
                        }
                    }
                }

                return $login;
            }
            else{
                return  $login;
            }
        }
        else{
            $login = $login_m->login($request->email, $password, $request->checked);
            $email = $request->email;
            if ($login == 'Login successful') {
                $theip = $request->ip();
                $current_time = Carbon::now();
                $current_time->toDateTimeString();
                $data = ['ip'=>$theip,'last_login'=>$current_time];
                $login_m->update_user($email,$data);
    
                
                return $login;
            } 
            else{
                return  $login;
            }
        
        }
       
    
    }
}
