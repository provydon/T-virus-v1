@extends("layouts.admin")

@php
$admin = "active";
$admin_subadmins = "active";
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
            <div class="block-header">
                
            </div>
        </div>
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All Sub Admins for every department in the world
                        <small>It's just that simple. A sophisticated data table for all Sub Admins in the world.
                        </small>
                    </h2>
                </div>

                <div class="table-responsive">
                    <table id="data-table-basic" class="table table-striped">
                        <thead>
                        <tr>
                            <th>I.D.</th>
                            <th>options</th>
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
                            <th>I.D.</th>
                            <th>options</th>
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
                            @if(isset($all_sub_admins))
                                @foreach($all_sub_admins as $key=>$sub_admins)
                                    @foreach($sub_admins as $key=>$row)
                                        <tr id="user_row_{{$row->id}}">
                                            <td>
                                                {{$row->id}}
                                            </td>
                                            <td id="user_{{$row->id}}">
                                                <button type="button" class="btn btn-danger btn-xs"  onclick="admin_remove_sub_admin({{$row->id}})">remove</button>
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
                                @endforeach

                            @else
                                <div class="col-md-12" align="center">
                                    No Sub Admins to show for {{Auth::user()->school_name}}.
                                </div>
                            @endif
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