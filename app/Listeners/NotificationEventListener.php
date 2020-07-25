<?php

namespace App\Listeners;

use App\Events\NotificationEvent;
use Illuminate\Support\Facades\Auth;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Notification;

class NotificationEventListener
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
     * @param  NotificationEvent  $event
     * @return void
     */
    public function handle(NotificationEvent $event)
    {
       
        if ($event->command == 'referal register') {
            $notification = new Notification;
            $notification->user_id = $event->data['refering_user_id'];
            $notification->msg = $event->data['new_user_fname']." ".$event->data['new_user_lname']. " was referred with your Link" ;
            $notification->seen = false;
            $notification->save();
        }

        if ($event->command == 'referal subscription') {
            $notification = new Notification;
            $notification->user_id = $event->data['refering_user_id'];
            $notification->msg = $event->data['new_user_fname']." ".$event->data['new_user_lname']. " your referred user, has subscribed." ;
            $notification->seen = false;
            $notification->save();

        }

        if ($event->command == 'Subscription') {
            $notification = new Notification;
            $notification->user_id = $event->data['user_id'];
            $notification->msg = "You're Subscribed!!!";
            $notification->seen = false;
            $notification->save();
        }
    }
}
