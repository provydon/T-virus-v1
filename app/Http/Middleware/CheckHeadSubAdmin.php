<?php

namespace App\Http\Middleware;

use Closure;

class CheckHeadSubAdmin
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
    
        $head_sub_admin = $request->session()->get('head_sub_admin');

        if ($head_sub_admin == 'yes') {            
            return $next($request);
        }else{
            return redirect()->route("calculator")->with([
                "fail" => "Unauthorized request, be careful"
            ]);

        }
    }
}
