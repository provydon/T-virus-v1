<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Event;
use App\Events\NotificationEvent;
use Illuminate\Http\Request;
use App\Events\ForgotPassword;
use App\Events\SendmailEvent;
use App\Transaction;
use App\School;
use App\Faculty;
use App\Department;
use App\User;
use App\User_Log;
use App\passwordReset;
use App\Subscription;
use App\Wallet;
use App\Main;
use App\Notification;


use Carbon\Carbon;


class AuthController extends Controller
{
    //
    public function get_Login($school = null,$refering_user = null){

        // dd($refering_user,$school);
        session(['project_name' => 'mygpa.app']);

        if($school != null){
            $school_data = new School;
            $school_dat = $school_data->get_school_data($school);

            if($school_dat->isEmpty()){
                abort(404);
            }else{
                $data['school'] = $school_data->get_school_data($school);

                if($refering_user != null){
                    $data['refering_user'] = $refering_user;
                }

                // dd($school_dat);
                $school = $school_dat[0]['school_name'];
                $faculties = new faculty;
                $data['faculties'] = $faculties->load_faculties($school);

                return view('login',$data);
            }
            
        }
        else{
            return redirect('/uniport');
        }


    }

    public function referal($refering_user = null){

        if($refering_user != null){
            
            $school = "uniport";
            $school_data = new School;
            $school_dat = $school_data->get_school_data($school);

            if($school_dat->isEmpty()){
                abort(404);
            }else{
                $data['school'] = $school_data->get_school_data($school);

                $check_user = User::where('id',$refering_user)->first();

                if($check_user != null){
                    $data['refering_user'] = $refering_user;
                }else{
                    abort(404);
                }

                // dd($school_dat);
                $school = $school_dat[0]['school_name'];
                $faculties = new faculty;
                $data['faculties'] = $faculties->load_faculties($school);
                
                $data['register'] = "toggled";

                return view('login',$data);
            }
            
        }
        else{
            abort(404);
        }

    }

    public function logout(Request $request) {
        $school = $request->session()->get('school_nickname');
        Auth::logout();
        $request->session()->flush();
        return redirect('/'.$school);
      }
    
    public function forgotPassword(Request $request){

        $user = User::where('email',$request->password_email)->first();
        if($user != null){
            $data['user_id'] = $user['id'];
            $data['user_name'] = $user['first_name'];
            $data['token']= str_random(32);
            $data['email']= $request->password_email;

            // Check if user has token before
            $check_user = passwordReset::where('email',$request->password_email)->first();
            if($check_user == null){

                $reset = new passwordReset;
                $reset->email = $request->password_email;
                $reset->token = $data['token'];

                $reset->save();

            }else{

            // update token
            passwordReset::where('email',$request->password_email)->update(['token' => $data['token']]);
            
            }

            $data['command'] = "change_password";
            $data['email'] = $request->password_email;
            $data['first_name'] = null;
            $data['last_name'] = null;
            $data['code'] = $data['token'];


            $response = Event::fire(new SendmailEvent($data));

            // $response = Event::fire(new ForgotPassword($data));
            return $response;

        }else{

            return 'User Not Found!';
        }
        
        
    } 

    public function resetPage($token,$id){
        // dd($token,$id);

        $user = User::find($id);
        $data['user'] = User::find($id);

        if($user != null){
            $check = passwordReset::where('email',$user->email)->where('token',$token)->first();
            if($check != null){
                
                $school = School::where('school_name',$user->school_name)->first();
                
                $school_data = new School;
                $school_dat = $school_data->get_school_data($school->school_nickname);
                $data['school'] = $school_data->get_school_data($school->school_nickname);
    
                $school = $school_dat[0]['school_name'];
                $faculties = new faculty;
                $data['faculties'] = $faculties->load_faculties($school);
    
                return view('password_reset',$data);
            }else{
                return abort(404);
            }
    
        }else{
            return abort(404);
        }

    }

    public function changePassword(Request $request){

        // dd($request->all());
        $new_password = bcrypt($request['password']);
        User::where('id',$request->user_id)->update(['password' => $new_password]);

        return 'Password Changed';
    }


    /* *********************
         RAVE
    **********************/
    public function subscriptions(){
        $main = new Main;
        $data['user'] = Auth::user();
        $data['plans'] = Subscription::all();
        $data['rave'] = $main->rave;

        if ($data['rave'] == 'live') {
            $data['ravePublic'] = $main->ravePublic;
        }else{
            $data['ravePublic'] = $main->ravePublicTest;
        }
        
        $data['txRef'] = 'mygpa'.Carbon::now()->timestamp;
        // dd($data);
        return view('dashboard.subscriptions',$data);
    }

