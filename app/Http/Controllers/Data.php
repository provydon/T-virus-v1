<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\School;
use App\Faculty;
use Request as Geturl;
use Request as Getip;
use App\Department;
use App\User;
use App\Auth;
use App\User_Log;
use Carbon\Carbon;

class Data extends Controller
{
    //
    public function load_course_depts(Request $request){
        
                $dept = new Department;
                $depts = $dept->load_depts($request['faculty'],$request['school']);
                
                return $depts;
            }
        
}
