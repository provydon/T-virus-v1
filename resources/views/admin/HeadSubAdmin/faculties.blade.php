@extends("layouts.admin")

@php
$headsubadmin = "active";
$headsubadmin_faculties = "active";
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
        <div class="row  data-row">
            <div class="col-md-2"></div>
            <div class="col-sm-8">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Add Faculty <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage All Your School's Faculties</small>
                    </div>
                    <div class=" card-body">
                        <form class="row" role="form" action="{{ route('head-sub-admin-add-faculty') }}" method="post">
                        {{ csrf_field() }}
                            <div class="col-sm-10">
                                <div class="form-group fg-line">
                                    <label class="sr-only" for="faculty_name">Faculty</label>
                                    <input type="text" class="form-control input-sm" id="faculty"
                                           placeholder="Enter Faculty Name" name="faculty">
                                </div>
                            </div>
                            <div class="col-sm-2" align="right">
                                <button type="submit" class="btn btn-success btn-sm m-t-5">Add <i class="zmdi zmdi-plus"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All Faculties in {{Auth::user()->school_name}}
                        <small>It's just that simple. A sophisticated data table for all {{Auth::user()->school_name}}'s faculties.
                        </small>
                    </h2>
                </div>

                <div class="table-responsive">
                    <table id="data-table-basic" class="table table-striped">
                        <thead>
                        <tr>
                            <th>I.D.</th>
                            <th>Options</th>
                            <th>Faculty</th>
                            
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>I.D.</th>
                            <th>Options</th>
                            <th>Faculty</th>
                            
                        </tr>
                        </tfoot>
                        <tbody>
                            @foreach($all_faculties as $key=>$row)
                            <tr id="row_{{$row->id}}">
                                <td>
                                    {{$row->id}}
                                    <input type="hidden" name="faculty_id" id="faculty_id{{$row->id}}" value="{{$row->id}}"/>
                                </td>
                                <td>
                                    <span class="edit" onclick="edit_row({{$row->id}})">
                                        <i class="zmdi zmdi-edit"></i>
                                    </span>
                                    <span onclick="delete_faculty({{$row->id}})" class="delete" >
                                        <i class="zmdi zmdi-delete"></i>
                                    </span>
                                    <span class="edit-options{{$row->id}} edit-options">
                                        <button type="button" class="btn btn-success btn-xs waves-effect" onclick="update_faculty({{$row->id}})">save</button>
                                    </span>
                                    <span class="edit-options{{$row->id}} edit-options">
                                        <button type="button" class="btn bgm-gray waves-effect  btn-xs" onclick="cancel_row({{$row->id}})">cancel</button>
                                    </span>
                                </td>
                                <td>
                                    <span class="table_show_{{$row->id}}  table_show" id="td_1_{{$row->id}}">
                                        {{$row->faculty_name}}
                                    </span>
                                    <span class="table_edit_{{$row->id}}  table_edit">
                                        <input type="text" class="form-control" name="faculty" id="faculty{{$row->id}}" value="{{$row->faculty_name}}" autofocus>
                                    </span>
                                </td>
                            </tr>  
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('admin_scripts')
    
@endsection