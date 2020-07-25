@extends("layouts.admin")

@php
$admin = "active";
$admin_departments = "active";
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
        </div>
        <div class="row  data-row">
            <div class="col-sm-12">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Add Department <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage any School's Department's</small>
                    </div>
                    <div class=" card-body">
                        <form class="row" role="form" action="{{ route('admin-add_dept') }}" method="post">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group fg-line">
                                        <label class="sr-only" for="dept_name">Department</label>
                                        <input type="text" class="form-control input-sm" id="dept"
                                            placeholder="Enter Department Name" name="dept">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group col-md-6">
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
                                    <div class="form-group col-md-6">
                                        <p class="f-500 m-b-15 c-black">School</p>
                                        <select class="form-control " id="school" name="school" onchange="load_course_faculties();" required>
                                            <option value="">--Select School--</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group fg-line">
                                        <label class="sr-only" for="years">Faculty</label>
                                        <select class="form-control " id="faculty" name="faculty" required>
                                            <option value="">--Select Faculty--</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group fg-line">
                                        <label class="sr-only" for="years">No. of Years</label>
                                        <select class="form-control selectpicker" id="years" name="years" required>
                                            <option value="">--Select Years--</option>
                                            @for($y = 1; $y<=8; $y++)
                                                <option>{{$y}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group fg-line">
                                        <label class="sr-only" for="semesters">No. of Semesters</label>
                                        <select class="form-control selectpicker" id="semesters" name="semesters" required>
                                            <option value="">--Select Semesters--</option>
                                            @for($y = 1; $y<=4; $y++)
                                                <option>{{$y}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12" align="right">
                                <button type="submit" class="btn btn-success btn-sm m-t-5">Add <i class="zmdi zmdi-plus"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All departments in the World.
                        <small>It's just that simple. A sophisticated data table for all departments in the world.
                        </small>
                    </h2>
                </div>

                <div class="table-responsive">
                    <table id="data-table-basic" class="table table-striped">
                        <thead>
                        <tr>
                            <th>I.D.</th>
                            <th>Option </th>
                            <th>Department </th>
                            <th>School </th>
                            <th>Faculty</th>
                            <th>Years</th>
                            <th>Semesters</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>I.D.</th>
                            <th>Option </th>
                            <th>Department </th>
                            <th>School </th>
                            <th>Faculty</th>
                            <th>Years</th>
                            <th>Semesters</th>
                        </tr>
                        </tfoot>
                        <tbody>
                            @foreach($all_depts as $key=>$row)
                                <tr id="row_{{$row->id}}">
                                    <td>
                                        {{$row->id}}
                                        <input type="hidden" name="dept_id" id="dept_id{{$row->id}}"value="{{$row->id}}"/>
                                    </td>
                                    <td>
                                        <span class="edit" onclick="edit_row({{$row->id}})">
                                            <i class="zmdi zmdi-edit"></i>
                                        </span>
                                        <span onclick="delete_dept_admin({{$row->id}})" class="delete" >
                                            <i class="zmdi zmdi-delete"></i>
                                        </span>
                                        <span class="edit-options{{$row->id}} edit-options">
                                            <button type="button" class="btn btn-success btn-xs waves-effect" onclick="update_dept_admin({{$row->id}})">save</button>
                                        </span>
                                        <span class="edit-options{{$row->id}} edit-options">
                                            <button type="button" class="btn bgm-gray waves-effect  btn-xs" onclick="cancel_row({{$row->id}})">cancel</button>
                                        </span>
                                    </td>
                                    <td>
                                        <span class="table_show_{{$row->id}}  table_show" id="td_1_{{$row->id}}">
                                            {{$row->department_name}}
                                        </span>
                                        <span class="table_edit_{{$row->id}}  table_edit">
                                            <input type="text" class="form-control" name="dept" id="dept{{$row->id}}" value="{{$row->department_name}}" autofocus>
                                        </span>
                                    </td>
                                    <td>
                                        {{$row->school_name}}          
                                    </td>
                                    <td>
                                        <span class="table_show_{{$row->id}}  table_show" id="td_2_{{$row->id}}">
                                            {{$row->faculty_name}}
                                        </span>
                                        <span class="table_edit_{{$row->id}}  table_edit">
                                            <input type="text" class="form-control" name="faculty" id="faculty{{$row->id}}" value="{{$row->faculty_name}}">
                                        </span>
                                    </td>
                                    <td>
                                        <span class="table_show_{{$row->id}}  table_show" id="td_3_{{$row->id}}">
                                            {{$row->years}}
                                        </span>
                                        <span class="table_edit_{{$row->id}}  table_edit">
                                            <select class=" cgpa form-control" name="years" id="years{{$row->id}}">
                                                <option>{{$row->years}}</option>
                                                <option>--Units--</option>
                                                @for($k=1;$k<=7;$k++)
                                                    <option>{{$k}}
                                                    </option>
                                                @endfor
                                            </select>
                                        </span>
                                    </td>
                                    <td>
                                        <span class="table_show_{{$row->id}}  table_show" id="td_4_{{$row->id}}">
                                            {{$row->semesters}}
                                        </span>
                                        <span class="table_edit_{{$row->id}}  table_edit">
                                            <select class=" cgpa form-control" name="semesters" id="semesters{{$row->id}}">
                                                <option>{{$row->semesters}}</option>
                                                <option>--Units--</option>
                                                @for($k=1;$k<=4;$k++)
                                                    <option>{{$k}}
                                                    </option>
                                                @endfor
                                            </select>
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