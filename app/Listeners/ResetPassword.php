<?php

namespace App\Listeners;

use App\Events\ForgotPassword;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\auth_token;
use Mail;

class ResetPassword
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ForgotPassword  $event
     * @return void
     */
    public function handle(ForgotPassword $event)
    {
        //
        $user = $event->user;

        $name = $event->name;

        $email = $event->email;


        $token_key = $this->generateBarcodeNumber();
        $reset_password = new auth_token;

        $check = $reset_password->check_for_email($email);

      
        if($check->isEmpty()){

            $reset_password->email = $email;
            $reset_password->token =  $token_key;
            $reset_password->save();

            $data['token'] = $token_key;
            $data['name'] = $name;

            Mail::send('emails.test',$data,function($message) use ($email,$name){
                $message->from('admin@mtest.com');
                $message->to($email,$name);
                $message->subject('Thank you for your quote!');
            });

            return "mail sent";

        }else{
            $data = ['token'=> $token_key];
            
            $update_token = $reset_password->update_token($email,$data);

            if($update_token == "updated"){

                $data['token'] = $token_key;
                $data['name'] = $name;
             
                Mail::send('emails.test',$data,function($message) use ($email,$name){
                    $message->from('admin@mtest.com');
                    $message->to($email,$name);
                    $message->subject('Thank you for your quote!');
                });

                return "mail sent";

            }
        }

    }

    public function generateBarcodeNumber() {
        $number = mt_rand(1000000000, mt_getrandmax()); // better than rand()
    
        // otherwise, it's valid and can be used
        return $number;
    }
}
