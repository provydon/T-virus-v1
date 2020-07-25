<?php

namespace App\Http\Middleware;

use Closure;

class Settings
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
        $school = $request->session()->get('school');
        $faculty = $request->session()->get('faculty');
        $department = $request->session()->get('department');

        if($school == null or $faculty == null or $department == null){
           return  redirect()->route('settings');
        }else{
            return $next($request);
        }

    }
}
