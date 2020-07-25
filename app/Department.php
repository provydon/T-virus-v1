<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    //
    public function load_depts($faculty,$school){
        $depts = Department::select('department_name')->where('faculty_name', $faculty)->where('school_name',$school)->get();
        return $depts;
    }
    public function load_all_depts($school){
        $depts = Department::where('school_name',$school)->orderBy('id', 'DESC')->get();
        return $depts;
    }
    public function load_years($faculty,$school,$dept){
        $years = Department::select('years')->where('department_name',$dept)->where('faculty_name', $faculty)->where('school_name',$school)->get();
        foreach($years as $key=>$value){
            for($i=1;$i<=$value->years;$i++){
                $years_array[] = $i;
            }
        }
        return $years_array;
    }

    public function if_dept_exists($faculty,$school,$dept){
        $dept = Department::where('department_name',$dept)->where('faculty_name', $faculty)->where('school_name',$school)->get();
        return $dept;
    }

    public function update_dept($id,$data)
	{
        $dept = Department::where('id', $id)->update($data);	
        return "updated";
    } 

    public function get_dept($id)
	{
        $depts = Department::select('department_name','faculty_name','years','semesters')->where('id',$id)->get();
        return $depts;
    } 

    public function load_semesters($faculty,$school,$dept){
        $semesters = Department::select('semesters')->where('department_name',$dept)->where('faculty_name', $faculty)->where('school_name',$school)->get();
        foreach($semesters as $key=>$value){
            for($i=1;$i<=$value->semesters;$i++){
                $semesters_array[] = $i;
            }
        }
    
        return $semesters_array;
    }

    public function all_depts(){
        $depts = Department::all();
        return $depts;
    }
}
