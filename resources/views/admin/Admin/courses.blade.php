@extends("layouts.admin")

@php
$admin = "active";
$admin_courses = "active";
@endphp

@section('admin_title')
Admin
@endsection

@section('admin_styles')

@endsection
@section('admin_content')
<section id="content">
    <div class="container">
        <div class="block-header">

        </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Courses <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage Any Department's Courses in The World</small>
                        <form class="form-inline courses-form" id="faculty-dept-form" action="">
                        	{{ csrf_field() }}
                            <div class="col-md-12 courses-table1">Select School, Faculty & Department</div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">Country</p>
                                
                                <select class="form-control" id="country" name="country" onchange="load_course_schools();" required>
                                    
                                    @if(Session::has('old_country'))
                                        <option selected>{{ Session::get('old_country') }}</option>
                                        <option value="">--Select Country--</option>
                                        @foreach($countries as $key=>$country)
                                            <option>{{$country->country_name}}</option>
                                        @endforeach
                                    @else
                                        <option value="">--Select Country--</option>
                                        @foreach($countries as $key=>$country)
                                            <option>{{$country->country_name}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">School</p>
                                <select class="form-control " id="school" name="school" onchange="load_course_faculties();" required>
                                    @if(Session::has('old_school'))
                                        <option selected>{{ Session::get('old_school') }}</option>
                                        <option value="">--Select School--</option>
                                    @else
                                        <option value="">--Select School--</option>
                                    @endif
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">Faculty</p>
                                <select class="form-control" id="faculty" name="faculty" onchange="load_course_depts();" required>
                                    @if(Session::has('old_faculty'))
                                        <option selected>{{ Session::get('old_faculty') }}</option>
                                        <option value="">--Select Faculty--</option>
                                    @else
                                        <option value="">--Select Faculty--</option>
                                    @endif
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <p class="f-500 m-b-15 c-black">Department</p>
                                <select class="form-control " id="dept" name="dept" onchange="load_courses();" required>
                                    @if(Session::has('old_dept'))
                                        <option selected>{{ Session::get('old_dept') }}</option>
                                        <option value="">--Select Department--</option>
                                    @else
                                        <option value="">--Select Department--</option>
                                    @endif
                                </select>
                            </div>
                            <input type="hidden" name="admin_type" id="admin_type" value="admin"/>
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
                                        <form class="form-inline courses-form" id="courses-form" action="{{ route('admin-add-course') }}" method="post">
                                            {{ csrf_field() }}
                                            @if(Session::has('old_country'))
                                                <input type="hidden" name="country" id="hs_country" value="{{ Session::get('old_country') }}"/>
                                            @else
                                                <input type="hidden" name="country" id="hs_country" value=""/>
                                            @endif
                                            @if(Session::has('old_school'))
                                                <input type="hidden" name="school" id="hs_school" value="{{ Session::get('old_school') }}"/>
                                            @else
                                                <input type="hidden" name="school" id="hs_school" value=""/>
                                            @endif
                                            @if(Session::has('old_faculty'))
                                                <input type="hidden" name="faculty" id="hs_faculty" value="{{ Session::get('old_faculty') }}"/>
                                            @else
                                                <input type="hidden" name="faculty" id="hs_faculty" value=""/>
                                            @endif
                                            @if(Session::has('old_dept'))
                                                <input type="hidden" name="dept" id="hs_dept" value="{{ Session::get('old_dept') }}"/>
                                            @else
                                                <input type="hidden" name="dept" id="hs_dept" value=""/>
                                            @endif

                                           
                                            <div class="col-md-12 courses-table1">Select Year & Semester</div>
                                            <div class="form-group col-md-6" align="center">
                                                <p class="f-500 m-b-15 c-black">Year</p>
                                                <select class="form-control selectpicker" id="year" name="level" required>
                                                    @if(Session::has('old_level'))
                                                        <option selected>{{ Session::get('old_level') }}</option>
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
                                                        <option selected>{{ Session::get('old_semester') }}</option>
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