@extends("layouts.admin")

@php
$subadmin = "active";
$subadmin_courses = "active";
@endphp

@section('admin_title')
Sub Admin
@endsection

@section('admin_styles')

@endsection
@section('admin_content')
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
                <span><img src="/../school_logos/{{$school_logo}}" height="100" width="auto"/></span>
            </div>
            <div class="col-sm-12">
                <strong>{{Auth::user()->school_name}}</strong>,
            </div>
            <div class="col-sm-12">
                <small>{{Auth::user()->department_name}}</small>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Courses <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage All Your Department's Courses</small>
                    </div>
                    <div class=" card-body">
                        <div role="tabpanel" class="tab">
                            <ul class="tab-nav text-center" role="tablist">
                                <li class="active"><a href="#home9" aria-controls="home9" role="tab" data-toggle="tab">All Courses</a></li>
                                <li role="presentation"><a href="#profile9" aria-controls="profile9"role="tab" data-toggle="tab">Add Courses</a></li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active animated fadeInRight in"id="home9">
                                    <div class="row">
                                        <form class="form-inline courses-form" id="courses-form" action="{{ route('sub-admin-update-course') }}" method="post">
                                            {{ csrf_field() }}
                                            @if(isset($section))
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
                                                                                        <a href="javascript:void(0)" onclick="show_course_edit()">Edit Courses</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                
                                                                    <div class="card-body table-responsive">
                                                                        <table class="table table-striped table-bordered table-hover ">
                                                                            <thead>
                                                                            <tr>
                                                                                <th><strong>Course_code</strong></th>
                                                                                <th><strong>Credit_unit</strong></th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                @foreach($courses as $key => $row)
                                                                                    @if($row->level == $year and $row->semester == $semester_key)
                                                                                        <input type="hidden" name="level[]" value="{{$row->level}}"/>
                                                                                        <input type="hidden" name="semester[]" value="{{$row->semester}}"/>
                                                                                            <tr>
                                                                                                <td >
                                                                                                <span class="course_edit">
                                                                                                <input type="text" class="form-control course_code " name="course_code[]"  placeholder="Enter Course Code" value="{{$row->course_code}}">
                                                                                            </span>
                                                                                                <input type="hidden" name="course_id[]" value="{{$row->id}}"/>
                                                                                            <span class="course_edit2">
                                                                                                    {{$row->course_code}}
                                                                                                </span>
                                                                                                </td>
                                                                                                <td>
                                                                                                <span class="course_edit">
                                                                                                    <select class=" cgpa form-control credit_unit" name="credit_unit[]">
                                                                                                    <option>{{$row->credit_unit}}</option>
                                                                                                        <option>--Units--</option>
                                                                                                        @for($k=1;$k<=10;$k++)
                                                                                                            <option>{{$k}}</option>
                                                                                                        @endfor
                                                                                                    </select>
                                                                                                </span>
                                                                                                <span class="course_edit2">
                                                                                                    {{$row->credit_unit}}
                                                                                                </span>
                                                                                                </td>
                                                                                            </tr>
                                                                                    @endif
                                                                                @endforeach
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            
                                                        </div>
                                                        <div class="col-sm-12 calculate-btn c-edit-btn" align="center">
                                                            <button type="button" class="btn btn-primary btn-sm m-t-10" onclick="show_course_edit()">Edit <i class="zmdi zmdi-edit"></i></button>
                                                        </div>
                                                        <div class="col-sm-12 calculate-btn c-save-btn" align="center">
                                                            <button type="submit" class="btn btn-success btn-sm m-t-10">Update &nbsp;<i class="zmdi zmdi-time"></i></button>
                                                            <button type="button" class="btn bgm-gray waves-effect btn-sm m-t-10" onclick="cancel_course_edit()">Cancel </button>
                                                        </div>
                                                    @endforeach
                                                @endforeach
                                            @else
                                                <div class="col-md-12" align="center">
                                                    No courses to show for Department of {{Auth::user()->department_name}}.<br>
                                                </div>
                                            @endif
                                        </form>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="profile9">
                                    <div class="row">
                                        <form class="form-inline courses-form" id="courses-form" action="{{ route('sub-admin-add-course') }}" method="post">
                                            {{ csrf_field() }}
                                            <div class="col-md-12 courses-table1">Select Year & Semester</div>
                                            <div class="form-group col-md-6">
                                                <p class="f-500 m-b-15 c-black">Year</p>
                                                <select class="form-control selectpicker" id="year" name="level" required>
                                                    @if(Session::has('old_level'))
                                                        <option selected>{{ session::get('old_level') }}</option>
                                                        @for($y = 1; $y<=8; $y++)
                                                            <option >{{$y}}</option>
                                                        @endfor
                                                    @else
                                                        <option value="">--Select Year--</option>
                                                        @for($y = 1; $y<=8; $y++)
                                                            <option >{{$y}}</option>
                                                        @endfor
                                                    @endif
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <p class="f-500 m-b-15 c-black">Semester</p>
                                                <select class="form-control selectpicker" id="semester" name="semester" required>
                                                    @if(Session::has('old_semester'))
                                                        <option selected>{{ session::get('old_semester') }}</option>
                                                        @for($y = 1; $y<=4; $y++)
                                                            <option >{{$y}}</option>
                                                        @endfor
                                                    @else
                                                        <option value="">--Select Semester--</option>
                                                        @for($y = 1; $y<=4; $y++)
                                                            <option >{{$y}}</option>
                                                        @endfor
                                                    @endif
                                                </select>
                                            </div>
                                            <div class="col-md-12 courses-table">Input Courses</div>
                                            <div class="col-md-12 table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th><strong>Course_code</strong></th>
                                                            <th><strong>Credit_unit</strong></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        @for($j=1;$j<=10;$j++)
                                                            <tr>
                                                                <td>
                                                                    <input type="text" class="form-control course_code" name="course_code[]"  placeholder="Enter Course Code" autofocus>
                                                                </td>
                                                                <td>
                                                                    <select class=" cgpa form-control credit_unit" name="credit_unit[]">
                                                                        <option value="">--Units--</option>
                                                                        @for($k=1;$k<=10;$k++)
                                                                            <option>{{$k}}</option>
                                                                        @endfor
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                        @endfor
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-md-12" align="center">
                                                <button type="submit" class="btn btn-success btn-sm m-t-10">Save &nbsp;<i class="zmdi zmdi-square-down"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</section>
@endsection

@section('admin_scripts')
    
@endsection