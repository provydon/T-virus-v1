<?php

namespace App\Http\Middleware;

use Closure;

class CheckRole
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
        $super_admin = $request->session()->get('super_admin');
        $admin = $request->session()->get('admin');
        $head_sub_admin = $request->session()->get('head_sub_admin');
        $sub_admin = $request->session()->get('sub_admin');

        if ($super_admin == 'yes' OR $admin == 'yes' OR $head_sub_admin == 'yes' OR $sub_admin == 'yes') {            
            return $next($request);
        }else{
            return redirect()->route("calculator")->with([
                "fail" => "Unauthorized request, be careful"
            ]);

        }
    }
}
