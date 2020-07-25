@extends("layouts.admin")

@php
$admin = "active";
$admin_faculties = "active";
@endphp

@section('admin_title')
Admin
@endsection

@section('admin_styles')

@endsection
@section('admin_content')
<section id="content">
    <div class="container">
        <div class="row">
            <div class="block-header"></div>
        </div>
        <div class="row  data-row">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Add Faculty <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage All Your School's Faculties</small>
                    </div>
                    <div class=" card-body">
                        <form class="row" role="form" action="{{ route('admin-add-faculty') }}" method="post">
                        {{ csrf_field() }}
                            <div class="col-sm-3">
                                <div class="form-group fg-line">
                                    <label class="sr-only" for="faculty_name">Faculty</label>
                                    <input type="text" class="form-control input-sm" id="faculty"
                                           placeholder="Enter Faculty Name" name="faculty">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group ">
                                    <p class="f-500 m-b-15 c-black">Country</p>
                                    <select class="form-control selectpicker" id="country" name="country" onchange="load_course_schools();" required>
                                        <option value="">--Select Country--</option>
                                        @foreach($countries as $key=>$country)
                                            <option>{{$country->country_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group ">
                                    <p class="f-500 m-b-15 c-black">School</p>
                                    <select class="form-control " id="school" name="school" onchange="load_course_faculties();" required>
                                        <option value="">--Select School--</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-2" align="right">
                                <button type="submit" class="btn btn-success btn-sm m-t-5">Add <i class="zmdi zmdi-plus"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All Faculties in the world
                        <small>It's just that simple. A sophisticated data table for all facultiesin the world.
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
                            <th>School</th>
                            
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>I.D.</th>
                            <th>Options</th>
                            <th>Faculty</th>
                            <th>School</th>
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
                                    <span onclick="admin_delete_faculty({{$row->id}})" class="delete" >
                                        <i class="zmdi zmdi-delete"></i>
                                    </span>
                                    <span class="edit-options{{$row->id}} edit-options">
                                        <button type="button" class="btn btn-success btn-xs waves-effect" onclick="admin_update_faculty({{$row->id}})">save</button>
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
                                <td>       
                                    {{$row->school_name}}
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