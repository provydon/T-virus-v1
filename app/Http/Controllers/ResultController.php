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

class ResultController extends Controller
{
    //
    public function save_result(Request $request){

        
        $user = new User;
        $data = ['cgpa'=>$request['cgpa']];
        $update_cgpa = $user->update_cgpa(Auth::user()->email,$data);

        
    

                    $credit_unit = $request->credit_units;
                    $course_code = $request->course_codes;
                    $grades = $request->grades;
                    $years = $request->years;
                    $semester = $request->semesters;
                    $course_id = $request->course_ids;
        
                   
                    foreach($credit_unit as $key => $value){
                    
                        
                                
                                
                                $result = new Result;
                                $result_exist = $result->if_exist_result(Auth::user()->id,$course_id[$key]);
                                
                                if($result_exist->isEmpty()){
                                    if($grades[$key] != null){
                                        $result->user_id = Auth::user()->id;
                                        $result->course_id =  $course_id[$key];
                                        $result->course_code = $course_code[$key];
                                        $result->grade = $grades[$key];
                                        $result->credit_unit = $credit_unit[$key];
                                        $result->level = $years[$key];
                                        $result->semester = $semester[$key];
                                        $result->status = "created";
                                        $result->save();
                                    }
                                    else{
                                        
                                        }
                                   
                                }else{
                                    $data = ['grade'=>$grades[$key],'credit_unit'=>$credit_unit[$key]];
                                    $update_result = $result->update_result(Auth::user()->id,$course_id[$key],$data);
                                }
                            }
                           
                        echo"saved";
                    
    }
}
