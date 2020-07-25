@extends("layouts.admin")

@php
$admin = "active";
$admin_schools = "active";
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
            <div class="col-md-2"></div>
            <div class="col-sm-8">
                <div class="card courses-card">
                    <div class="card-header " align="center">
                        <div class="page_name">
                            Add School <i class="zmdi zmdi-cloud"></i>
                        </div>
                        <small >Manage All Schools in the world</small>
                    </div>
                    <div class=" card-body">
                        <form class="row" role="form" action="{{ route('admin-add_school') }}" method="post">
                        {{ csrf_field() }}
                            <div class="col-sm-4">
                                <div class="form-group fg-line">
                                    <label class="sr-only" for="school_name">School</label>
                                    <input type="text" class="form-control input-sm" id="school"
                                           placeholder="Enter School Name" name="school">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group fg-line">
                                    <label class="sr-only" for="school_name">School Nickname</label>
                                    <input type="text" class="form-control input-sm" id="school_nickname"
                                           placeholder="Enter School NickName" name="school_nickname">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group fg-line">
                                    <select class="chosen" name="country" id="country" data-placeholder="Choose a Country...">
                                        <option value="">-- Select Country --</option>
                                        @foreach($countries as $key => $country)
                                            <option>{{$country->country_name}}</option>
                                        @endforeach
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
            <div class="col-md-2"></div>
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All Schools
                        <small>It's just that simple. A sophisticated data table for all Schools in the World.
                        </small>
                    </h2>
                </div>

                <div class="table-responsive">
                    <table id="data-table-basic" class="table table-striped">
                        <thead>
                        <tr>
                            <th>I.D.</th>
                            <th>Options</th>
                            <th>School</th>
                            <th>Country</th>
                            <th>School Nickname</th>
                            <th>School_logo</th>
                            <th>Created At</th>
                            
                            
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>I.D.</th>
                            <th>Options</th>
                            <th>School</th>
                            <th>Country</th>
                            <th>School Nickname</th>
                            <th>School_logo</th>
                            <th>Created At</th>

                        </tr>
                        </tfoot>
                        <tbody>
                            @foreach($schools as $key=>$row)
                            <tr id="row_{{$row->id}}">
                                <td>
                                    {{$row->id}}
                                    <input type="hidden" name="school_id" id="school_id{{$row->id}}" value="{{$row->id}}"/>
                                </td>
                                <td>
                                    <span class="edit" onclick="edit_row({{$row->id}})">
                                        <i class="zmdi zmdi-edit"></i>
                                    </span>
                                    <span onclick="delete_school({{$row->id}})" class="delete" >
                                        <i class="zmdi zmdi-delete"></i>
                                    </span>
                                    <span class="edit-options{{$row->id}} edit-options">
                                        <button type="button" class="btn btn-success btn-xs waves-effect" onclick="update_school({{$row->id}})">save</button>
                                    </span>
                                    <span class="edit-options{{$row->id}} edit-options">
                                        <button type="button" class="btn bgm-gray waves-effect  btn-xs" onclick="cancel_row({{$row->id}})">cancel</button>
                                    </span>
                                </td>
                                <td>
                                    <span class="table_show_{{$row->id}}  table_show" id="td_1_{{$row->id}}">
                                        {{$row->school_name}}
                                    </span>
                                    <span class="table_edit_{{$row->id}}  table_edit">
                                        <input type="text" class="form-control" name="school" id="school{{$row->id}}" value="{{$row->school_name}}" autofocus>
                                    </span>
                                </td>
                                <td>
                                    <span class="table_show_{{$row->id}}  table_show" id="td_2_{{$row->id}}">
                                        {{$row->country}}
                                    </span>
                                    <span class="table_edit_{{$row->id}}  table_edit">
                                        <select  name="country" id="country{{$row->id}}" data-placeholder="Choose a Country...">
                                            <option>{{$row->country}}</option>
                                            @foreach($countries as $key => $country)
                                                <option>{{$country->country_name}}</option>
                                            @endforeach
                                        </select>
                                    </span>
                                </td>
                                <td>
                                    <span class="table_show_{{$row->id}}  table_show" id="td_3_{{$row->id}}">
                                        {{$row->school_nickname}}
                                    </span>
                                    <span class="table_edit_{{$row->id}}  table_edit">
                                        <input type="text" class="form-control" name="school_nickname" id="school_nickname{{$row->id}}" value="{{$row->school_nickname}}" >
                                    </span>
                                </td>
                                <td>
                                    {{$row->school_logo}}
                                </td>
                                <td>
                                    {{ Carbon\Carbon::parse($row->created_at)->format('l j F Y') }}
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