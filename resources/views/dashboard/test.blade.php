@extends("layouts.dashboard")


@section('dashboard_title')
CGPA Calculator
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

@php
$i = 1;
@endphp
    <section id="content">
        <div class="container">
            <div class="block-header">
                <div class="col-sm-12">
                    <ul class="actions">
                        <li>
                            @isset(Auth::user()->cgpa)
                                <small class="creator"><strong>Your CGPA is {{Auth::user()->cgpa}}</strong></small>
                            @endisset
                        </li>
                        {{--  <li>
                            <a href="">
                                <i class="zmdi zmdi-trending-up"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="zmdi zmdi-check-all"></i>
                            </a>
                        </li>  --}}
                        <li class="dropdown">
                            <a href="" data-toggle="dropdown">
                                <i class="zmdi zmdi-more-vert"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <a href="">Refresh</a>
                                </li>
                                <li>
                                    <a href="">Contact Provydon</a>
                                </li>
                                <li>
                                    <a href="">Edit Courses</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <span><img src="../school_logos/{{$school_logo}}" height="100" width="auto"/></span>
                </div>
                <div class="col-sm-12">
                    <strong>{{Auth::user()->school_name}}</strong>,
                </div>
                <div class="col-sm-12">
                    <small>{{Auth::user()->department_name}}</small>
                </div>
            </div>
            <form class="form-inline" id="calculator-form" action="">
                <input type="hidden" name="cgpa" id="cgpa" value="">
                {{ csrf_field() }}
                {{--  Each Semester's table--}}
                @foreach($section as $year => $semester)
                    @foreach($semester as $semester_key => $value)
                        @if($semester_key == 1)
                            @php
                                $semester_key_position = "1st";
                            @endphp
                        @endif
                        @if($semester_key == 2)
                            @php
                                $semester_key_position = "2nd";
                            @endphp
                        @endif
                        @if($semester_key == 3)
                            @php
                                $semester_key_position = "3rd";
                            @endphp
                        @endif
                        @if($semester_key == 4)
                            @php
                                $semester_key_position = "4th";
                            @endphp
                        @endif
                        <div class="col-sm-12">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-header" align="center">
                                        <h2>Year {{$year}}
                                            <small>{{$semester_key_position}} Semester</small>
                                        </h2>
                                        <ul class="actions">
                                            <li class="dropdown action-show">
                                                <a href="" data-toggle="dropdown">
                                                    <i class="zmdi zmdi-more-vert"></i>
                                                </a>
        
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li>
                                                        <a href="">Edit Courses</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="card-body table-responsive">
                                        <table class="table table-striped table-bordered table-hover table-condensed">
                                            <thead>
                                            <tr>
                                                <th><strong>Course_code</strong></th>
                                                <th><strong>Credit_unit</strong></th>
                                                <th><strong>Grade</strong></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($courses as $key => $row)
                                                    @if($row->level == $year and $row->semester == $semester_key)

                                        
                                                        <input type="hidden"  name="years[]" value="2"/>
                                                        <input type="hidden"  name="semesters[]" value="1"/>
                                                            <tr>
                                                                <td >
                                                                    {{$row->course_code}} 
                                                                    <input type="hidden" id="course_code{{$i}}" value="{{$row->course_code}}" name="course_codes[]"/>
                                                                    <input type="hidden" name="course_ids[]" id="course_ids{{$i}}" value="{{$row->id}}">
                                                                </td>
                                                                <td>
                                                                    <select class="cgpa form-control" name="units[{{$row->level}}][{{$row->semester}}][]" id="credit_units{{$i}}" onchange="credit_it({{$i}})">
                                                                        <option value="{{$row->credit_unit}}">{{$row->credit_unit}} </option>
                                                                        <option value="1">1</option>
                                                                        <option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
                                                                        <option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="0">10</option>
                                                                    </select>
                                                                    <input type="hidden" name="credit_units[]" id="credit_units{{$i}}" value="{{$row->credit_unit}}">
                                                                    
                                                                </td>
                                                                <td>
                                                                    <select class="cgpa form-control" id="letterGrade{{$i}}" name="letterGrade[{{$row->level}}][{{$row->semester}}][]" onchange="grade_it({{$i}})" required>
                                                                        @isset($grades[$row->id])
                                                                            <option>{{$grades[$row->id]}}</option>
                                                                        @endisset

                                                                        <option value="6">--Grade--</option>

                                                                        @foreach($grades_letters as $key => $value)
                                                                            <option>{{$value->grade}}</option>
                                                                        @endforeach
                                                                    </select>  
                                                                    
                                                                    <input type="hidden" name="grades[]" id="grade{{$i}}" value='@isset($grades[$row->id]) {{$grades[$row->id]}}  @endisset'>
                                                                
                                                                </td>
                                                            </tr>
                                                            @php $i = $i + 1;
                                                            @endphp
                                                    @endif
                                                @endforeach
                                                @if($i < 10)
                                                    @for($i= $i; $i<=10; $i++)
                                                        <input type="hidden" id="course_code{{$i}}" name="course_code{{$i}}"/>
                                                        <input type="hidden" id="unit{{$i}}" name="unit{{$i}}"/>
                                                        <input type="hidden" id="letterGrade{{$i}}" name="letterGrade{{$i}}"/>
                                                    @endfor
                                                @endif
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-sm-12 calculate-btn" align="center">
                                    <button type="button" class="btn btn-primary btn-sm m-t-10"  onclick="calculate()">Calculate</button>
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                        </div>
                    @endforeach
                @endforeach
            </form>
        </div>
    </section>
@endsection

@section('dashboard_scripts')
    
@endsection