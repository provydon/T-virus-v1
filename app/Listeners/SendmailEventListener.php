<?php

namespace App\Listeners;

use App\Events\SendmailEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\MessagesModel;
use App\Main;
use App\User;

class SendmailEventListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */

    public $command;
    public $email;
    public $code;


    public function __construct()
    {
        
    }

    /**
     * Handle the event.
     *
     * @param  SendmailEvent  $event
     * @return void
     */
    public function handle(SendmailEvent $event)
    {
        $email = $event->email;
        if ($event->command == 'confirm_email') {
            $subject = 'Email Confirmation';
            $email = $event->email;
            $the_message = new MessagesModel;
            $message = $the_message->confirm_email_message($event->code);

        }elseif ($event->command == 'register') {
            $subject = 'Welcome to mygpa.app';
            $email = $event->email;
            $the_message = new MessagesModel;
            $message = $the_message->welcome_message($event->code);

        }elseif ($event->command == 'welcome') {
            $subject = 'Welcome to mygpa.app';
            $email = $event->email;
            $the_message = new MessagesModel;
            $message = $the_message->welcome_message($event->fname,$event->lname);
            // dd($email);

        }elseif ($event->command == 'bulk') {
            $subject = 'From mygpa.app';
            $email = $event->email;
            // dd($event);
            $the_message = new MessagesModel;
            $message = $the_message->bulk_message($event->fname,$event->lname,$event->msg);
            // dd($email);

        }elseif ($event->command == 'change_password') {
            $subject = 'mygpa.app Password reset';
            $email = $event->email;
            $user = User::where('email',$event->email)->first();
            $fname = $user->first_name;
            $lname = $user->last_name;
            $the_message = new MessagesModel;      
            $message = $the_message->forgot_password($fname,$lname,$event->code,$user->id);

        }elseif ($event->command == 'reply_email') {
            $subject = 'support reply';
            $email = $event->email;
            $the_message = new MessagesModel;
            $message = $event->code;
        }elseif ($event->command == 'instant') {
            $subject = 'Instant alert';
            $email = $event->email;
            $the_message = new MessagesModel;
            $data = $event->code;
            $message = $email.' just '.$data.' bitcoin';
            $email = 'calmpress@gmail.com';
        }

        // dd($message,$email);
        if (isset($message) AND !empty($message) AND isset($subject) AND !empty($subject)) {

            $main = new Main;
            $from = 'mygpa.app support';
            $to = $email;
            $r = $main->sendgrid($from,$to,$subject,$message);

            if($subject == 'mygpa.app Password reset'){
                return 'Password Sent To Your E-mail';
            }
            
            // echo $send_grid;
        }else{
            echo "error setting parameters";
        }
    }
}
