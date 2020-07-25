@extends("layouts.dashboard")

@php
$i = 1;
$saved_target = "active";
@endphp

@section('dashboard_title')
Saved Targets
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
               Saved Targets <i class="zmdi zmdi-my-location"></i>
            </div>
            <div class="col-md-12 all-targets-div">
                @if($all_targets->isEmpty())
                    <div class="col-md-12" align="center">
                        You do not have any saved targets yet
                    </div>
                @endif
                @foreach($all_targets as $key=>$target_values)
                    <div class="panel-group" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse{{$key}}"
                                    aria-expanded="true" aria-controls="collapseOne">
                                        <span class="target_value"><strong>{{$target_values->target_cgpa }}</strong></span>  &nbsp;&nbsp;&nbsp;targetted on {{ Carbon\Carbon::parse($target_values->created_at)->format('l j F Y') }}
                                        {{-- <span class="delete-target" onclick="deleteTarget({{$target_values->target_cgpa }})"><i class="zmdi zmdi-delete"></i></span> --}}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse{{$key}}" class="collapse " role="tabpanel"
                                aria-labelledby="headingOne">
                                <div class="panel-body">
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
                                        @foreach($courses as $key => $row)
                                            @if($row->level == $year and $row->semester == $semester_key and $row->target_cgpa == $target_values->target_cgpa)
                                               @php
                                                 $semester_exist[$year][$semester_key] = $row->semester;
                                               @endphp
                                            @endif
                                        @endforeach
                                        
                                        @isset($semester_exist[$year][$semester_key])
                                            <div class="col-sm-12" >
                                                <div class="col-sm-3"></div>
                                                <div class="col-sm-6">
                                                    <div class="card">
                                                        <div class="card-header" align="center">
                                                            <h2>Year {{$year}}
                                                                <small>{{$semester_key_position}} Semester</small>
                                                            </h2>
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
                                                                        @if($row->level == $year and $row->semester == $semester_key and $row->target_cgpa == $target_values->target_cgpa)
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
                                        @endisset
                                    @endforeach
                                @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection

@section('dashboard_scripts')
    
@endsection