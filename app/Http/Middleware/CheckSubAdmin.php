<?php

namespace App\Http\Middleware;

use Closure;

class CheckSubAdmin
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
        
        $sub_admin = $request->session()->get('sub_admin');

        if ($sub_admin == 'yes') {            
            return $next($request);
        }else{
            return redirect()->route("calculator")->with([
                "fail" => "Unauthorized request, be careful"
            ]);

        }
    }
}