    public function verify_payment($trans_id = null){
        $main = new Main;
        $trans = new Transaction;
        $user = Auth::user();
        $checkTrans = $trans->where('transaction_id',$trans_id)->first();
        // $checkTrans = '';
        if (empty($checkTrans)) {
            $validateTrans = $main->raveVerify($trans_id);
        // dd($validateTrans['status']);
            if ($validateTrans['status'] == 'true') {

                // Check Referal
                if(Auth::user()->refering_user != null){
                    $check_transactions = $trans->where('email',Auth::user()->email)->first();
                    if($check_transactions == null){
                        $check_wallet = Wallet::where('user_id',Auth::user()->refering_user)->first();

                        if($check_wallet == null){
                            $wallet = new Wallet;
                            $wallet->user_id = Auth::user()->refering_user;
                            $wallet->balance = 50;
                            $wallet->save();
                        }else{
                            $balance = $check_wallet->balance;
                            $new_balance = $balance + 50;
                            $update_wallet = Wallet::where('user_id',Auth::user()->refering_user)->update([
                                "balance" => $new_balance
                            ]);

                        }
                    }
                }
                
                $trans->email = Auth::user()->email;
                $trans->transaction_id = $trans_id;
                $trans->status = "completed";
                $trans->save();

                // fetch Subscription Details
                $subscription_details = Subscription::where('price',$validateTrans['amount'])->first();
              
                if($subscription_details['duration'] == '4 months'){
                    $sub_end_date = Carbon::now()->addMonths(4);
                }
                if($subscription_details['duration'] == '12 months'){
                    $sub_end_date = Carbon::now()->addMonths(12);
                }
                
                // Update User
                $update_user = User::where('id',Auth::user()->id)->update([
                    "subscribed" => true,
                    "subscription_id" => $subscription_details['id'],
                    "subscription_start" => Carbon::now(),
                    "subscription_end" => $sub_end_date
                ]);

                $data = ["success"=>'Payment completed, you can now access the full features of the app'];
            }else{
                $data = ['fail'=>'Transaction could not be verified'];
            }
        }else{
            $data = ['fail'=>'Transaction not valid'];
        }
                
        // dd($data);
        return redirect()->route("calculator")->with($data);
    }


     /* *********************
         PAYSTACK
    **********************/
    public function paystack_subscriptions(){
        $main = new Main;
        $data['user'] = Auth::user();
        $data['plans'] = Subscription::all();
        $data['paystack'] = $main->paystack;

        if ($data['paystack'] == 'live') {
            $data['paystackPublic'] = $main->paystackPublic;
        }else{
            $data['paystackPublic'] = $main->paystackPublicTest;
        }
        
        $data['txRef'] = 'mygpa'.Carbon::now()->timestamp;
        // dd($data);
        return view('dashboard.subscriptions',$data);
    }

    public function verify_paystack_payment($trans_id = null){
        $main = new Main;
        $trans = new Transaction;
        $user = Auth::user();
        $checkTrans = $trans->where('transaction_id',$trans_id)->first();
        // $checkTrans = '';
        if (empty($checkTrans)) {
            $validateTrans = $main->paystackVerify($trans_id);
        // dd($validateTrans['status']);
            if ($validateTrans['status'] == 'true') {

                // Check Referal
                if(Auth::user()->refering_user != null){
                    $check_transactions = $trans->where('email',Auth::user()->email)->first();
                    if($check_transactions == null){
                        $check_wallet = Wallet::where('user_id',Auth::user()->refering_user)->first();

                        if($check_wallet == null){
                            $wallet = new Wallet;
                            $wallet->user_id = Auth::user()->refering_user;
                            $wallet->balance = 50;
                            $wallet->save();
                        }else{
                            $balance = $check_wallet->balance;
                            $new_balance = $balance + 50;
                            $update_wallet = Wallet::where('user_id',Auth::user()->refering_user)->update([
                                "balance" => $new_balance
                            ]);

                        }
                    }

                    $ref['new_user_fname'] =  Auth::user()->first_name;
                    $ref['new_user_lname'] =  Auth::user()->last_name;
                    $ref['refering_user_id'] =  Auth::user()->refering_user;
                    $ref['command'] =  'referal subscription';

                    Event::fire(new NotificationEvent($ref));

                }
                
                $trans->email = Auth::user()->email;
                $trans->transaction_id = $trans_id;
                $trans->status = "completed";
                $trans->save();

                // fetch Subscription Details
                $subscription_details = Subscription::where('price',$validateTrans['amount'])->first();
              
                if($subscription_details['duration'] == '4 months'){
                    $sub_end_date = Carbon::now()->addMonths(4);
                }
                if($subscription_details['duration'] == '12 months'){
                    $sub_end_date = Carbon::now()->addMonths(12);
                }
                
                // Update User
                $update_user = User::where('id',Auth::user()->id)->update([
                    "subscribed" => true,
                    "subscription_id" => $subscription_details['id'],
                    "subscription_start" => Carbon::now(),
                    "subscription_end" => $sub_end_date
                ]);

               
                $ref['user_id'] =  Auth::user()->id;
                $ref['command'] =  'Subscription';

                Event::fire(new NotificationEvent($ref));

                $notifications = Notification::where('user_id',Auth::user()->id)->where('seen',false)->get()?: [];
                session(['notifications' => $notifications]);


                $data = ["success"=>'Payment completed'];
            }else{
                $data = ['fail'=>'Transaction could not be verified'];
            }
        }else{
            $data = ['fail'=>'Transaction not valid'];
        }
                
        // dd($data);
        return redirect()->route("calculator")->with($data);
    }



