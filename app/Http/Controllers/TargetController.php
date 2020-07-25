<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use App\School;
use App\Faculty;
use App\Department;
use App\Course;
use App\User;
use App\UserLog;
use App\Result;
use App\Targets;
use App\targetValues;
use Carbon\Carbon;
use DateTime;


class TargetController extends Controller
{
    //
    public function save_target(Request $request){

            $target_cgpa = $request->target_cgpa;

            $credit_unit = $request->credit_units;
            $course_code = $request->course_codes;
            $grades = $request->grades;
            $years = $request->years;
            $semester = $request->semesters;
            $course_id = $request->course_ids;

            // if user has had the Target CGPA Saved before
            $target = new Targets;
            $if_targets_exist = $target->if_targets_exist(Auth::user()->id,$target_cgpa);

            if(!$if_targets_exist->isEMpty()){
                foreach($if_targets_exist as $targets => $targ){
                    $targe = Targets::where('id', $targ->id)->first();
                    $targe->delete(); 
                }
            }
            else{
                foreach($credit_unit as $key => $value){

                    $target = new Targets;

                    if($grades[$key] != null){
                        $target->target_cgpa = $target_cgpa;
                        $target->user_id = Auth::user()->id;
                        $target->course_id =  $course_id[$key];
                        $target->course_code = $course_code[$key];
                        $target->grade = $grades[$key];
                        $target->credit_unit = $credit_unit[$key];
                        $target->level = $years[$key];
                        $target->semester = $semester[$key];
                        $target->status = "created";
                        $target->save();
                    }
                    else{
                        
                        }
                    
                }

                $user_target = new targetValues;
                $user_target_exist = $user_target->if_target_exist(Auth::user()->id,$target_cgpa);

                if($user_target_exist->isEmpty()){
                    $user_target->target_cgpa = $request->target_cgpa;
                    $user_target->user_id = Auth::user()->id;
                    $user_target->save();
                }
                else{
                    $data = ['created_at' => new DateTime()];
                    $update_target_value = $user_target->update_target(Auth::user()->id,$target_cgpa,$data);
                }

                
                    
                return "saved";

            }

            foreach($credit_unit as $key => $value){

                $target = new Targets;
               
                if($grades[$key] != null){
                    $target->target_cgpa = $target_cgpa;
                    $target->user_id = Auth::user()->id;
                    $target->course_id =  $course_id[$key];
                    $target->course_code = $course_code[$key];
                    $target->grade = $grades[$key];
                    $target->credit_unit = $credit_unit[$key];
                    $target->level = $years[$key];
                    $target->semester = $semester[$key];
                    $target->status = "created";
                    $target->save();
                }
                else{
                    
                    }
               
            }
           
            

            $user_target = new targetValues;
            $user_target_exist = $user_target->if_target_exist(Auth::user()->id,$target_cgpa);

            if($user_target_exist->isEmpty()){
                $user_target->target_cgpa = $request->target_cgpa;
                $user_target->user_id = Auth::user()->id;
                $user_target->save();
            }
            else{
                $data = ['created_at' => new DateTime()];
                $update_target_value = $user_target->update_target(Auth::user()->id,$target_cgpa,$data);
            }

            
                
            return "saved";
                    
           
    }
}
