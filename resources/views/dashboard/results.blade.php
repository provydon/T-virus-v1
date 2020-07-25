@extends("layouts.dashboard")

@php
$i = 1;
$results = "active";
@endphp

@section('dashboard_title')
Results
@endsection

@section('dashboard_styles')

@endsection
@section('dashboard_content')

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
            <div class="col-md-12 page_name" align="center">
                Results <i class="zmdi zmdi-square-down"></i>
            </div>
            <form class="form-inline" id="calculator-form" action="">
                <input type="hidden" name="cgpa" id="cgpa" value="">
                {{ csrf_field() }}
                {{--  Each Semester's table--}}
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
                                                            <a href="">Edit Result</a>
                                                        </li>
                                                        <li>
                                                            <a href="">Print Result</a>
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
                                                    <th><strong>Grade</strong></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach($courses as $key => $row)
                                                        @if($row->level == $year and $row->semester == $semester_key)
                                                                <tr>
                                                                    <td >
                                                                        {{$row->course_code}}
                                                                    </td>
                                                                    <td>
                                                                        {{$row->credit_unit}}
                                                                    </td>
                                                                    <td>
                                                                        @isset($grades[$row->id])
                                                                            {{$grades[$row->id]}}
                                                                        @endisset
                                                                    </td>
                                                                </tr>
                                                        @endif
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                
                                </div>
                                <div class="col-sm-3"></div>
                            </div>
                            <div class="col-sm-12 calculate-btn" align="center">
                                <button type="button" class="btn btn-primary btn-sm m-t-10" onclick="window.print();">Print Result</button>
                            </div>
                        @endforeach
                    @endforeach
                @endif
                @if(!isset($section))
                <div class="col-md-12" align="center">
                    you do not have any saved results yet.
                    {{-- <div class="col-sm-12 calculate-btn" align="center">
                        <a type="button" class="btn btn-primary btn-sm m-t-10" href="#">Add Courses</a>
                    </div> --}}
                </div>
                @endif
            </form>
        </div>
    </section>
@endsection

@section('dashboard_scripts')
    
@endsection