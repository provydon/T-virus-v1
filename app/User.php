<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use DB;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function all_dept_users($country,$school,$department){
        $all_users = User::where('country', $country)->where('school_name', $school)->where('department_name', $department)->get();
        return $all_users;
    }

    public function all_school_users($country,$school){
        $all_users = User::where('country', $country)->where('school_name', $school)->get();
        return $all_users;
    }

     public function all_users(){
        $all_users = User::get();
        return $all_users;
    }

    public function all_students(){
        $all_users = User::get();
        foreach($all_users as $key => $student){
            if($student->school_name != null){
                $all_students[] = $student;
            }
        }
        return $all_students;
    }


    public function get_user($email){
        $user = User::where('email', $email)->get();
        return $user;
    }

    public function get_user_via_id($user_id){
        $user = User::where('id', $user_id)->get();
        return $user;
    }

    public function get_user_via_school($email,$school){
        $user = User::where('email', $email)->where('school_name', $school)->get();
        return $user;
    }

    public function login($email,$password,$remember)
	{
		$user = $this->get_user($email);

		if ($user->isEmpty()) {
			$message = 'User not found';
		}else{
			if (Auth::attempt(['email' => $email, 'password' => $password],$remember)){
				$message = 'Login successful';
			}else{
				$message = 'Invalid password';
			}
		}		
		
		return $message;
    } 

    public function login_via_school($email,$password,$school,$remember)
	{
		$user = $this->get_user_via_school($email,$school);

		if ($user->isEmpty()) {
			$message = 'User not found for '.$school;
		}else{
			if (Auth::attempt(['email' => $email, 'password' => $password],$remember)){
				$message = 'Login successful';
			}else{
				$message = 'Invalid password';
			}
		}		
		
		return $message;
    } 

    public function update_user($email,$data)
	{
        DB::table('users')->where('email', $email)->update($data);	
        return "updated";
    } 

    public function update_cgpa($email,$data)
	{
        DB::table('users')->where('email',$email)->update($data);	
        return "updated";
    } 

    public function refered_users(){
        $users = DB::table('users')->where('refering_user',Auth::user()->id)->get();
        return $users;
    }

    public function subscribed_refered_users(){
        $users = DB::table('users')->where('refering_user',Auth::user()->id)->where('subscribed',1)->get();
        return $users;
    }

    public function getIp(){
        foreach (array('HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR') as $key){
            if (array_key_exists($key, $_SERVER) === true){
                foreach (explode(',', $_SERVER[$key]) as $ip){
                    $ip = trim($ip); // just to be safe
                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false){
                        return $ip;
                    }
                }
            }
        }
    }
}