    public function settings(){

        // dd(session()->all());

        $data['schools']= School::all();
        $school = Auth::user()->school_name;
        
        if($school != null){
            $faculties = new Faculty;
            $data['faculties'] = $faculties->load_all_faculties($school);
            $faculties = $faculties->load_all_faculties($school);

            if($faculties->isEmpty()){
                $data['fail'] = $school.' has no Faculties or Departments to show, Head Sub Admin Should go add Faculties and Departments';
                return view('dashboard.settings',$data);
            }
            return view('dashboard.settings',$data);
        }
        return view('dashboard.settings');
    }

    public function setup(Request $request){
        $email = Auth::user()->email;
        $user = new User;

                

       
        if($request['school'] != null){
            $data = ['country'=>$request['country'],'school_name'=>$request['school_name'],'faculty_name'=>$request['faculty_name'],'department_name'=>$request['department_name']];
            $update = $user->update_user($email,$data);
            if($update == "updated"){

                // school
                $request->session()->put('school', $request['school_name']);
                session(['school' => $request['school_name']]);
                Session::set('items', $items);

                // faculty
                $request->session()->put('faculty', $request['faculty_name']);
                session(['faculty' => $request['faculty_name']]);

                // department
                $request->session()->put('department',$request['department_name']);
                session(['department' => $request['department_name']]);

                if(Auth::user()->subscribed == 0){

                    return  redirect()->route('about');
                    
                    // return redirect()->route("subscriptions")->with([
                    //     "new-signup" => "You're not Suscribed!!!. To be able to Calculate your CGPA, Target your CGPA, Save Targets and Save Results, you need to suscribe here"
                    // ]);
         
                }else{
                    return  redirect()->route('calculator');
                }
            }
        }
        
        else{
            $data = ['faculty_name'=>$request['faculty_name'],'department_name'=>$request['department_name']];
            $update = $user->update_user($email,$data);
            if($update == "updated"){

                // school
                $request->session()->put('school', $request['school_name']);
                session(['school' => $request['school_name']]);

                // faculty
                $request->session()->put('faculty', $request['faculty_name']);
                session(['faculty' => $request['faculty_name']]);

                // department
                $request->session()->put('department',$request['department_name']);
                session(['department' => $request['department_name']]);

                // dd(session()->all());

                if(session('subscription') == 0){
                    
                    return  redirect()->route('about');

                    // return redirect()->route("subscriptions")->with([
                    //       "new-signup" => "You're not Suscribed!!!. The App is free for today on 11/12/2018 but To be able to Calculate your CGPA, Target your CGPA, Save Targets and Save Results from tomorrow, you need to suscribe here"
                    //  ]);
         
                }else{
                    return  redirect()->route('calculator');
                }

            }
        }
    }
    public function tester(){
        $main = new Main;
        $from = 'support';
        $to = 'providenceifeosame@gmail.com';
        $subject = 'T-VIRUS';
        $message = 'Hey provy don this is SUPARDYKE testing the email service and its working, kindly pull from git and look at the tester function in the authcontroller';
        $r = $main->sendgrid($from,$to,$subject,$message);
        //dd($r);
    }

    public function about(){
        return view('dashboard.about');
    }
}
