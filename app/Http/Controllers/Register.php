<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Event;
use App\Events\SendmailEvent;
use App\Events\NotificationEvent;
use App\School;
use Request as Getip;
use App\Department;
use App\User;
use App\User_Log;
use App\Role;
use Carbon\Carbon;
use App\Mail\TestEmail;

class Register extends Controller
{
    //
    public function signup(Request $request){
        $user = new User;
        $user_exist = $user->get_user($request['email']);

        if($user_exist->count() > 0){
            $msg = "User already exist";
            return $msg;
        }
        else{

            $new_user = new User;
            $new_user->first_name = ucfirst($request['firstname']);
            $new_user->last_name = ucfirst($request['lastname']);
            $new_user->password = bcrypt($request['password']);
            $new_user->email = $request['email'];
            $new_user->country = "Nigeria";
            $new_user->subscribed = false;
            if($request['school'] != null or !empty($request['school'])){
                $new_user->school_name  = $request['school'];
            }
            $new_user->save();

            $login_m = new User;
            $login = $login_m->login($request->email, $request->password,"true");
            $email = $request->email;
            if ($login == 'Login successful') {
                $theip = $request->ip();
                $current_time = Carbon::now();
                $current_time->toDateTimeString();
                $data = ['ip'=>$theip,'last_login'=>$current_time];

                if($request->refering_user != null){
                    $check_user = User::where('id',$request->refering_user)->first();
                    if($check_user != null){
                        if($request->refering_user == Auth::user()->id){

                        }else{
                            $data['refering_user'] = $request->refering_user;
                        }
                    }


                    $ref_new_user = User::where('email',$request['email'])->first();
                    $ref_refering_user = User::find($request->refering_user);

                    $ref['new_user_fname'] =  $ref_new_user->first_name;
                    $ref['new_user_lname'] =  $ref_new_user->last_name;
                    $ref['refering_user_id'] =  $ref_refering_user->id;
                    $ref['command'] =  'referal register';

                    
                    Event::fire(new NotificationEvent($ref));
                }

                $login_m->update_user($email,$data);
                
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

                $data['command'] = "welcome";
                $data['email'] = Auth::user()->email;
                $data['first_name'] = Auth::user()->first_name;
                $data['last_name'] = Auth::user()->last_name;
                $data['code'] = null;


                Event::fire(new SendmailEvent($data));
                
                return "Registration Successfull";
            }
            else{
                return  $login;
            }
        }
        
    }

    public function signup_via_fb(Request $request){
        $user = new User;
        $user_exist = $user->get_user($request['email']);

        if($user_exist->count() > 0){
            $msg = "User already exist";
            return $msg;
        }
        else{

            $new_user = new User;
            $new_user->first_name = ucfirst($request['first_name']);
            $new_user->last_name = ucfirst($request['last_name']);
            $new_user->password = bcrypt('provydon');
            $new_user->email = $request['email'];
            $new_user->photo = $request['picture'];
            $new_user->country = "Nigeria";
            if($request['school'] != null or !empty($request['school'])){
                $new_user->school_name  = $request['school'];
            }
            $new_user->save();

            $login_m = new User;
            $login = $login_m->login($request->email, $request->password,"true");
            $email = $request->email;
            if ($login == 'Login successful') {
                $theip = $request->ip();
                $current_time = Carbon::now();
                $current_time->toDateTimeString();
                $data = ['ip'=>$theip,'last_login'=>$current_time];
                $login_m->update_user($email,$data);
                
                $roles = new Role;
                $roles = $roles->get_roles(Auth::user()->id);


                // Put variables for settings and subscription middleware

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
                
                return "Registration Successfull";
            }
            else{
                return  $login;
            }
        }
        
    }
}
