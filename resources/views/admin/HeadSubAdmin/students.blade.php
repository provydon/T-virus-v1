@extends("layouts.admin")

@php
$headsubadmin = "active";
$headsubadmin_students = "active";
@endphp

@section('admin_title')
Head Sub Admin
@endsection

@section('admin_styles')

@endsection
@section('admin_content')
<section id="content">
    <div class="container">
        <div class="row">
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
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>{{Auth::user()->school_name}}
                        <small>It's just that simple. A sophisticated data table for all students in {{Auth::user()->school_name}}.
                        </small><br>
                        <p>
                            Users: {{count($all_users)}}
                        </p>
                        <p>
                            Subscribed Users: {{count($subed_users)}}
                        </p>
                    </h2>
                    <ul class="actions">
                        <li>
                            <a data-toggle="modal" href="#mailModal" onclick="getCheckedUsers()">
                                <i class="zmdi zmdi-mall"></i>
                            </a>
                        </li>
                        <li>
                            <label class="checkbox">
                                <input type="checkbox" value="option1" style="position:relative;" id="select_all">
                                <i class="input-helper"></i>
                            </label>
                        </li>
                    </ul>
                </div>

                <div class="table-responsive">
                    <form action="" id="students-list">
                        <table id="data-table-basic" class="table table-striped">
                            <thead>
                            <tr>
                                <th>S/N</th>
                                <th>options</th>
                                <th>Status</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Department</th>
                                <th>Email</th>
                                <th>Last login</th>
                                <th>Photo</th>
                                <th>Level</th>
                                <th>Faculty</th>

                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>S/N</th>
                                <th>options</th>
                                <th>Status</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Department</th>
                                <th>Email</th>
                                <th>Last login</th>
                                <th>Photo</th>
                                <th>Level</th>
                                <th>Faculty</th>
                            </tr>
                            </tfoot>
                            <tbody>
                                @php
                                    $no = 0;
                                @endphp
                                @foreach($all_users as $key=>$row)
                                    <tr>
                                        <td>
                                            @php
                                                $no = $no + 1;
                                            @endphp
                                            {{$no}}
                                        </td>
                                        <td id="user_{{$row->id}}">
                                            <label class="checkbox m-r-20">
                                                <input type="checkbox" value="{{$row->email}}" name="EmailList[]">
                                                <i class="input-helper"></i>
                                            </label>
                                            <a data-toggle="modal" href="#mailModal" class="m-l-20" onclick="getCheckedUsers()">
                                                <i class="zmdi zmdi-mall"></i>
                                            </a>
                                        </td>
                                        <td>
                                            @if ($row->subscribed == true)
                                                Subscribed
                                            @else
                                                Not Subscribed
                                            @endif
                                        </td>
                                        <td>
                                            {{$row->first_name}}
                                        </td>
                                        <td>
                                            {{$row->last_name}}
                                        </td>
                                        <td>
                                            {{$row->department_name}}
                                    </td>
                                        <td>
                                            {{$row->email}}
                                        </td>
                                        <td>
                                            {{ Carbon\Carbon::parse($row->last_login)->format('l j F Y') }}
                                        </td>
                                        <td>
                                            @php  
                                                $image = "images/".$row->photo;
                                            @endphp
                                            <img src="{{ url($image)}}" class="user-photo" alt="">
                                        </td>
                                        <td>
                                            {{$row->level}}
                                        </td>
                                        <td>
                                            {{$row->faculty_name}}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('admin_scripts')
    
@endsection