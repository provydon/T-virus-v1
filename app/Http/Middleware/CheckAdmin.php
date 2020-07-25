<?php

namespace App\Http\Middleware;

use Closure;

class CheckAdmin
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

        $admin = $request->session()->get('admin');

        if ($admin == 'yes') {            
            return $next($request);
        }else{
            return redirect()->route("calculator")->with([
                "fail" => "Unauthorized request, be careful"
            ]);

        }
    }
}
