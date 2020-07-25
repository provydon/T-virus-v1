<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;

use Closure;


class Subscription
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $subscription = Auth::user()->subscribed;

        
        
        if($subscription == 0){
           return redirect()->route("subscriptions")->with([
                 "fail-subscription" => "To be able to Calculate your CGPA, Target CGPA, Save Targets and Save Results, you need to suscribe here"
            ]);

        }else{
             // Check if Subscription has ended
             if(Carbon::parse(Auth::user()->subscription_end)->isPast()){
                 // Update User
                $update_user = User::where('id',Auth::user()->id)->update([
                    "subscribed" => false,
                    "subscription_id" => null,
                    "subscription_start" => null,
                    "subscription_end" => null
                ]);

                return redirect()->route("subscriptions")->with([
                    "expired-subscription" => "To be able to Calculate your CGPA, Target CGPA, Save Targets and Save Results, you need to suscribe here"
               ]);

            }else{
                return $next($request);
            }
        }
    }
}
