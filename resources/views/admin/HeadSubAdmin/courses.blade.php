@extends("layouts.admin")

@php
$headsubadmin = "active";
$headsubadmin_courses = "active";
@endphp

@section('admin_title')
Head Sub Admin
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
                        <small >Manage Any Department's Courses in your school</small>
                        <form class="form-inline courses-form" id="faculty-dept-form" action="">
                        	{{ csrf_field() }}
                        	<input type="hidden" id="school" name="school" value="{{Auth::user()->school_name}}"/>
                            <div class="col-md-12 courses-table1">Select Faculty & Department</div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">Faculty</p>
                                <select class="form-control selectpicker" id="faculty" name="faculty" onchange="load_course_depts();" required>
                                    @if(Session::has('old_faculty'))
                                        <option selected>{{ session::get('old_faculty') }}</option>
                                        <option value="">--Select Faculty--</option>
                                        @foreach($faculties as $key=>$faculty)
                                            <option>{{$faculty}}</option>
                                        @endforeach
                                    @else
                                        <option value="">--Select Faculty--</option>
                                        @foreach($faculties as $key=>$faculty)
                                            <option>{{$faculty}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">Department</p>
                                <select class="form-control " id="dept" name="dept" onchange="load_courses();" required>
                                    @if(Session::has('old_dept'))
                                        <option selected>{{ session::get('old_dept') }}</option>
                                        <option value="">--Select Department--</option>
                                    @else
                                        <option value="">--Select Department--</option>
                                    @endif
                                </select>
                            </div>
                            <input type="hidden" name="admin_type" id="admin_type" value="h-s-admin"/>
                    	</form>
                    </div>

                    <div class="card-body" >
                        <div role="tabpanel" class="tab">
                            <ul class="tab-nav text-center" role="tablist">
                                <li class="active"><a href="#home9" aria-controls="home9" role="tab" data-toggle="tab">All Courses</a></li>
                                <li role="presentation"><a href="#profile9" aria-controls="profile9"role="tab" data-toggle="tab">Add Courses</a></li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active animated fadeInRight in"id="home9">
                                    <div class="row" id="load" align="center">
                                        
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="profile9">
                                    <div class="row" >
                                        <form class="form-inline courses-form" id="courses-form" action="{{ route('head-sub-admin-add-course') }}" method="post">
                                            {{ csrf_field() }}
                                            @if(Session::has('old_faculty'))
                                                <input type="hidden" name="faculty" id="hs_faculty" value="{{ session::get('old_faculty') }}"/>
                                            @else
                                                <input type="hidden" name="faculty" id="hs_faculty" value=""/>
                                            @endif
                                            @if(Session::has('old_dept'))
                                                <input type="hidden" name="dept" id="hs_dept" value="{{ session::get('old_dept') }}"/>
                                            @else
                                                <input type="hidden" name="dept" id="hs_dept" value=""/>
                                            @endif
                                            
                                            <div class="col-md-12 courses-table1">Select Year & Semester</div>
                                            <div class="form-group col-md-6" align="center">
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
                                            <div class="form-group col-md-6" align="center">
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
                                                                        <option value="">-Units--</option>
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