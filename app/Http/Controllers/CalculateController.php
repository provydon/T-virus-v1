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
use App\Grades;

class CalculateController extends Controller
{

    //Controller for all Mathematical Calculations

    
    public  function calculate_cgpa(Request $request){
   
        $Tcu=0;
        $Tqp=0;
        
        $credit_unit = $request->units;
        $course_code = $request->course_codes;
        $grades = $request->letterGrade;
        
        // Open up the Grades array
        foreach($grades as $year=>$semester){
            // Year 1
            if($year == 1){
                if(isset($semester[1])){
                    $year_1_1st_semester_grades = $semester[1];
                }
                if(isset($semester[2])){
                    $year_1_2nd_semester_grades = $semester[2];
                }
            }

            // Year 2
            if($year == 2){
                if(isset($semester[1])){
                    $year_2_1st_semester_grades = $semester[1];
                }
                if(isset($semester[2])){
                    $year_2_2nd_semester_grades = $semester[2];
                }
            }

            // Year 3
            if($year == 3){
                if(isset($semester[1])){
                    $year_3_1st_semester_grades = $semester[1];
                }
                if(isset($semester[2])){
                    $year_3_2nd_semester_grades = $semester[2];
                }
            }

            // Year 4
            if($year == 4){
                if(isset($semester[1])){
                    $year_4_1st_semester_grades = $semester[1];
                }
                if(isset($semester[2])){
                    $year_4_2nd_semester_grades = $semester[2];
                }
            }

            // Year 4
            if($year == 5){
                if(isset($semester[1])){
                    $year_5_1st_semester_grades = $semester[1];
                }
                if(isset($semester[2])){
                    $year_5_2nd_semester_grades = $semester[2];
                }
            }
               
        }

        // Open up the Credit Units array
        foreach($credit_unit as $year => $semester){
             // Year 1

            
             if($year == 1){
                if(isset($semester[1])){
                    $cu_array[1] = $semester[1];
                }
                if(isset($semester[2])){
                    $cu_array[2] = $semester[2];
                }
            }

            // Year 2
            if($year == 2){
                if(isset($semester[1])){
                    $cu_array[3] = $semester[1];
                }
                if(isset($semester[2])){
                    $cu_array[4] = $semester[2];
                }
            }

            // Year 3
            if($year == 3){
                if(isset($semester[1])){
                    $cu_array[5] = $semester[1];
                }
                if(isset($semester[2])){
                    $cu_array[6] = $semester[2];
                }
            }

            // Year 4
            if($year == 4){
                if(isset($semester[1])){
                    $cu_array[7] = $semester[1];
                }
                if(isset($semester[2])){
                    $cu_array[8] = $semester[2];
                }
            }

            // Year 4
            if($year == 5){
                if(isset($semester[1])){
                    $cu_array[9] = $semester[1];
                }
                if(isset($semester[2])){
                    $cu_array[10] = $semester[2];
                }
            }
        }

    
        #start calculation#


        ###Year 1###
        ###First semester##
        if(isset($year_1_1st_semester_grades)){
            $Tcu1=0;
            $Tqp1=0;
            foreach($year_1_1st_semester_grades as $key => $grade){
                
                $cu = $cu_array[1][$key];
                
                $cu1 = $cu;       
                
                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp1=$cu1 * 5;
                
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp1=$cu1 * 4;
                }
                elseif($grade == "C")
                {
                    $QP= $cu * 3 ;
                    $qp1=$cu1 * 3;
                
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp1=$cu1 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp1=$cu1 * 1;
                }
                elseif($grade == "F")
                {
                    $cu=0;
                    $QP= 0;
                    $qp1=0;
                    $cu1=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp1=0;
                    $cu1=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu1=$Tcu1 + $cu1 ;
                $Tqp1=$Tqp1 +$qp1 ;
            }
            if($Tcu1==0){
                $Tcu1=1;
            }
            if($Tcu==0){
                $Tcu=0.000000000000000000000000000000000000000000000001;
            }
            $GPA1 = $Tqp1/$Tcu1 ;
            $GPA1 = round($GPA1,2);
            $data["1"] = $GPA1;
        }
        

        ###Year 1###
        ###Second semester##
        if(isset($year_1_2nd_semester_grades)){
            $Tcu2=0;
            $Tqp2=0;
            foreach($year_1_2nd_semester_grades as $key=>$grade){

                $cu = $cu_array[2][$key];
                $cu2 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp2=$cu2 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp2=$cu2 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp2=$cu2 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp2=$cu2 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp2=$cu2 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp2=0;
                    $cu2=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp2=0;
                    $cu2=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu2=$Tcu2 + $cu2 ;
                $Tqp2=$Tqp2 +$qp2 ;
            }
            if($Tcu2==0){
                $Tcu2=1;
            }
            $GPA2=$Tqp2/$Tcu2 ;
            $GPA2 = round($GPA2,2);
            $data["2"] = $GPA2;

            $GPAy1=$Tqp/$Tcu ;
            $GPAy1 = round($GPAy1,2);
            $data["GPAy1"] = $GPAy1;

        }


        ###Year 2###
        ###First semester##
        if(isset($year_2_1st_semester_grades)){
            $Tcu3=0;
            $Tqp3=0;
            foreach($year_2_1st_semester_grades as $key=>$grade){

                $cu = $cu_array[3][$key];
                $cu3 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp3=$cu3 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp3=$cu3 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp3=$cu3 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp3=$cu3 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp3=$cu3 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp3=0;
                    $cu3=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp3=0;
                    $cu3=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu3=$Tcu3 + $cu3 ;
                $Tqp3=$Tqp3 +$qp3 ;
            }
            if($Tcu3==0){
                $Tcu3=1;
            }
            else{}
            $GPA3 = $Tqp3/$Tcu3 ;
            $GPA3 = round($GPA3,2);
            $data["3"] = $GPA3;
        }


        ###Year 2###
        ###Second semester##
        if(isset($year_2_2nd_semester_grades)){
            $Tcu4=0;
            $Tqp4=0;
            foreach($year_2_2nd_semester_grades as $key=>$grade){

                $cu = $cu_array[4][$key];
                $cu4 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp4=$cu4 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp4=$cu4 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp4=$cu4 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp4=$cu4 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp4=$cu4 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp4=0;
                    $cu4=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp4=0;
                    $cu4=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu4=$Tcu4 + $cu4 ;
                $Tqp4=$Tqp4 +$qp4 ;
            }
            if($Tcu4==0){
                $Tcu4=1;
            }
            $GPA4=$Tqp4/$Tcu4 ;
            $GPA4 = round($GPA4,2);
            $data["4"] = $GPA4;
        }



        ###Year 3###
        ###First semester##
        if(isset($year_3_1st_semester_grades)){
            $Tcu5=0;
            $Tqp5=0;
            foreach($year_3_1st_semester_grades as $key=>$grade){

                $cu = $cu_array[5][$key];
                $cu5 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp5=$cu5 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp5=$cu5 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp5=$cu5 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp5=$cu5 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp5=$cu5 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp5=0;
                    $cu5=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp5=0;
                    $cu5=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu5=$Tcu5 + $cu5 ;
                $Tqp5=$Tqp5 +$qp5 ;
            }
            if($Tcu5==0){
                $Tcu5=1;
            }
            else{}
            $GPA5 = $Tqp5/$Tcu5 ;
            $GPA5 = round($GPA5,2);
            $data["5"] = $GPA5;
        }



        ###Year 3###
        ###Second semester##
        if(isset($year_3_2nd_semester_grades)){
            $Tcu6=0;
            $Tqp6=0;
            foreach($year_3_2nd_semester_grades as $key=>$grade){

                $cu = $cu_array[6][$key];
                $cu6 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp6=$cu6 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp6=$cu6 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp6=$cu6 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp6=$cu6 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp6=$cu6 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp6=0;
                    $cu6=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp6=0;
                    $cu6=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu6=$Tcu6 + $cu6 ;
                $Tqp6=$Tqp6 +$qp6 ;
            }
            if($Tcu6==0){
                $Tcu6 = 1;
            }
            $GPA6=$Tqp6/$Tcu6 ;
            $GPA6 = round($GPA6,2);
            $data["6"] = $GPA6;
        }



        ###Year 4###
        ###First semester##
        if(isset($year_4_1st_semester_grades)){
            $Tcu7=0;
            $Tqp7=0;
            foreach($year_4_1st_semester_grades as $key=>$grade){

                $cu = $cu_array[7][$key];
                $cu7 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp7=$cu7 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp7=$cu7 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp7=$cu7 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp7=$cu7 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp7=$cu7 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp7=0;
                    $cu7=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp7=0;
                    $cu7=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu7=$Tcu7 + $cu7 ;
                $Tqp7=$Tqp7 +$qp7 ;
            }
            if($Tcu7==0){
                $Tcu7=1;
            }
            else{}
            $GPA7 = $Tqp7/$Tcu7 ;
            $GPA7 = round($GPA7,2);
            $data["7"] = $GPA7;
        }



        ###Year 4###
        ###Second semester##
        if(isset($year_4_2nd_semester_grades)){
            $Tcu8=0;
            $Tqp8=0;
            foreach($year_4_2nd_semester_grades as $key=>$grade){

                $cu = $cu_array[8][$key];
                $cu8 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp8=$cu8 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp8=$cu8 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp8=$cu8 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp8=$cu8 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp8=$cu8 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp8=0;
                    $cu8=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp8=0;
                    $cu8=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu8=$Tcu8 + $cu8 ;
                $Tqp8=$Tqp8 +$qp8 ;
            }
            if($Tcu8==0){
                $Tcu8=$Tcu8 +1;
            }
            $GPA8=$Tqp8/$Tcu8 ;
            $GPA8 = round($GPA8,2);
            $data["8"] = $GPA8;
        }



        ###Year 5###
        ###First semester##
        if(isset($year_5_1st_semester_grades)){
            $Tcu9=0;
            $Tqp9=0;
            foreach($year_5_1st_semester_grades as $key=>$grade){

                $cu = $cu_array[9][$key];
                $cu9 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp9=$cu9 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp9=$cu9 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp9=$cu9 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp9=$cu9 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp9=$cu9 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp9=0;
                    $cu9=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp9=0;
                    $cu9=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu9=$Tcu9 + $cu9 ;
                $Tqp9=$Tqp9 +$qp9 ;
            }
            if($Tcu9==0){
                $Tcu9=1;
            }
            else{}
            $GPA9 = $Tqp9/$Tcu9 ;
            $GPA9 = round($GPA9,2);
            $data["9"] = $GPA9;
        }



        ###Year 5###
        ###Second semester##
        if(isset($year_5_1st_semester_grades)){
            $Tcu10=0;
            $Tqp10=0;
            foreach($year_5_2nd_semester_grades as $key=>$grade){

                $cu = $cu_array[10][$key];
                $cu10 = $cu;

                if($grade == "A")
                {
                    $QP= $cu * 5 ;
                    $qp10=$cu10 * 5;
                }
                elseif($grade == "B")
                {
                    $QP= $cu * 4 ;
                    $qp10=$cu10 * 4;
                }
                elseif($grade == "C")
                {
                    $QP=$cu * 3 ;
                    $qp10=$cu10 * 3;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                    $qp10=$cu10 * 2;
                }
                elseif($grade == "E")
                {
                    $QP=$cu * 1;
                    $qp10=$cu10 * 1;
                }
                elseif($grade == 5)
                {
                    $QP= 0;
                    $qp10=0;
                    $cu10=0;
                    $cu=0;
                }
                else
                {
                    $cu=0;
                    $QP=0;
                    $qp10=0;
                    $cu10=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
                $Tcu10=$Tcu10 + $cu10 ;
                $Tqp10=$Tqp10 +$qp10 ;
            }
            if($Tcu10==0){
                $Tcu10=$Tcu10 +1;
            }
            $GPA10=$Tqp10/$Tcu10 ;
            $GPA10 = round($GPA10,2);
            $data["10"] = $GPA10;
        }
       


        $CGPA = $Tqp/$Tcu ;

        $data['TCU'] = $Tcu;
        $data['TQP'] = $Tqp;
        $data['CGPA'] = $CGPA;
        

        $CGPA = round($CGPA,2);
        $data['display_CGPA'] = $CGPA;
        

         return $data;         
    }
    public function calculate_and_check(Request $request){

        // get User Data...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;


        // get results and CGPA

        $course = new Course;
        $data['courses'] = $course->get_courses($school,$department);
        $courses = $course->get_courses($school,$department);

        foreach($courses as $key => $course){
            $grade = new Result;
            $grade = $grade->get_result(Auth::user()->id,$course->id);
            if(!$grade->isEmpty()){
                foreach($grade as $key => $value){
                    $grades[] = $value->grade;
                    $credit_units[] = $value->credit_unit;
                }
            }
            else{
                
            }
        }
        $data2 = $this->get_cgpa($credit_units,$grades);
        
        
        $data = $this->calculate_cgpa($request);
        
        $Tqp = $data2['TQP'] + $data['TQP'];

        $Tcu = $data2['TCU'] + $data['TCU'];

        $CGPA = $Tqp/$Tcu ;
        
        

        $data['TCU'] = $Tcu;
        $data['TQP'] = $Tqp;
        
        $data['CGPA'] = $CGPA;
        

        $CGPA = round($CGPA,2);
        $data['display_CGPA'] = $CGPA;

        return $data; 
    }
    public  function get_cgpa($credit_units,$grades){
            $Tcu=0;
            $Tqp=0;
           
            foreach($grades as $key=>$grade){

                $cu = $credit_units[$key];  
                
                if($grade == "A"){
                    $QP= $cu * 5 ;
                }
                elseif($grade == "B"){
                    $QP= $cu * 4 ;
                }
                elseif($grade == "C"){
                    $QP= $cu * 3 ;
                }
                elseif($grade == "D")
                {
                    $QP=$cu * 2;
                }
                elseif($grade == "E"){
                    $QP=$cu * 1;
                }
                elseif($grade == "F"){
                    $cu=0;
                    $QP= 0;
                }
                else {
                    $cu=0;
                    $QP=0;
                }
                $Tcu=$Tcu + $cu ;
                $Tqp=$Tqp +$QP ;
            }

            if($Tcu==0){
                $Tcu=0.000000000000000000000000000000000000000000000001;
            }

           
            $CGPA = $Tqp/$Tcu ;

            $data['TCU'] = $Tcu;
            $data['TQP'] = $Tqp;
            $data['CGPA'] = $CGPA;
            

            $CGPA = round($CGPA,2);
            $data['display_CGPA'] = $CGPA;

            return $data; 
    }
    public function get_data2(){

        $data2['TCU'] = 0;
        $data2['remaining_TQP'] = 0;
        $data2['remaining_TQP2'] = 0;

        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        $course = new Course;
        $data['courses'] = $course->get_courses($school,$department);
        $courses = $course->get_courses($school,$department);
       
        if($courses->isEmpty()){
            return  "";
        }
        foreach($courses as $key => $course){
            $grade = new Result;
            $grade = $grade->get_result(Auth::user()->id,$course->id);
            if($grade->isEmpty()){
                $data2['remaining_TQP'] = $data2['remaining_TQP'] + ($course->credit_unit * 5);
                $data2['remaining_TQP2'] = $data2['remaining_TQP2'] + ($course->credit_unit * 1);
           
                if($course->credit_unit == 10){
                    $data2['ten_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 9){
                    $data2['nine_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 8){
                    $data2['eight_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 7){
                    $data2['seven_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 6){
                    $data2['six_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 5){
                    $data2['five_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 4){
                    $data2['four_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 3){
                    $data2['three_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 2){
                    $data2['two_credit_units'][] = $course->credit_unit;
                }
                if($course->credit_unit == 1){
                    $data2['one_credit_units'][] = $course->credit_unit;
                }

                $data2['TCU'] = $data2['TCU'] + $course->credit_unit;
            }
            else{
               
            }
            if(!$grade->isEmpty()){
                foreach($grade as $key=>$value){
                    if($value->grade != "F"){
                        $data2['TCU'] = $data2['TCU'] + $course->credit_unit;
                    }
                }
            }
        }
      
        return $data2;
    } 
    public function target_cgpa(Request $request){
        
            $country = Auth::user()->country;
            $country_grades = new Grades;
            $country_grades = $country_grades->get_grades($country);
            $data['grades_letters'] =  $country_grades;


            $target = $request['target'];
            $data['target_cgpa'] = $request['target'];

            
            // get User Data...
            $school = Auth::user()->school_name;
            $faculty = Auth::user()->faculty_name;
            $department = Auth::user()->department_name;

            

            if($target > 5.0){
                
                return redirect()->route("target_cgpa")->with([
                    "fail" => "The CGPA value of $target you targeted is not feasible for ".Auth::user()->country."'s CGPA scale"
                ]);
            }
    
            $data['target'] = $request['target'];
            
            $data2 = $this->get_data2();

            
            if($data2 == ""){
                return  redirect()->route("target_cgpa")->with([
                    "fail" => "There are no courses for department of ". $department.",".$school.". yet"
                ]);
            }
            $TQP = $target * $data2['TCU'];
           
            
            // get results and CGPA

            $course = new Course;
            $data['courses'] = $course->get_courses($school,$department);
            $courses = $course->get_courses($school,$department);

            foreach($courses as $key => $course){
                $grade = new Result;
                $grade = $grade->get_result(Auth::user()->id,$course->id);
                
                if($grade->isEmpty()){
                   
                }
                else{
                    foreach($grade as $key => $value){
                        $grades[] = $value->grade;
                        $credit_units[] = $value->credit_unit;
                    }
                }
            }
            if(isset($credit_units) or isset($grades)){
                $data3 = $this->get_cgpa($credit_units,$grades);
            }
            else{
                $data3['TQP'] = 0;
                $data3['TCU'] = 0;
                $data3['CGPA'] = 0;
            }
           
            
            $diff_TQP = $TQP - $data3['TQP'];
        
            
            
            if($data2['remaining_TQP'] < $diff_TQP){
                return redirect()->route("target_cgpa")->with([
                    "fail" => "The CGPA value of $target you targeted is not feasible based on your current Results. Please Reduce Target"
                ]);
            }

            elseif($data2['remaining_TQP'] == $diff_TQP ){
                $data = $this->set_all_grades_to_A();
                $data['target_msg'] = "For a CGPA of $target!,Your results should look like this.";
                
                return $this->target_page($data);
            }

            elseif($data2['remaining_TQP'] > $diff_TQP ){
                $data['target_msg'] = "For a CGPA of $target!,Your results should look like this.";
                

                $reduction_QP = $data2['remaining_TQP'] - $diff_TQP;
             
                

                $init_reduction_QP = $reduction_QP;
               
                // Checking with A and B
                if(isset($data2['ten_credit_units'])){

                    foreach($data2['ten_credit_units'] as $key => $value){

                        $A_QP = $value * 5;
                        $C_QP = $value * 3;

                        $QP_reduced_by = $A_QP - $C_QP;

                        if($QP_reduced_by < $reduction_QP){
                            $reduced_courses['10'][] = "C";
                            $reduction_QP = $reduction_QP - $QP_reduced_by;
                        }
                    elseif($QP_reduced_by == $reduction_QP){
                            $reduced_courses['10'][] = "C";
                            return  $this->display_target_grades($reduced_courses,$data);
                        }
                        elseif($QP_reduced_by > $reduction_QP){

                            $B_QP = $value * 4;

                            $QP_reduced_by = $A_QP - $B_QP;

                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['10'][] = "B";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['10'][] = "B";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){

                            }
                        }
                    }
                    
                }
                if(isset($data2['nine_credit_units'])){
                
                    foreach($data2['nine_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['9'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['9'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['9'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['9'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                       
                }
                if(isset($data2['eight_credit_units'])){
                    foreach($data2['eight_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['8'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['8'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['8'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['8'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['seven_credit_units'])){
                    foreach($data2['seven_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['7'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['7'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['7'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['7'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['six_credit_units'])){
                    foreach($data2['six_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['6'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['6'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['6'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['6'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                        
                }
                if(isset($data2['five_credit_units'])){
                    foreach($data2['five_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['5'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['5'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['5'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['5'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['four_credit_units'])){
                    foreach($data2['four_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['4'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['4'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['4'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['4'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['three_credit_units'])){
                    foreach($data2['three_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['3'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['3'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['3'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['3'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['two_credit_units'])){
                    foreach($data2['two_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['2'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['2'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['2'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['2'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                        }
                }
                if(isset($data2['one_credit_units'])){
                    foreach($data2['one_credit_units'] as $key => $value){
        
                            $A_QP = $value * 5;
                            $C_QP = $value * 3;
        
                            $QP_reduced_by = $A_QP - $C_QP;
        
                            if($QP_reduced_by < $reduction_QP){
                                $reduced_courses['1'][] = "C";
                                $reduction_QP = $reduction_QP - $QP_reduced_by;
                            }
                            elseif($QP_reduced_by == $reduction_QP){
                                $reduced_courses['1'][] = "C";
                                return  $this->display_target_grades($reduced_courses,$data);
                            }
                            elseif($QP_reduced_by > $reduction_QP){
        
                                $B_QP = $value * 4;
        
                                $QP_reduced_by = $A_QP - $B_QP;
        
                                if($QP_reduced_by < $reduction_QP){
                                    $reduced_courses['1'][] = "B";
                                    $reduction_QP = $reduction_QP - $QP_reduced_by;
                                }
                                elseif($QP_reduced_by == $reduction_QP){
                                    $reduced_courses['1'][] = "B";
                                    return  $this->display_target_grades($reduced_courses,$data);
                                }
                                elseif($QP_reduced_by > $reduction_QP){
        
                                }
                            }
                    }
                }
              
                // dd($reduction_QP);
                // If  getting A's to C's couldn't reduce the QP enough try again considering A's to E's 
            

                if($reduction_QP >= 0.99 && $reduction_QP <= 1.09){
                    $target1 = $target + 0.01;
                    $target2 = $target + 0.02;
                    $target3 = $target + 0.03;

                    return redirect()->route("target_cgpa")->with([
                        "fail" => "based on your current Results, The CGPA value of $target you targeted is not exactly feasible. Try targeting with $target1 or $target2 or $target3"
                    ]);
                }
                if($reduction_QP > 1.09 or $reduction_QP < 0){
                   
                    return redirect()->route("target_cgpa")->with([
                        "fail" => " based on your current Results, The CGPA value of $target you targeted is way!!! lower than average.The calculator was not designed to target that low from your curent CGPA value. Please Try targeting with a Higher value."
                    ]);
                }
           
              return $this->display_target_grades($reduced_courses,$data);
            }
    }    
    public function display_target_grades($reduced_courses,$data){
         // The user is logged in...
         $school = Auth::user()->school_name;
         $faculty = Auth::user()->faculty_name;
         $department = Auth::user()->department_name;

    
        
         $school_details = new School;
         $school_logo = $school_details->get_school_logo($school);
         foreach($school_logo as $key => $value){
             $data['school_logo'] = $value->school_logo;
         }
         $course = new Course;
         $data['courses'] = $course->get_courses($school,$department);
         $courses = $course->get_courses($school,$department);




         // Get the size of each category of credit unit courses to be reduced
          // Ten credit units
          if(isset($reduced_courses['10'])){
             $ten_credit_units_courses_size = sizeof($reduced_courses['10']) - 1;
         }
         // Nine credit units
         if(isset($reduced_courses['9'])){
             $nine_credit_units_courses_size = sizeof($reduced_courses['9']) - 1;
         }
         
         // Eight credit units
         if(isset($reduced_courses['8'])){
             $eight_credit_units_courses_size = sizeof($reduced_courses['8']) - 1;
         }
         // Seven credit units
         if(isset($reduced_courses['7'])){
             $seven_credit_units_courses_size = sizeof($reduced_courses['7']) - 1;
         }
         // Six credit units
         if(isset($reduced_courses['6'])){
             $six_credit_units_courses_size = sizeof($reduced_courses['6']) - 1;
         }
         // Five credit units
         if(isset($reduced_courses['5'])){
             $five_credit_units_courses_size = sizeof($reduced_courses['5']) - 1;
         }
         // Four credit units
         if(isset($reduced_courses['4'])){
             $four_credit_units_courses_size = sizeof($reduced_courses['4']) - 1;
         }
         // Three credit units
         if(isset($reduced_courses['3'])){
             $three_credit_units_courses_size = sizeof($reduced_courses['3']) - 1;
         }
         // Two credit units
         if(isset($reduced_courses['2'])){
             $two_credit_units_courses_size = sizeof($reduced_courses['2']) - 1;
         }
         // One credit units
         if(isset($reduced_courses['1'])){
             $one_credit_units_courses_size = sizeof($reduced_courses['1']) - 1;
         }



                // Set Assinged Result Grades
                foreach($courses as $key => $course){
                        $grade = new Result;
                        $grade = $grade->get_result(Auth::user()->id,$course->id);

                        // Assign Target grades for Courses with Unassigned grades 
                        if($grade->isEmpty()){
                            // Ten credit units
                            if(isset($reduced_courses['10'])){
                                if($ten_credit_units_courses_size >= 0 and $course->credit_unit == 10){

                                    $data['grades'][$course->id] =  $reduced_courses['10'][$ten_credit_units_courses_size];
                                    $ten_credit_units_courses_size = $ten_credit_units_courses_size - 1;

                                }   
                            }

                            // Nine credit units
                            if(isset($reduced_courses['9'])){
                                if($nine_credit_units_courses_size >= 0 and $course->credit_unit == 9){

                                    $data['grades'][$course->id] =  $reduced_courses['9'][$nine_credit_units_courses_size];
                                    $nine_credit_units_courses_size = $nine_credit_units_courses_size - 1;

                                }  
                            }

                            // Eight credit units
                            if(isset($reduced_courses['8'])){
                                if($eight_credit_units_courses_size >= 0 and $course->credit_unit == 8){

                                    $data['grades'][$course->id] =  $reduced_courses['8'][$eight_credit_units_courses_size];
                                    $eight_credit_units_courses_size = $eight_credit_units_courses_size - 1;

                                }  
                            }
                        

                            // Seven credit units
                            if(isset($reduced_courses['7'])){
                                if($seven_credit_units_courses_size >= 0 and $course->credit_unit == 7){

                                    $data['grades'][$course->id] =  $reduced_courses['7'][$seven_credit_units_courses_size];
                                    $seven_credit_units_courses_size = $seven_credit_units_courses_size - 1;

                                }  
                            }
                            

                            // Six credit units
                            if(isset($reduced_courses['6'])){
                                if($six_credit_units_courses_size >= 0 and $course->credit_unit == 6){

                                    $data['grades'][$course->id] =  $reduced_courses['6'][$six_credit_units_courses_size];
                                    $six_credit_units_courses_size = $six_credit_units_courses_size - 1;
                                    
                                }  
                            }
                            


                            // Five credit units
                            if(isset($reduced_courses['5'])){
                                if($five_credit_units_courses_size >= 0 and $course->credit_unit == 5){

                                    $data['grades'][$course->id] =  $reduced_courses['5'][$five_credit_units_courses_size];
                                    $five_credit_units_courses_size = $five_credit_units_courses_size - 1;

                                }
                            }
                            


                            // Four credit units
                            if(isset($reduced_courses['4'])){
                                if($four_credit_units_courses_size >= 0 and $course->credit_unit == 4){

                                    $data['grades'][$course->id] =  $reduced_courses['4'][$four_credit_units_courses_size];
                                    $four_credit_units_courses_size = $four_credit_units_courses_size - 1;

                                }  
                            }
                            


                            // Three credit units
                            if(isset($reduced_courses['3'])){
                                if($three_credit_units_courses_size >= 0 and $course->credit_unit == 3){

                                    $data['grades'][$course->id] =  $reduced_courses['3'][$three_credit_units_courses_size];
                                    $three_credit_units_courses_size = $three_credit_units_courses_size - 1;

                                }  
                            }
                            

                            // Two credit units
                            if(isset($reduced_courses['2'])){
                                if($two_credit_units_courses_size >= 0 and $course->credit_unit == 2){

                                    $data['grades'][$course->id] =  $reduced_courses['2'][$two_credit_units_courses_size];
                                    $two_credit_units_courses_size = $two_credit_units_courses_size - 1;

                                }  
                            }
                        


                            // One credit units
                            if(isset($reduced_courses['1'])){
                                if($one_credit_units_courses_size >= 0 and $course->credit_unit == 1){

                                    $data['grades'][$course->id] =  $reduced_courses['1'][$one_credit_units_courses_size];
                                    $one_credit_units_courses_size = $one_credit_units_courses_size - 1;

                                }  
                            }

                            if(!isset($data['grades'][$course->id])){
                                $data['grades'][$course->id] =  "A";
                            }

                                // Array section that will decide how many semesters in a year to show on Calculator page

                            // Year 1
                            if(!isset($data['section'][1][1])){
                                if($course->level == 1 and $course->semester == 1){
                                    $data['section'][1][1][] = "exist";
                                }
                            }

                            if(!isset($data['section'][1][2])){
                                if($course->level == 1 and $course->semester == 2){
                                    $data['section'][1][2][] = "exist";
                                }
                            }

                            if(!isset($data['section'][1][2])){
                                if($course->level == 1 and $course->semester == 3){
                                    $data['section'][1][3][] = "exist";
                                }
                            }

                            if(!isset($data['section'][1][4])){
                                if($course->level == 1 and $course->semester == 4){
                                    $data['section'][1][4][] = "exist";
                                }
                            }




                            // Year 2
                            if(!isset($data['section'][2][1])){
                                if($course->level == 2 and $course->semester == 1){
                                    $data['section'][2][1][] = "exist";
                                }
                            }

                            if(!isset($data['section'][2][2])){
                                if($course->level == 2 and $course->semester == 2){
                                    $data['section'][2][2][] = "exist";
                                }
                            }

                            if(!isset($data['section'][2][2])){
                                if($course->level == 2 and $course->semester == 3){
                                    $data['section'][2][3][] = "exist";
                                }
                            }

                            if(!isset($data['section'][2][4])){
                                if($course->level == 2 and $course->semester == 4){
                                    $data['section'][2][4][] = "exist";
                                }
                            }




                            // Year 3
                            if(!isset($data['section'][3][1])){
                                if($course->level == 3 and $course->semester == 1){
                                    $data['section'][3][1][] = "exist";
                                }
                            }

                            if(!isset($data['section'][3][2])){
                                if($course->level == 3 and $course->semester == 2){
                                    $data['section'][3][2][] = "exist";
                                }
                            }

                            if(!isset($data['section'][3][2])){
                                if($course->level == 3 and $course->semester == 3){
                                    $data['section'][3][3][] = "exist";
                                }
                            }

                            if(!isset($data['section'][3][4])){
                                if($course->level == 3 and $course->semester == 4){
                                    $data['section'][3][4][] = "exist";
                                }
                            }



                            // Year 4
                            if(!isset($data['section'][4][1])){
                                if($course->level == 4 and $course->semester == 1){
                                    $data['section'][4][1][] = "exist";
                                }
                            }

                            if(!isset($data['section'][4][2])){
                                if($course->level == 4 and $course->semester == 2){
                                    $data['section'][4][2][] = "exist";
                                }
                            }

                            if(!isset($data['section'][4][2])){
                                if($course->level == 4 and $course->semester == 3){
                                    $data['section'][4][3][] = "exist";
                                }
                            }

                            if(!isset($data['section'][4][4])){
                                if($course->level == 4 and $course->semester == 4){
                                    $data['section'][4][4][] = "exist";
                                }
                            }



                            // Year 5
                            if(!isset($data['section'][5][1])){
                                if($course->level == 5 and $course->semester == 1){
                                    $data['section'][5][1][] = "exist";
                                }
                            }

                            if(!isset($data['section'][5][2])){
                                if($course->level == 5 and $course->semester == 2){
                                    $data['section'][5][2][] = "exist";
                                }
                            }

                            if(!isset($data['section'][5][2])){
                                if($course->level == 5 and $course->semester == 3){
                                    $data['section'][5][3][] = "exist";
                                }
                            }

                            if(!isset($data['section'][5][4])){
                                if($course->level == 5 and $course->semester == 4){
                                    $data['section'][5][4][] = "exist";
                                }
                            }


                        }
                        
                }
                
                $country = Auth::user()->country;
                $grades = new Grades;
                $grades = $grades->get_grades($country);
                $data['grades_letters'] =  $grades;

                return view("dashboard.target",$data);
    }
    public function set_all_grades_to_A(){

            // The user is logged in...
            $school = Auth::user()->school_name;
            $faculty = Auth::user()->faculty_name;
            $department = Auth::user()->department_name;

            $course = new Course;
            $data['courses'] = $course->get_courses($school,$department);
            $courses = $course->get_courses($school,$department);

            // Set Assinged Result Grades
            foreach($courses as $key => $course){
                $grade = new Result;
                $grade = $grade->get_result(Auth::user()->id,$course->id);
                if($grade->isEmpty()){
                    $data['grades'][$course->id] = "A";

                     // Array section that will decide how many semesters in a year to show on Calculator page

                    // Year 1
                    if(!isset($data['section'][1][1])){
                        if($course->level == 1 and $course->semester == 1){
                            $data['section'][1][1][] = "exist";
                        }
                    }

                    if(!isset($data['section'][1][2])){
                        if($course->level == 1 and $course->semester == 2){
                            $data['section'][1][2][] = "exist";
                        }
                    }

                    if(!isset($data['section'][1][2])){
                        if($course->level == 1 and $course->semester == 3){
                            $data['section'][1][3][] = "exist";
                        }
                    }

                    if(!isset($data['section'][1][4])){
                        if($course->level == 1 and $course->semester == 4){
                            $data['section'][1][4][] = "exist";
                        }
                    }




                    // Year 2
                    if(!isset($data['section'][2][1])){
                        if($course->level == 2 and $course->semester == 1){
                            $data['section'][2][1][] = "exist";
                        }
                    }

                    if(!isset($data['section'][2][2])){
                        if($course->level == 2 and $course->semester == 2){
                            $data['section'][2][2][] = "exist";
                        }
                    }

                    if(!isset($data['section'][2][2])){
                        if($course->level == 2 and $course->semester == 3){
                            $data['section'][2][3][] = "exist";
                        }
                    }

                    if(!isset($data['section'][2][4])){
                        if($course->level == 2 and $course->semester == 4){
                            $data['section'][2][4][] = "exist";
                        }
                    }




                    // Year 3
                    if(!isset($data['section'][3][1])){
                        if($course->level == 3 and $course->semester == 1){
                            $data['section'][3][1][] = "exist";
                        }
                    }

                    if(!isset($data['section'][3][2])){
                        if($course->level == 3 and $course->semester == 2){
                            $data['section'][3][2][] = "exist";
                        }
                    }

                    if(!isset($data['section'][3][2])){
                        if($course->level == 3 and $course->semester == 3){
                            $data['section'][3][3][] = "exist";
                        }
                    }

                    if(!isset($data['section'][3][4])){
                        if($course->level == 3 and $course->semester == 4){
                            $data['section'][3][4][] = "exist";
                        }
                    }



                    // Year 4
                    if(!isset($data['section'][4][1])){
                        if($course->level == 4 and $course->semester == 1){
                            $data['section'][4][1][] = "exist";
                        }
                    }

                    if(!isset($data['section'][4][2])){
                        if($course->level == 4 and $course->semester == 2){
                            $data['section'][4][2][] = "exist";
                        }
                    }

                    if(!isset($data['section'][4][2])){
                        if($course->level == 4 and $course->semester == 3){
                            $data['section'][4][3][] = "exist";
                        }
                    }

                    if(!isset($data['section'][4][4])){
                        if($course->level == 4 and $course->semester == 4){
                            $data['section'][4][4][] = "exist";
                        }
                    }



                    // Year 5
                    if(!isset($data['section'][5][1])){
                        if($course->level == 5 and $course->semester == 1){
                            $data['section'][5][1][] = "exist";
                        }
                    }

                    if(!isset($data['section'][5][2])){
                        if($course->level == 5 and $course->semester == 2){
                            $data['section'][5][2][] = "exist";
                        }
                    }

                    if(!isset($data['section'][5][2])){
                        if($course->level == 5 and $course->semester == 3){
                            $data['section'][5][3][] = "exist";
                        }
                    }

                    if(!isset($data['section'][5][4])){
                        if($course->level == 5 and $course->semester == 4){
                            $data['section'][5][4][] = "exist";
                        }
                    }
                   
                }

                $country = Auth::user()->country;
                $grades = new Grades;
                $grades = $grades->get_grades($country);
                $data['grades_letters'] =  $grades;
            }

            return $data;
    }
    public function target_page($data){
        // The user is logged in...
        $school = Auth::user()->school_name;
        $faculty = Auth::user()->faculty_name;
        $department = Auth::user()->department_name;

        if($school == null or $faculty == null or $department == null){
           return  redirect()->route('settings');
        }
        else{
           
            $school_details = new School;
            $school_logo = $school_details->get_school_logo($school);
            foreach($school_logo as $key => $value){
                $data['school_logo'] = $value->school_logo;
            }
            return view("dashboard.target",$data);

        }
    }
}
