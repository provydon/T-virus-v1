@extends("layouts.admin")

@php
$admin = "active";
$admin_students = "active";
@endphp

@section('admin_title')
 Admin
@endsection

@section('admin_styles')

@endsection
@section('admin_content')
<section id="content">
    <div class="container">
        <div class="row data-row">
            <div class="card">
                <div class="card-header">
                    <h2>All Students in the world.
                        <small>It's just that simple. a sophiticated table for all students in the world.
                        </small>
                    </h2>
                </div>

                <div class="table-responsive">
                    <table id="data-table-basic" class="table table-striped">
                        <thead>
                        <tr>
                            <th>I.D.</th>
                            <th>Option</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Last login</th>
                            <th>Photo</th>
                            <th>Level</th>
                            <th>Department</th>
                            <th>Faculty</th>
                            <th>School</th>
                            <th>Country</th>

                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>I.D.</th>
                            <th>Option</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Last login</th>
                            <th>Photo</th>
                            <th>Level</th>
                            <th>Department</th>
                            <th>Faculty</th>
                            <th>School</th>
                            <th>Country</th>
                        </tr>
                        </tfoot>
                        <tbody>
                            @foreach($all_users as $key=>$row)
                                <tr>
                                    <td>
                                        {{$row->id}}
                                    </td>
                                    <td id="user_{{$row->id}}">
                                        <button type="button" class="btn bgm-gray btn-xs"  onclick="make_head_sub_admin({{$row->id}})">make head sub admin</button>
                                    </td>
                                    <td>
                                         {{$row->first_name}}
                                    </td>
                                     <td>
                                        {{$row->last_name}}
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
                                        {{$row->department_name}}
                                    </td>
                                    <td>
                                        {{$row->faculty_name}}
                                    </td>
                                    <td>
                                        {{$row->school_name}}
                                    </td>
                                    <td>
                                        {{$row->country}}
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