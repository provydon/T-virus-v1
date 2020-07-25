<?php

namespace App\Listeners;

use App\Events\ForgotPassword;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;
use App\Mail\TestEmail;



class SendPasswordResetLink
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
    
        // $data['user_id'] = $event->user_id;
        // $data['user_name'] = $event->user_name;
        // $data['token'] = $event->token;
        // $data['email'] = $event->email;

       
        // Mail::send('emails.notification',$data,function($message) use ($data){
        //     $message->from('mygpa@chigisoft.com','Admin');
        //     $message->to($data['email'],$data['user_name']);
        //     $message->subject('mygpa.app Password');
        // });

        $data = ['message' => 'This is a test!'];

        Mail::to('providenceifeosame@gmail.com')->send(new TestEmail($data));

        return 'Password Sent To Your E-mail';
    }
}
